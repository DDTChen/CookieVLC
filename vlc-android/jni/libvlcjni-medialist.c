/*****************************************************************************
 * libvlcjni-medialist.c
 *****************************************************************************
 * Copyright © 2013 VLC authors and VideoLAN
 * Copyright © 2013 Edward Wang
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
 *****************************************************************************/
#include <jni.h>
#include <vlc/vlc.h>
#include <vlc/libvlc_media_list.h>
#include <stdlib.h>

#include "utils.h"
#define LOG_TAG "VLC/JNI/MediaList"
#include "log.h"

/** Unique Java VM instance, as defined in libvlcjni.c */
extern JavaVM *myVm;

// data is the MediaList Java object of the media list
static void vlc_media_list_event_callback(const libvlc_event_t *ev, void *data)
{
    jobject eventHandlerInstance = (jobject)(intptr_t)data;
    JNIEnv *env;

    bool isAttached = false;

    if (eventHandlerInstance == NULL)
        return;

    if ((*myVm)->GetEnv(myVm, (void**) &env, JNI_VERSION_1_2) < 0) {
        if ((*myVm)->AttachCurrentThread(myVm, &env, NULL) < 0)
            return;
        isAttached = true;
    }

    /* Creating the bundle in C allows us to subscribe to more events
     * and get better flexibility for each event. For example, we can
     * have totally different types of data for each event, instead of,
     * for example, only an integer and/or string.
     */
    jclass clsBundle = (*env)->FindClass(env, "android/os/Bundle");
    jmethodID clsCtor = (*env)->GetMethodID(env, clsBundle, "<init>", "()V" );
    jobject bundle = (*env)->NewObject(env, clsBundle, clsCtor);

    jmethodID putInt = (*env)->GetMethodID(env, clsBundle, "putInt", "(Ljava/lang/String;I)V" );
    jmethodID putFloat = (*env)->GetMethodID(env, clsBundle, "putFloat", "(Ljava/lang/String;F)V" );
    jmethodID putString = (*env)->GetMethodID(env, clsBundle, "putString", "(Ljava/lang/String;Ljava/lang/String;)V" );

    jstring item_uri = (*env)->NewStringUTF(env, "item_uri");
    jstring item_index = (*env)->NewStringUTF(env, "item_index");
    char* mrl = libvlc_media_get_mrl(
        ev->type == libvlc_MediaListItemAdded ?
        ev->u.media_list_item_added.item :
        ev->u.media_list_item_deleted.item
        );
    jstring item_uri_value = (*env)->NewStringUTF(env, mrl);
    jint item_index_value;
    if(ev->type == libvlc_MediaListItemAdded)
        item_index_value = ev->u.media_list_item_added.index;
    else
        item_index_value = ev->u.media_list_item_deleted.index;

    (*env)->CallVoidMethod(env, bundle, putString, item_uri, item_uri_value);
    (*env)->CallVoidMethod(env, bundle, putInt, item_index, item_index_value);

    (*env)->DeleteLocalRef(env, item_uri);
    (*env)->DeleteLocalRef(env, item_uri_value);
    (*env)->DeleteLocalRef(env, item_index);
    free(mrl);

    /* Get the object class */
    jclass cls = (*env)->GetObjectClass(env, eventHandlerInstance);
    if (!cls) {
        LOGE("EventHandler: failed to get class reference");
        goto end;
    }

    /* Find the callback ID */
    jmethodID methodID = (*env)->GetMethodID(env, cls, "callback", "(ILandroid/os/Bundle;)V");
    if (methodID) {
        (*env)->CallVoidMethod(env, eventHandlerInstance, methodID, ev->type, bundle);
    } else {
        LOGE("EventHandler: failed to get the callback method");
    }

end:
    if (isAttached)
        (*myVm)->DetachCurrentThread(myVm);
}

static int expand_media_internal(libvlc_media_list_t* p_mlist, int position) {
    libvlc_media_t* p_md = libvlc_media_list_item_at_index(p_mlist, position);
    if(!p_md) {
        return -1;
    }
    libvlc_media_list_t* p_subitems = libvlc_media_subitems(p_md);
    libvlc_media_release(p_md);
    if(p_subitems) {
        // Expand any subitems if needed
        int subitem_count = libvlc_media_list_count(p_subitems);
        if(subitem_count > 0) {
            LOGD("Found %d subitems, expanding", subitem_count);
            for(int i = subitem_count - 1; i >= 0; i--) {
                libvlc_media_t* p_subitem = libvlc_media_list_item_at_index(p_subitems, i);
                libvlc_media_list_insert_media(p_mlist, p_subitem, position+1);
                libvlc_media_release(p_subitem);
            }
            libvlc_media_list_remove_index(p_mlist, position);
        }
        libvlc_media_list_release(p_subitems);
        if(subitem_count > 0) {
            return 0;
        } else {
            return -1;
        }
    } else {
        return -1;
    }
}

