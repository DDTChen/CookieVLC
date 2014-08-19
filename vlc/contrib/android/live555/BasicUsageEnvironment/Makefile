INCLUDES = -Iinclude -I../UsageEnvironment/include -I../groupsock/include
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

NAME = libBasicUsageEnvironment
LIB = $(NAME).$(LIB_SUFFIX)
ALL = $(LIB)
all:	$(ALL)

OBJS = BasicUsageEnvironment0.$(OBJ) BasicUsageEnvironment.$(OBJ) \
	BasicTaskScheduler0.$(OBJ) BasicTaskScheduler.$(OBJ) \
	DelayQueue.$(OBJ) BasicHashTable.$(OBJ)

libBasicUsageEnvironment.$(LIB_SUFFIX): $(OBJS)
	$(LIBRARY_LINK)$@ $(LIBRARY_LINK_OPTS) \
		$(OBJS)

.$(C).$(OBJ):
	$(C_COMPILER) -c $(C_FLAGS) $<       

.$(CPP).$(OBJ):
	$(CPLUSPLUS_COMPILER) -c $(CPLUSPLUS_FLAGS) $<

BasicUsageEnvironment0.$(CPP):	include/BasicUsageEnvironment0.hh
include/BasicUsageEnvironment0.hh:	include/BasicUsageEnvironment_version.hh include/DelayQueue.hh
BasicUsageEnvironment.$(CPP):	include/BasicUsageEnvironment.hh
include/BasicUsageEnvironment.hh:	include/BasicUsageEnvironment0.hh
BasicTaskScheduler0.$(CPP):	include/BasicUsageEnvironment0.hh include/HandlerSet.hh
BasicTaskScheduler.$(CPP):	include/BasicUsageEnvironment.hh include/HandlerSet.hh
DelayQueue.$(CPP):		include/DelayQueue.hh
BasicHashTable.$(CPP):		include/BasicHashTable.hh

clean:
	-rm -rf *.$(OBJ) $(ALL) core *.core *~ include/*~

##### Any additional, platform-specific rules come here:
