CC  = gcc
CPP = g++

#########################################
WX_CONFIG := $(firstword $(wildcard $(addsuffix /wx-config,$(subst :, ,$(PATH):/opt/local/Library/Frameworks/wxWidgets.framework/Versions/wxWidgets/3.0/bin))))
ifneq (,$(WX_CONFIG))
  WXRC := $(dir $(WX_CONFIG))/wxrc
else
  WX_CONFIG := $(firstword $(wildcard $(addsuffix /wxgtk2u-2.8-config,$(subst :, ,$(PATH)))))
  ifneq (,$(WX_CONFIG))
    WXRC := $(dir $(WX_CONFIG))/wxrc-gtk2u-2.8
  else
    WX_CONFIG := wx-config-3.0
    ifneq (,$(shell which $(WX_CONFIG) 2>&1))
      WXRC := wxrc-3.0
    else
      WX_CONFIG := wx-config
      ifneq (,$(shell which $(WX_CONFIG) 2>&1))
        WXRC := wxrc
      else
        $(error Could not find wx-config)
      endif
    endif
  endif
endif
########################################
CFLAGS = -Wfatal-errors -fPIC -lpthread
CPPFLAGS = -Wfatal-errors -fPIC -g -W -Wall -std=c++11 -lpthread -I../../../ptlib-2.16.2/include -I../../../opal-3.16.2/include -I$(MINGW_PREFIX)/include/wx-3.0 -I$(MINGW_PREFIX)/lib/wx/include/msw-unicode-3.0 

LINK_FLAGS = -w -g -D__STDC_CONSTANT_MACROS
LIBS =  -L/usr/lib -lpt -lopal 
LIBS     += $(shell $(WX_CONFIG) --libs)
#########################################################

PROGRAM = openphone

OBJS = main.o \
		openphone.o

$(PROGRAM): $(OBJS)
	$(CPP) $(LINK_FLAGS) -o $@  $(OBJS) $(LIBS) 

clean:
	clear
	rm -rf $(OBJS) *.o $(PROGRAM)

#$(OBJS):%.o :%.c  先用$(OBJS)中的一项，比如foo.o: %.o : %.c  含义为:试着用%.o匹配foo.o。如果成功%就等于foo。如果不成功，  
# Make就会警告，然后。给foo.o添加依赖文件foo.c(用foo替换了%.c里的%)  
# 也可以不要下面的这个生成规则，因为下面的 include $(DEF)  就隐含了。此处为了明了，易懂。故留着  
#compile c source file
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
%.o: %.C
	$(CC) $(CFLAGS) -c $< -o $@

#compile c++ source file
%.o: %.cpp
	$(CPP) $(CPPFLAGS) -c $< -o $@
%.o: %.cp
	$(CPP) $(CPPFLAGS) -c $< -o $@
%.o: %.CPP
	$(CPP) $(CPPFLAGS) -c $< -o $@
%.o: %.cc
	$(CPP) $(CPPFLAGS) -c $< -o $@
%.o: %.cxx
	$(CPP) $(CPPFLAGS) -c $< -o $@
%.o: %.c++
	$(CPP) $(CPPFLAGS) -c $< -o $@
