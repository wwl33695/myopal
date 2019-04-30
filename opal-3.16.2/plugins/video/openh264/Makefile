CC  = gcc
CPP = g++

########################################
SHARED_SUFFIX := so
STATIC_SUFFIX := a

ifeq ($(OS),Windows_NT)
	SHARED_SUFFIX = dll
	STATIC_SUFFIX = lib
endif

INSTALLDIR := /usr/local/lib
ifeq ($(OS),Windows_NT)
	INSTALLDIR = $(MINGW_PREFIX)/lib
endif

CFLAGS = -fPIC -lpthread -Wfatal-errors
CPPFLAGS = -Wfatal-errors -fPIC -g -w -std=c++11 -I../../../include -I../.. 

LINK_FLAGS = -fPIC -w -g -D__STDC_CONSTANT_MACROS
LIBS =  -lstdc++ -lopenh264 
ifeq ($(OS),Windows_NT)
	LIBS +=  
endif
#########################################################

PROGRAM = openh264

OBJS = ../common/h264frame.o \
	../common/encframe.o \

# The directories in which source files reside.  
# At least one path should be specified.  
# SRCDIRS   := .        # current directory  
SRCDIRS   :=  .

# The source file types (headers excluded).  
# At least one type should be specified.  
# The valid suffixes are among of .c, .C, .cc, .cpp, .CPP, .c++, .cp, or .cxx.  
# SRCEXTS   := .c      # C program  
# SRCEXTS   := .cpp    # C++ program  
# SRCEXTS   := .c .cpp # C/C++ program  
SRCEXTS   := .cxx .cpp .c

ifneq ($(SRCDIRS),)
ifneq ($(SRCEXTS),)
	SOURCES = $(foreach d,$(SRCDIRS),$(wildcard $(addprefix $(d)/*,$(SRCEXTS))))  
	OBJS += $(foreach x,$(SRCEXTS), $(patsubst %$(x),%.o,$(filter %$(x),$(SOURCES))))  
endif
endif

DEBUGOBJS = $(patsubst %.o,%.d,$(OBJS))  

$(PROGRAM): $(OBJS)
	$(CPP) $(LINK_FLAGS) -shared -o $@.$(SHARED_SUFFIX)  $(OBJS) $(LIBS) 
#	ar cr $@.$(STATIC_SUFFIX) $(OBJS)

clean:
	clear
	rm -rf $(OBJS) *.o $(PROGRAM).$(SHARED_SUFFIX) $(PROGRAM).$(STATIC_SUFFIX)

install:
	cp -f $(PROGRAM).$(SHARED_SUFFIX) $(INSTALLDIR)

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