jlong Java_org_videolan_libvlc_MediaList_init(JNIEnv *env, jobject thiz, jobject libvlcJava) {
    libvlc_media_list_t* p_ml = libvlc_media_list_new((libvlc_instance_t*)(intptr_t)getLong(env, libvlcJava, "mLibVlcInstance"));
    if(!p_ml) {
        jclass exc = (*env)->FindClass(env, "org/videolan/libvlc/LibVlcException");
        (*env)->ThrowNew(env, exc, "Unable to create LibVLC media list");
        return (jlong)(intptr_t)NULL;
    }

    jclass cls = (*env)->GetObjectClass(env, thiz);
    jfieldID fieldID = (*env)->GetFieldID(env, cls, "mEventHandler", "Lorg/videolan/libvlc/EventHandler;");
    jobject eventHandler = (*env)->GetObjectField(env, thiz, fieldID);
    jobject globalRef = getEventHandlerReference(env, thiz, eventHandler);

    setLong(env, thiz, "mEventHanderGlobalRef", (jlong)(intptr_t)globalRef);

    /* Connect the event manager */
    libvlc_event_manager_t *ev = libvlc_media_list_event_manager(p_ml);
    static const libvlc_event_type_t mp_events[] = {
        libvlc_MediaListItemAdded,
        libvlc_MediaListItemDeleted,
    };
    for(int i = 0; i < (sizeof(mp_events) / sizeof(*mp_events)); i++)
        libvlc_event_attach(ev, mp_events[i], vlc_media_list_event_callback, globalRef);

    return (jlong)(intptr_t)p_ml;
}

void Java_org_videolan_libvlc_MediaList_nativeDestroy(JNIEnv *env, jobject thiz) {
    libvlc_media_list_t* p_ml = getMediaListFromJava(env, thiz);
    libvlc_media_list_release(p_ml);
    (*env)->DeleteGlobalRef(env, (jobject)(intptr_t)getLong(env, thiz, "mEventHanderGlobalRef"));
}

jint Java_org_videolan_libvlc_MediaList_expandMedia(JNIEnv *env, jobject thiz, jint position) {
    libvlc_media_list_t* p_ml = getMediaListFromJava(env, thiz);
    libvlc_media_list_lock(p_ml);
    jint ret = (jint)expand_media_internal(p_ml, position);
    libvlc_media_list_unlock(p_ml);
    return ret;
}

void Java_org_videolan_libvlc_MediaList_remove(JNIEnv *env, jobject thiz, jint position) {
    libvlc_media_list_t* p_ml = getMediaListFromJava(env, thiz);
    libvlc_media_list_lock(p_ml);
    libvlc_media_list_remove_index(p_ml, position);
    libvlc_media_list_unlock(p_ml);
}

void Java_org_videolan_libvlc_MediaList_add(JNIEnv *env, jobject thiz, jobject libvlcInstance, jstring mrl) {
    libvlc_media_list_t* p_ml = getMediaListFromJava(env, thiz);
    const char* p_mrl = (*env)->GetStringUTFChars(env, mrl, NULL);
    libvlc_media_t *p_md = libvlc_media_new_location((libvlc_instance_t*)(intptr_t)getLong(env, libvlcInstance, "mLibVlcInstance"), p_mrl);
    libvlc_media_list_lock(p_ml);
    libvlc_media_list_add_media(p_ml, p_md);
    libvlc_media_list_unlock(p_ml);
    libvlc_media_release(p_md);
    (*env)->ReleaseStringUTFChars(env, mrl, p_mrl);
}

void Java_org_videolan_libvlc_MediaList_insert(JNIEnv *env, jobject thiz, jobject libvlcInstance, jint position, jstring mrl) {
    libvlc_media_list_t* p_ml = getMediaListFromJava(env, thiz);
    const char* p_mrl = (*env)->GetStringUTFChars(env, mrl, NULL);
    libvlc_media_t *p_md = libvlc_media_new_location((libvlc_instance_t*)(intptr_t)getLong(env, libvlcInstance, "mLibVlcInstance"), p_mrl);
    libvlc_media_list_lock(p_ml);
    libvlc_media_list_insert_media(p_ml, p_md, position);
    libvlc_media_list_unlock(p_ml);
    libvlc_media_release(p_md);
    (*env)->ReleaseStringUTFChars(env, mrl, p_mrl);
}

jint Java_org_videolan_libvlc_MediaList_size(JNIEnv *env, jobject thiz) {
    libvlc_media_list_t* p_ml = getMediaListFromJava(env, thiz);
    libvlc_media_list_lock(p_ml);
    int count = libvlc_media_list_count(p_ml);
    libvlc_media_list_unlock(p_ml);
    return count;
}

jstring Java_org_videolan_libvlc_MediaList_getMRL(JNIEnv *env, jobject thiz, jint position) {
    libvlc_media_list_t* p_ml = getMediaListFromJava(env, thiz);
    libvlc_media_list_lock(p_ml);
    libvlc_media_t* p_md = libvlc_media_list_item_at_index(p_ml, position);
    libvlc_media_list_unlock(p_ml);
    if(p_md) {
        char* p_mrl = libvlc_media_get_mrl(p_md);
        libvlc_media_release(p_md);
        return (*env)->NewStringUTF(env, p_mrl);
    } else
        return NULL;
}