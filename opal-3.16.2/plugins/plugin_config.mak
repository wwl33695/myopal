#
# Configuration Makefile for plug ins
#
# Copyright (C) 2011 Vox Lucida
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
# The Original Code is OPAL.
#
# The Initial Developer of the Original Code is Robert Jongbloed
#
# Contributor(s): ______________________________________.
#
# $Revision$
# $Author$
# $Date$
#

prefix         := /mingw64
exec_prefix    := ${prefix}
libdir         := ${exec_prefix}/lib
target_os      := mingw
target         := mingw_x86_64

CC             := gcc
CXX            := g++
LD             := g++
AR             := ar
INSTALL        := /usr/bin/install -c -C
MKDIR_P        := mkdir -p

PLUGIN_SRC_DIR := /e/nonsys/code/myopal/opal-3.16.2/plugins
AUD_PLUGIN_DIR := ${libdir}/opal-3.16.2/codecs/audio
VID_PLUGIN_DIR := ${libdir}/opal-3.16.2/codecs/video
FAX_PLUGIN_DIR := ${libdir}/opal-3.16.2/fax

CPPFLAGS       := -IE:/msys64/mingw64/include -IE:/msys64/mingw64/include -IE:/msys64/mingw64/include -IE:/msys64/mingw64/include -IE:/msys64/mingw64/include -IE:/msys64/mingw64/include -IE:/msys64/mingw64/include/opus -IE:/msys64/mingw64/include  -Wall -Wno-unknown-pragmas  -I/mingw64/include -I$(PLUGIN_SRC_DIR)/../include -I$(PLUGIN_SRC_DIR) $(CPPFLAGS)
CXXFLAGS       := -Wno-overloaded-virtual -Wno-unused-private-field  -Wno-deprecated-declarations $(CXXFLAGS)
CFLAGS         :=  $(CFLAGS)
LDFLAGS        :=  $(LDFLAGS)
LIBS           := -lwinmm -lwsock32 -lws2_32 -lsnmpapi -lmpr -lcomdlg32 -lgdi32 -lavicap32 -liphlpapi -lole32 -lquartz  $(LIBS)
ARFLAGS        := rc
SHARED_CPPFLAGS = 
SHARED_LDFLAGS  = -shared -Wl,--kill-at
SHAREDLIBEXT   :=dll

CELT_CFLAGS    := -IE:/msys64/mingw64/include
CELT_LIBS      := -LE:/msys64/mingw64/lib -lcelt0
GSM_CFLAGS     := 
GSM_LIBS       := -lgsm
GSM_SYSTEM     := yes
ILBC_CFLAGS    := 
ILBC_LIBS      := 
ILBC_SYSTEM    := no
OPUS_CFLAGS    := -IE:/msys64/mingw64/include/opus
OPUS_LIBS      := -LE:/msys64/mingw64/lib -lopus
OPUS_SYSTEM    := yes
SPEEX_CFLAGS   := -IE:/msys64/mingw64/include
SPEEX_LIBS     := -LE:/msys64/mingw64/lib -lspeex
SPEEX_SYSTEM   := yes
X264_CFLAGS    := -IE:/msys64/mingw64/include
X264_LIBS      := -LE:/msys64/mingw64/lib -lx264
THEORA_CFLAGS  := -IE:/msys64/mingw64/include
THEORA_LIBS    := -LE:/msys64/mingw64/lib -ltheora -logg
VP8_CFLAGS     := -IE:/msys64/mingw64/include
VP8_LIBS       := -LE:/msys64/mingw64/lib -lvpx -lm
SPANDSP_CFLAGS := 
SPANDSP_LIBS   := -lspandsp

LIBAVCODEC_CFLAGS        := -IE:/msys64/mingw64/include
LIBAVCODEC_LIBS          := -LE:/msys64/mingw64/lib -lavcodec -LE:/msys64/mingw64/lib -lavutil -LE:/msys64/mingw64/lib -lswresample
HAVE_LIBAVCODEC_RTP_MODE := 0

DLFCN_LIBS := 

PLUGIN_SUBDIRS :=  /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/SILK /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/gsm-amr /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/G726 /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/IMA_ADPCM /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/G722 /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/G.722.2 /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/LPC_10 /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/iSAC /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/G.722.1 /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/GSM0610 /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/iLBC /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/Speex /e/nonsys/code/myopal/opal-3.16.2/plugins/audio/Opus /e/nonsys/code/myopal/opal-3.16.2/plugins/video/H.261-vic /e/nonsys/code/myopal/opal-3.16.2/plugins/video/H.263-1998 /e/nonsys/code/myopal/opal-3.16.2/plugins/video/MPEG4-ffmpeg /e/nonsys/code/myopal/opal-3.16.2/plugins/video/x264 /e/nonsys/code/myopal/opal-3.16.2/plugins/video/VP8-WebM /e/nonsys/code/myopal/opal-3.16.2/plugins/video/THEORA
               
               
# End of file
