INCLUDES = -Iinclude -I../UsageEnvironment/include
##### Change the following for your environment: 
COMPILE_OPTS =		$(INCLUDES) -I. -O2 -DSOCKLEN_T=socklen_t -D_LARGEFILE_SOURCE=1 -D_FILE_OFFSET_BITS=64 -fPIC -DPIC -DNO_SSTREAM=1 -DLOCALE_NOT_USED -I/home/ddt/Documents/android-sdk/android-ndk-r9/platforms/android-9/arch-arm/usr/include -g -mfpu=vfpv3-d16 -mcpu=cortex-a8 -mthumb -mfloat-abi=softfp -O2 -I/home/ddt/Documents/android-sdk/android-ndk-r9/sources/cxx-stl/gnu-libstdc++/4.8/include -I/home/ddt/Documents/android-sdk/android-ndk-r9/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a/include -I/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include -fexceptions
C =			c
C_COMPILER =		arm-linux-androideabi-gcc --sysroot=/home/ddt/Documents/android-sdk/android-ndk-r9/platforms/android-9/arch-arm
C_FLAGS =		$(COMPILE_OPTS)
CPP =			cpp
CPLUSPLUS_COMPILER =	arm-linux-androideabi-g++ --sysroot=/home/ddt/Documents/android-sdk/android-ndk-r9/platforms/android-9/arch-arm
CPLUSPLUS_FLAGS =	$(COMPILE_OPTS) -Wall -DBSD=1
OBJ =			o
LINK =			arm-linux-androideabi-g++ --sysroot=/home/ddt/Documents/android-sdk/android-ndk-r9/platforms/android-9/arch-arm -o
LINK_OPTS =		-L.
CONSOLE_LINK_OPTS =	$(LINK_OPTS)
LIBRARY_LINK = arm-linux-androideabi-ar cr 
LIBRARY_LINK_OPTS =	
LIB_SUFFIX =			a
LIBS_FOR_CONSOLE_APPLICATION =
LIBS_FOR_GUI_APPLICATION =
EXE =
##### End of variables to change

NAME = libgroupsock
ALL = $(NAME).$(LIB_SUFFIX)
all:	$(ALL)

.$(C).$(OBJ):
	$(C_COMPILER) -c $(C_FLAGS) $<       

.$(CPP).$(OBJ):
	$(CPLUSPLUS_COMPILER) -c $(CPLUSPLUS_FLAGS) $<

GROUPSOCK_LIB_OBJS = GroupsockHelper.$(OBJ) GroupEId.$(OBJ) inet.$(OBJ) Groupsock.$(OBJ) NetInterface.$(OBJ) NetAddress.$(OBJ) IOHandlers.$(OBJ)

GroupsockHelper.$(CPP):	include/GroupsockHelper.hh
include/GroupsockHelper.hh:	include/NetAddress.hh
include/NetAddress.hh:	include/NetCommon.h
GroupEId.$(CPP):	include/GroupEId.hh
include/GroupEId.hh:	include/NetAddress.hh
inet.$(C):		include/NetCommon.h
Groupsock.$(CPP):	include/Groupsock.hh include/GroupsockHelper.hh include/TunnelEncaps.hh
include/Groupsock.hh:	include/groupsock_version.hh include/NetInterface.hh include/GroupEId.hh
include/NetInterface.hh:	include/NetAddress.hh
include/TunnelEncaps.hh:	include/NetAddress.hh
NetInterface.$(CPP):	include/NetInterface.hh include/GroupsockHelper.hh
NetAddress.$(CPP):	include/NetAddress.hh include/GroupsockHelper.hh
IOHandlers.$(CPP):	include/IOHandlers.hh include/TunnelEncaps.hh

libgroupsock.$(LIB_SUFFIX): $(GROUPSOCK_LIB_OBJS) \
    $(PLATFORM_SPECIFIC_LIB_OBJS)
	$(LIBRARY_LINK)$@ $(LIBRARY_LINK_OPTS) \
		$(GROUPSOCK_LIB_OBJS)

clean:
	-rm -rf *.$(OBJ) $(ALL) core *.core *~ include/*~

##### Any additional, platform-specific rules come here:
