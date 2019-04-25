#
# opal_config.mak
#
# Make symbols include file for Open Phone Abstraction library
#
# Copyright (c) 2001 Equivalence Pty. Ltd.
#
# The contents of this file are subject to the Mozilla Public License
# Version 1.0 (the "License"); you may not use this file except in
# compliance with the License. You may obtain a copy of the License at
# http://www.mozilla.org/MPL/
#
# Software distributed under the License is distributed on an "AS IS"
# basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
# the License for the specific language governing rights and limitations
# under the License.
#
# The Original Code is Open Phone Abstraction library.
#
# The Initial Developer of the Original Code is Equivalence Pty. Ltd.
#
# Contributor(s): ______________________________________.
#
# $Revision: 34748 $
# $Author: rjongbloed $
# $Date: 2016-04-02 10:25:21 +0100 (Sat, 02 Apr 2016) $
#

OPAL_MAJOR :=3
OPAL_MINOR :=16
OPAL_STAGE :=.
OPAL_BUILD :=2

# detected platform
target_cpu       := x86_64
target_os        := mingw
target           := mingw_x86_64

# The install directories
ifndef prefix
  prefix := /mingw64
endif
ifndef exec_prefix
  exec_prefix := ${prefix}
endif
ifndef libdir
  libdir := ${exec_prefix}/lib
endif
ifndef includedir
  includedir := ${prefix}/include
endif
ifndef datarootdir
  datarootdir := ${prefix}/share
endif

OPAL_PLUGIN_DIR  := ${libdir}/opal-3.16.2

# Tool names detected by configure
CC               := gcc
CXX              := g++
LD               := g++
AR               := ar
RANLIB           := ranlib
LN_S             := cp -pR
MKDIR_P          := mkdir -p
INSTALL          := /usr/bin/install -c -C
SVN              := 
SWIG             := /usr/bin/swig

# Compile/tool flags
CPPFLAGS         := -IE:/msys64/mingw64/include -Wall -Wno-unknown-pragmas  -I${includedir} -I${includedir}/opal $(CPPFLAGS)
CXXFLAGS         := -Wno-overloaded-virtual -Wno-unused-private-field  -Wno-deprecated-declarations $(CXXFLAGS)
CFLAGS           :=  $(CFLAGS)
LDFLAGS          :=  $(LDFLAGS)
LIBS             := -LE:/msys64/mingw64/lib -lspeexdsp -lwinmm -lwsock32 -lws2_32 -lsnmpapi -lmpr -lcomdlg32 -lgdi32 -lavicap32 -liphlpapi -lole32 -lquartz  $(LIBS)
SHARED_CPPFLAGS  := 
SHARED_LDFLAGS    = -shared -Wl,--kill-at
DEBUG_CPPFLAGS   := -D_DEBUG 
DEBUG_CFLAGS     := -gdwarf-4 
OPT_CPPFLAGS     := -DNDEBUG 
OPT_CFLAGS       := -O3 
ARFLAGS          := rc

SHAREDLIBEXT     := dll
STATICLIBEXT     := lib

# Configuration options
OPAL_PLUGINS     := yes
OPAL_SAMPLES     := no

OPAL_H323        := no
OPAL_SDP         := yes
OPAL_SIP         := yes
OPAL_IAX2        := yes
OPAL_SKINNY      := yes
OPAL_VIDEO       := no
OPAL_ZRTP        := no
OPAL_LID         := yes
OPAL_CAPI        := no
OPAL_DAHDI       := no
OPAL_IVR         := no
OPAL_HAS_H224    := no
OPAL_HAS_H281    := no
OPAL_H235_6      := no
OPAL_H235_8      := no
OPAL_H450        := no
OPAL_H460        := no
OPAL_H501        := no
OPAL_T120DATA    := no
OPAL_SRTP        := yes
SRTP_SYSTEM      := no
OPAL_RFC4175     := no
OPAL_RFC2435     := no
OPAL_AEC         := yes
OPAL_G711PLC     := yes
OPAL_T38_CAP     := yes
OPAL_FAX         := no
OPAL_JAVA        := no
SPEEXDSP_SYSTEM  := yes
OPAL_HAS_PRESENCE:= yes
OPAL_HAS_MSRP    := yes
OPAL_HAS_SIPIM   := yes
OPAL_HAS_RFC4103 := yes
OPAL_HAS_MIXER   := yes
OPAL_HAS_PCSS    := yes

# PTLib interlocks
OPAL_PTLIB_SSL          := yes
OPAL_PTLIB_SSL_AES      := yes
OPAL_PTLIB_ASN          := 
OPAL_PTLIB_EXPAT        := yes
OPAL_PTLIB_AUDIO        := 
OPAL_PTLIB_VIDEO        := 
OPAL_PTLIB_WAVFILE      := 
OPAL_PTLIB_DTMF         := 
OPAL_PTLIB_IPV6         := no
OPAL_PTLIB_DNS_RESOLVER := no
OPAL_PTLIB_LDAP         := no
OPAL_PTLIB_VXML         := 
OPAL_PTLIB_CONFIG_FILE  := 
OPAL_PTLIB_HTTPSVC      := 
OPAL_PTLIB_STUN         := 
OPAL_PTLIB_CLI          := 
OPAL_GSTREAMER          := no

PTLIB_MAKE_DIR   := E:/msys64/mingw64/share/ptlib/make
PTLIB_LIB_DIR    := E:/msys64/mingw64/lib


# Remember where this make file is, it is the platform specific one and there
# is a corresponding platform specific include file that goes with it
OPAL_PLATFORM_INC_DIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))../include)


# End of file
