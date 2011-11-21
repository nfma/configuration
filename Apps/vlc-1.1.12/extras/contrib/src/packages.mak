# ***************************************************************************
# src/packages.mak : Archive locations
# ***************************************************************************
# Copyright (C) 2003 - 2009 the VideoLAN team
# $Id$
#
# Authors: Christophe Massiot <massiot@via.ecp.fr>
#          Derk-Jan Hartman <hartman at videolan dot org>
#          Felix Paul Kühne <fkuehne at videolan dot org>
#          Rafaël Carré <funman@videolanorg>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
# ***************************************************************************

PENGUIN=http://ftp.penguin.cz/pub/users/utx/amr
GNU=ftp://ftp.gnu.org/gnu
SF=http://heanet.dl.sourceforge.net/sourceforge
VIDEOLAN=http://downloads.videolan.org/pub/videolan
CONTRIB_VIDEOLAN=http://downloads.videolan.org/pub/videolan/testing/contrib
LIBAMR_NB_VERSION=7.0.0.0
LIBAMR_NB=$(PENGUIN)/amrnb-$(LIBAMR_NB_VERSION).tar.bz2
LIBAMR_WB_VERSION=7.0.0.2
LIBAMR_WB=$(PENGUIN)/amrwb-$(LIBAMR_WB_VERSION).tar.bz2
ERRNO_URL=http://altair.videolan.org/~linkfanel/errno
AUTOCONF_VERSION=2.63
AUTOCONF_URL=$(GNU)/autoconf/autoconf-$(AUTOCONF_VERSION).tar.bz2
GNUMAKE_VERSION=3.81
GNUMAKE_URL=$(GNU)/make/make-$(GNUMAKE_VERSION).tar.bz2
CMAKE_VERSION=2.6.4
CMAKE_URL=http://www.cmake.org/files/v2.6/cmake-$(CMAKE_VERSION).tar.gz
LIBTOOL_VERSION=1.5.26
LIBTOOL_URL=$(GNU)/libtool/libtool-$(LIBTOOL_VERSION).tar.gz
AUTOMAKE_VERSION=1.11
AUTOMAKE_URL=$(GNU)/automake/automake-$(AUTOMAKE_VERSION).tar.gz
PKGCFG_VERSION=0.23
#PKGCFG_URL=$(CONTRIB_VIDEOLAN)/pkg-config-$(PKGCFG_VERSION).tar.gz
PKGCFG_URL=http://pkgconfig.freedesktop.org/releases/pkg-config-$(PKGCFG_VERSION).tar.gz
LIBICONV_VERSION=1.13.1
LIBICONV_URL=$(GNU)/libiconv/libiconv-$(LIBICONV_VERSION).tar.gz
LIBICONVMAC_URL=$(CONTRIB_VIDEOLAN)/libiconv-snowleopard.tar.bz2
GETTEXT_VERSION=0.18
GETTEXT_URL=$(GNU)/gettext/gettext-$(GETTEXT_VERSION).tar.gz
FONTCONFIG_VERSION=2.7.3
FONTCONFIG_URL=$(CONTRIB_VIDEOLAN)/fontconfig-$(FONTCONFIG_VERSION).tar.gz
#FONTCONFIG_URL=http://fontconfig.org/release/fontconfig-$(FONTCONFIG_VERSION).tar.gz
FREETYPE2_VERSION=2.3.12
FREETYPE2_URL=$(SF)/freetype/freetype-$(FREETYPE2_VERSION).tar.gz
FRIBIDI_VERSION=0.19.2
FRIBIDI_URL=http://fribidi.org/download/fribidi-$(FRIBIDI_VERSION).tar.gz
#FRIBIDI_URL=ftp://ftp.videolan.org/pub/testing/contrib/fribidi-$(FRIBIDI_VERSION).tar.bz2
A52DEC_VERSION=0.7.4
A52DEC_URL=$(CONTRIB_VIDEOLAN)/a52dec-$(A52DEC_VERSION).tar.gz
LIBMPEG2_VERSION=0.5.1
LIBMPEG2_URL=http://libmpeg2.sourceforge.net/files/libmpeg2-$(LIBMPEG2_VERSION).tar.gz
LIBID3TAG_VERSION=0.15.1b
LIBID3TAG_URL=$(CONTRIB_VIDEOLAN)/libid3tag-$(LIBID3TAG_VERSION).tar.gz
LIBMAD_VERSION=0.15.1b
LIBMAD_URL=$(CONTRIB_VIDEOLAN)/libmad-$(LIBMAD_VERSION).tar.gz
OGG_VERSION=1.2.0
OGG_URL=http://downloads.xiph.org/releases/ogg/libogg-$(OGG_VERSION).tar.gz
#GG_URL=$(CONTRIB_VIDEOLAN)/libogg-$(OGG_VERSION).tar.gz
OGG_CVSROOT=:pserver:anoncvs@xiph.org:/usr/local/cvsroot
VORBIS_VERSION=1.3.1
VORBIS_URL=http://downloads.xiph.org/releases/vorbis/libvorbis-$(VORBIS_VERSION).tar.gz
#VORBIS_URL=$(CONTRIB_VIDEOLAN)/libvorbis-$(VORBIS_VERSION).tar.gz
THEORA_VERSION=1.1.1
THEORA_URL=http://downloads.xiph.org/releases/theora/libtheora-$(THEORA_VERSION).tar.bz2
#THEORA_URL=$(CONTRIB_VIDEOLAN)/libtheora-$(THEORA_VERSION).tar.bz2
FLAC_VERSION=1.2.1
FLAC_URL=$(SF)/flac/flac-$(FLAC_VERSION).tar.gz
SPEEX_VERSION=1.2rc1
SPEEX_URL=http://downloads.us.xiph.org/releases/speex/speex-$(SPEEX_VERSION).tar.gz
SHOUT_VERSION=2.2.2
SHOUT_URL=http://downloads.us.xiph.org/releases/libshout/libshout-$(SHOUT_VERSION).tar.gz
FAAD2_VERSION=2.7
FAAD2_URL=$(SF)/faac/faad2-$(FAAD2_VERSION).tar.gz
#FAAD2_URL=$(CONTRIB_VIDEOLAN)/faad2-$(FAAD2_VERSION).tar.bz2
FAAD2_CVSROOT=:pserver:anonymous@cvs.audiocoding.com:/cvsroot/faac
LAME_VERSION=3.98.4
LAME_URL=$(SF)/lame/lame-$(LAME_VERSION).tar.gz
LIBEBML_VERSION=0.7.8
#LIBEBML_URL=http://dl.matroska.org/downloads/libebml/libebml-$(LIBEBML_VERSION).tar.bz2
LIBEBML_URL=$(CONTRIB_VIDEOLAN)/libebml-$(LIBEBML_VERSION).tar.bz2
LIBMATROSKA_VERSION=0.8.1
#LIBMATROSKA_URL=http://dl.matroska.org/downloads/libmatroska/libmatroska-$(LIBMATROSKA_VERSION).tar.bz2
LIBMATROSKA_URL=$(CONTRIB_VIDEOLAN)/libmatroska-$(LIBMATROSKA_VERSION).tar.bz2
FFMPEG_VERSION=0.4.8
FFMPEG_URL=$(SF)/ffmpeg/ffmpeg-$(FFMPEG_VERSION).tar.gz
FFMPEG_SVN=svn://svn.ffmpeg.org/ffmpeg/trunk
LIBDVDCSS_VERSION=1.2.10
LIBDVDCSS_URL=$(VIDEOLAN)/libdvdcss/$(LIBDVDCSS_VERSION)/libdvdcss-$(LIBDVDCSS_VERSION).tar.bz2
LIBDVDNAV_VERSION=4.1.1
LIBDVDNAV_URL=http://www1.mplayerhq.hu/MPlayer/releases/dvdnav/libdvdnav-$(LIBDVDNAV_VERSION).tar.gz
LIBDVDNAV_SVN=svn://svn.mplayerhq.hu/dvdnav/trunk/libdvdnav
LIBDVDREAD_SVN=svn://svn.mplayerhq.hu/dvdnav/trunk/libdvdread
LIBDVDREAD_VERSION=0.9.7
LIBDVDREAD_URL=http://www.dtek.chalmers.se/groups/dvd/dist/libdvdread-$(LIBDVDREAD_VERSION).tar.gz
#LIBDVDREAD_URL=$(VIDEOLAN)/libdvdread/$(LIBDVDREAD_VERSION)/libdvdread-$(LIBDVDREAD_VERSION).tar.gz
LIBDVBPSI_VERSION=0.1.6
LIBDVBPSI_URL=$(VIDEOLAN)/libdvbpsi/$(LIBDVBPSI_VERSION)/libdvbpsi5-$(LIBDVBPSI_VERSION).tar.gz
LIVEDOTCOM_VERSION=latest
LIVEDOTCOM_URL=http://live555.com/liveMedia/public/live555-$(LIVEDOTCOM_VERSION).tar.gz
GOOM2k4_VERSION=2k4-0
GOOM2k4_URL=$(CONTRIB_VIDEOLAN)/goom-$(GOOM2k4_VERSION)-src.tar.gz
#GOOM2k4_URL=$(SF)/goom/goom-$(GOOM2k4_VERSION)-src.tar.gz
LIBCACA_VERSION=0.99.beta16
LIBCACA_URL=$(CONTRIB_VIDEOLAN)/libcaca-$(LIBCACA_VERSION).tar.gz
#LIBCACA_URL=http://caca.zoy.org/files/libcaca/libcaca-$(LIBCACA_VERSION).tar.gz
LIBDCA_VERSION=0.0.5
LIBDCA_URL=ftp://ftp.videolan.org/pub/videolan/libdca/$(LIBDCA_VERSION)/libdca-$(LIBDCA_VERSION).tar.bz2
LIBDC1394_VERSION=1.2.1
LIBDC1394_URL=$(SF)/libdc1394/libdc1394-$(LIBDC1394_VERSION).tar.gz
LIBDC1394_SVN=https://svn.sourceforge.net/svnroot
LIBRAW1394_VERSION=1.2.0
LIBRAW1394_URL=$(SF)/libraw1394/libraw1394-$(LIBRAW1394_VERSION).tar.gz
LIBRAW1394_SVN=https://svn.sourceforge.net/svnroot
LIBDTS_VERSION=0.0.2
LIBDTS_URL=http://debian.unnet.nl/pub/videolan/libdts/$(LIBDTS_VERSION)/libdts-$(LIBDTS_VERSION).tar.gz
LIBDCA_SVN=svn://svn.videolan.org/libdca/trunk
MODPLUG_VERSION=0.8.8.3
MODPLUG_URL=$(SF)/modplug-xmms/libmodplug-$(MODPLUG_VERSION).tar.gz
REGEX_VERSION=0.12
REGEX_URL=http://ftp.gnu.org/old-gnu/regex/regex-$(REGEX_VERSION).tar.gz
CDDB_VERSION=1.3.2
CDDB_URL=$(SF)/libcddb/libcddb-$(CDDB_VERSION).tar.bz2
VCDIMAGER_VERSION=0.7.23
VCDIMAGER_URL=$(GNU)/vcdimager/vcdimager-$(VCDIMAGER_VERSION).tar.gz
CDIO_VERSION=0.80
CDIO_URL=$(GNU)/libcdio/libcdio-$(CDIO_VERSION).tar.gz
PNG_VERSION=1.2.44
PNG_URL=$(SF)/libpng/libpng-$(PNG_VERSION).tar.bz2
GPGERROR_VERSION=1.7
#GPGERROR_URL=$(CONTRIB_VIDEOLAN)/libgpg-error-$(GPGERROR_VERSION).tar.bz2
GPGERROR_URL=ftp://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-error-$(GPGERROR_VERSION).tar.bz2
GCRYPT_VERSION=1.4.5
#GCRYPT_URL=$(CONTRIB_VIDEOLAN)/libgcrypt-$(GCRYPT_VERSION).tar.bz2
GCRYPT_URL=ftp://ftp.gnupg.org/gcrypt/libgcrypt/libgcrypt-$(GCRYPT_VERSION).tar.bz2
GNUTLS_VERSION=2.8.6
GNUTLS_URL=http://ftp.gnu.org/pub/gnu/gnutls/gnutls-$(GNUTLS_VERSION).tar.bz2
OPENCDK_VERSION=0.6.6
OPENCDK_URL=http://www.gnu.org/software/gnutls/releases/opencdk/opencdk-$(OPENCDK_VERSION).tar.bz2
DAAP_VERSION=0.4.0
DAAP_URL=http://craz.net/programs/itunes/files/libopendaap-$(DAAP_VERSION).tar.bz2
NPAPI_HEADERS_SVN_URL=http://npapi-headers.googlecode.com/svn/trunk/
# NPAPI_HEADERS_SVN_REVISION can be a revision number, or just HEAD for the latest
NPAPI_HEADERS_SVN_REVISION=3
TWOLAME_VERSION=0.3.12
TWOLAME_URL=$(SF)/twolame/twolame-$(TWOLAME_VERSION).tar.gz
X264_VERSION=20050609
X264_URL=$(CONTRIB_VIDEOLAN)/x264-$(X264_VERSION).tar.gz
JPEG_VERSION=8a
JPEG_URL=http://www.ijg.org/files/jpegsrc.v$(JPEG_VERSION).tar.gz
TIFF_VERSION=3.9.2
TIFF_URL=ftp://ftp.remotesensing.org/libtiff/tiff-$(TIFF_VERSION).tar.gz
#TIFF_URL=http://dl.maptools.org/dl/libtiff/tiff-$(TIFF_VERSION).tar.gz
SDL_VERSION=1.2.14
SDL_URL=http://www.libsdl.org/release/SDL-$(SDL_VERSION).tar.gz
SDL_IMAGE_VERSION=1.2.10
SDL_IMAGE_URL=http://www.libsdl.org/projects/SDL_image/release/SDL_image-$(SDL_IMAGE_VERSION).tar.gz
MUSE_VERSION=1.2.6
MUSE_URL=http://files.musepack.net/source/libmpcdec-$(MUSE_VERSION).tar.bz2
MUSE_SVN=http://svn.musepack.net/libmpc/trunk/
#MUSE_URL=http://files2.musepack.net/source/libmpcdec-$(MUSE_VERSION).tar.bz2
QT4_VERSION=4.6.2
QT4_URL=$(CONTRIB_VIDEOLAN)/qt4-$(QT4_VERSION)-win32-bin.tar.bz2
QT4_MAC_VERSION=4.5.2
QT4_MAC_URL=http://get.qtsoftware.com/qt/source/qt-mac-opensource-src-$(QT4_MAC_VERSION).tar.gz
QT4T_VERSION=4.3.2
QT4T_URL=ftp://ftp.trolltech.com/pub/qt/source/qt-win-opensource-$(QT4T_VERSION)-mingw.exe
ZLIB_VERSION=1.2.3
ZLIB_URL=$(SF)/libpng/zlib-$(ZLIB_VERSION).tar.gz
XML_VERSION=2.7.6
#XML_URL=$(CONTRIB_VIDEOLAN)/libxml2-$(XML_VERSION).tar.gz
XML_URL=http://xmlsoft.org/sources/libxml2-$(XML_VERSION).tar.gz
DIRAC_VERSION=1.0.2
DIRAC_URL=$(SF)/dirac/dirac-$(DIRAC_VERSION).tar.gz
DX_HEADERS_URL=$(CONTRIB_VIDEOLAN)/win32-dx7headers.tgz
DSHOW_HEADERS_URL=$(VIDEOLAN)/contrib/dshow-headers-oss.tar.bz2
PORTAUDIO_VERSION=19
PORTAUDIO_URL=http://www.portaudio.com/archives/pa_snapshot_v$(PORTAUDIO_VERSION).tar.gz
CLINKCC_VERSION=171
CLINKCC_URL=$(SF)/clinkcc/clinkcc$(CLINKCC_VERSION).tar.gz
UPNP_VERSION=1.6.6
UPNP_URL=$(CONTRIB_VIDEOLAN)/libupnp-$(UPNP_VERSION).tar.bz2
EXPAT_VERSION=2.0.0
EXPAT_URL=$(SF)/expat/expat-$(EXPAT_VERSION).tar.gz
PTHREADS_VERSION=2-8-0
PTHREADS_URL=ftp://sources.redhat.com/pub/pthreads-win32/pthreads-w32-$(PTHREADS_VERSION)-release.tar.gz
ZVBI_VERSION=0.2.30
ZVBI_URL=$(SF)/zapping/zvbi-$(ZVBI_VERSION).tar.bz2
TAGLIB_VERSION=1.6.3
TAGLIB_URL=http://developer.kde.org/~wheeler/files/src/taglib-$(TAGLIB_VERSION).tar.gz
LUA_VERSION=5.1
LUA_URL=http://www.lua.org/ftp/lua-$(LUA_VERSION).tar.gz
NCURSES_VERSION=5.7
NCURSES_URL=$(GNU)/ncurses/ncurses-$(NCURSES_VERSION).tar.gz
ASA_URL=$(CONTRIB_VIDEOLAN)/asa.git.tar.gz
PCRE_VERSION=8.00
PCRE_URL=ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-$(PCRE_VERSION).tar.bz2
FLUID_VERSION=1.0.9
FLUID_URL=http://download.savannah.gnu.org/releases/fluid/fluidsynth-$(FLUID_VERSION).tar.gz
YASM_VERSION=0.7.2
#YASM_URL=$(CONTRIB_VIDEOLAN)/yasm-$(YASM_VERSION).tar.gz
YASM_URL=http://www.tortall.net/projects/yasm/releases/yasm-$(YASM_VERSION).tar.gz
KATE_VERSION=0.3.0
KATE_URL=http://libkate.googlecode.com/files/libkate-$(KATE_VERSION).tar.gz
TIGER_VERSION=0.3.1
TIGER_URL=http://libtiger.googlecode.com/files/libtiger-$(TIGER_VERSION).tar.gz
ORC_VERSION=0.4.4
ORC_URL=http://code.entropywave.com/download/orc/orc-$(ORC_VERSION).tar.gz
SCHROED_VERSION=1.0.9
SCHROED_URL=http://diracvideo.org/download/schroedinger/schroedinger-$(SCHROED_VERSION).tar.gz
ASS_VERSION=0.9.9
ASS_URL=http://libass.googlecode.com/files/libass-$(ASS_VERSION).tar.bz2
GSM_VERSION=1.0.12
#GSM_URL=http://user.cs.tu-berlin.de/~jutta/gsm/gsm-$(GSM_VERSION).tar.gz
GSM_URL=$(CONTRIB_VIDEOLAN)/gsm-$(GSM_VERSION).tar.gz
SPARKLE_VERSION=1.5b6-vlc
#SPARKLE_URL=http://sparkle.andymatuschak.org/files/Sparkle%20$(SPARKLE_VERSION).zip
SPARKLE_URL=$(CONTRIB_VIDEOLAN)/Sparkle-$(SPARKLE_VERSION).zip
XCB_VERSION=1.2
XCB_URL=http://xcb.freedesktop.org/dist/
XCB_UTIL_VERSION=0.2
XCB_UTIL_URL=$(XCB_URL)
GLEW_VERSION=1.5.1
GLEW_URL=$(SF)/glew/glew/$(GLEW_VERSION)/glew-$(GLEW_VERSION)-src.tgz
LIBPROJECTM_VERSION=2.0.0
LIBPROJECTM_URL=$(SF)/projectm/libprojectM/libprojectM-$(LIBPROJECTM_VERSION)/libprojectM-$(LIBPROJECTM_VERSION)-Source.tar.gz
LIBPROJECTM_SVN=https://projectm.svn.sourceforge.net/svnroot/projectm/trunk
PEFLAGS_URL=$(CONTRIB_VIDEOLAN)
SQLITE_VERSION=3.6.20
SQLITE_URL=http://www.sqlite.org/sqlite-amalgamation-$(SQLITE_VERSION).tar.gz
DXVA2_URL=$(CONTRIB_VIDEOLAN)/dxva2api.h
VPX_VERSION=0.9.0
VPX_URL=http://webm.googlecode.com/files/libvpx-$(VPX_VERSION).tar.bz2
