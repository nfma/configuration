# Extract the version string from nping.h.
export NPING_VERSION := $(shell grep '^\#[ \t]*define[ \t]\+NPING_VERSION' nping.h | sed -e 's/.*"\(.*\)".*/\1/' -e 'q')
NPING_NAME= Nping
NPING_URL= http://nmap.org/nping
NPING_PLATFORM=x86_64-apple-darwin11.2.0
prefix = /usr/local
exec_prefix = ${prefix}
bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
mandir = ${prefix}/share/man
srcdir = .
npingdatadir = ${prefix}/share/nping
NPINGDEVDIR=~/nping-private-dev
WIN32STUFFDIR=mswin32
NPINGWEBDIR=../../../web/nmap/nping
NPINGWININSTDIR=mswin32/nsis
export RELEASE_DATE := $(shell date +"%b %d, %Y")


export NBASEDIR=../nbase
export NSOCKDIR=../nsock

export NDIR=$(shell pwd)


CC = gcc
CXX = g++
CCOPT = 
DBGFLAGS = 
STRIP = /usr/bin/strip
LIBPCAPDIR = ../libpcap
export LIBDNETDIR = ../libdnet-stripped


DEFS = -DHAVE_CONFIG_H -DNPING_NAME=\"$(NPING_NAME)\" -DNPING_URL=\"$(NPING_URL)\" -DNPING_PLATFORM=\"$(NPING_PLATFORM)\"
# With GCC, add extra security checks to source code.
# http://gcc.gnu.org/ml/gcc-patches/2004-09/msg02055.html
# Level 1 only makes changes that don't affect "conforming" programs,
# while level 2 enforces additional restrictions.
DEFS += -D_FORTIFY_SOURCE=2
# For mtrace debugging -- see MTRACE define in main.cc for instructions
# Should only be enabled during debugging and not in any real release.
# DEFS += -DMTRACE=1
CXXFLAGS = -g -O2 -Wall  -fno-strict-aliasing $(DBGFLAGS) $(CCOPT) $(DEFS)
CPPFLAGS = -I../libdnet-stripped/include  -I$(NBASEDIR) -I$(NSOCKDIR)/include
export CFLAGS = $(CXXFLAGS)
# CFLAGS = $(DEFS) $(INCLS)
STATIC =
LDFLAGS =  $(DBGFLAGS) $(STATIC)
OPENSSL_LIBS = -lssl -lcrypto
LIBS =  $(NBASEDIR)/libnbase.a $(NSOCKDIR)/src/libnsock.a ../libnetutil/libnetutil.a $(OPENSSL_LIBS) -lpcap ../libdnet-stripped/src/.libs/libdnet.a -lm  -lpthread
# LIBS =  -lefence -lm 
# LIBS =  -lrmalloc -lm 
INSTALL = /usr/bin/install -c
# MAKEDEPEND = @MAKEDEPEND@
export RPMTDIR=$(HOME)/rpm


# DESTDIR is used by some package maintainers to install Nping under
# its usual directory structure into a different tree.  See the 
# CHANGELOG for more info.
DESTDIR =

TARGET = nping


export SRCS = ArgParser.cc NetworkLayerElement.cc PacketElement.cc common.cc common_modified.cc nping.cc RawData.cc UDPHeader.cc NpingOps.cc TCPHeader.cc utils.cc utils_net.cc IPv4Header.cc IPv6Header.cc ICMPv4Header.cc output.cc TransportLayerElement.cc stats.cc NpingTargets.cc NpingTarget.cc EthernetHeader.cc ARPHeader.cc EchoHeader.cc EchoServer.cc EchoClient.cc ProbeMode.cc NEPContext.cc Crypto.cc PacketDiff.cc 

export HDRS = ApplicationLayerElement.h NetworkLayerElement.h TCPHeader.h ArgParser.h nping_config.h TransportLayerElement.h common.h common_modified.h nping.h NpingOps.h UDPHeader.h global_structures.h output.h utils.h utils_net.h IPv4Header.h IPv6Header.h ICMPv4Header.h PacketElement.h RawData.h stats.h NpingTargets.h NpingTarget.h DataLinkLayerElement.h EthernetHeader.h ARPHeader.h EchoHeader.h EchoServer.h EchoClient.h ProbeMode.h NEPContext.h Crypto.h PacketDiff.h

OBJS = ArgParser.o NetworkLayerElement.o PacketElement.o common.o common_modified.o nping.o RawData.o UDPHeader.o  NpingOps.o TCPHeader.o utils.o utils_net.o IPv4Header.o ICMPv4Header.o IPv6Header.o output.o TransportLayerElement.o stats.o NpingTargets.o NpingTarget.o EthernetHeader.o ARPHeader.o EchoHeader.o EchoServer.o EchoClient.o ProbeMode.o NEPContext.o Crypto.o PacketDiff.o 

export DOCS2DIST = leet-nping-ascii-art.txt nping.1 nping-man.html

export MISC2DIST = config.guess config.sub configure configure.ac Makefile.in TODO nping_config.h.in CHANGELOG COPYING


# %.o : %.cc -- nope this is a GNU extension
.cc.o:
	$(CXX) -c $(CPPFLAGS) $(CXXFLAGS) $< -o $@

all:
	$(MAKE) $(TARGET)

$(TARGET): $(NBASEDIR)/libnbase.a $(NSOCKDIR)/src/libnsock.a ../libnetutil/libnetutil.a $(OBJS)
	@echo Compiling nping
	rm -f $@
	$(CXX) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)
	@echo Nping compiled successfully!


# Make a statically compiled binary for portability between distributions
static:
	$(MAKE) STATIC=-static

debug:
	$(MAKE) DBGFLAGS="-O0 -g -pg -ftest-coverage -fprofile-arcs"

# CALL THIS FROM ONE COMPUTER AND CHECK IN RESULTS BEFORE DOING ANYONE
# DOES A MAKE RELEASE
prerelease:
	cd $(NPINGDEVDIR) && $(MAKE) prerelease

# Generate the Nping distribution tarball
generate-tarball:
	cd nping-priv && ./create_tarballs.sh

# Update the web site. WARNING: "make generate-tarball" must have been called first.
web:	
	cd nping-priv && ./update_web.sh

clean: my_clean 

my_clean:
	rm -f dependencies.mk makefile.dep
	rm -f $(OBJS) $(TARGET) config.cache
debugclean:
	rm -f *.gcov *.gcda *.gcno gmon.out

distclean: my_clean my_distclean

my_distclean:
	rm -f Makefile Makefile.bak makefile.dep nping_config.h stamp-h stamp-h.in \
	         config.cache config.log config.status

install-nping: $(TARGET)
	$(INSTALL) -d $(DESTDIR)$(bindir) $(DESTDIR)$(mandir)/man1
	$(INSTALL) -c -m 755 nping $(DESTDIR)$(bindir)/nping
# Use strip -x to avoid stripping dynamically loaded NSE functions. See
# http://seclists.org/nmap-dev/2007/q4/0272.html.
	$(STRIP) -x $(DESTDIR)$(bindir)/nping
	$(INSTALL) -c -m 644 docs/$(TARGET).1 $(DESTDIR)$(mandir)/man1/



install: install-nping
	@echo "NPING SUCCESSFULLY INSTALLED"

uninstall: uninstall-nping 

uninstall-nping:
	rm -f $(DESTDIR)$(bindir)/$(TARGET)
	rm -f $(DESTDIR)$(mandir)/man1/$(TARGET).1

${srcdir}/configure: configure.ac 
	cd ${srcdir} && autoconf

## autoheader might not change config.h.in, so touch a stamp file.
#${srcdir}/config.h.in: stamp-h.in
#${srcdir}/stamp-h.in: configure.ac acconfig.h \
#	config.h.top config.h.bot
#	cd ${srcdir} && autoheader
#	echo timestamp > ${srcdir}/stamp-h.in
#
#config.h: stamp-h
#stamp-h: config.h.in config.status
#	./config.status

Makefile: Makefile.in config.status
	./config.status

config.status: configure
	./config.status --recheck

makefile.dep:
	$(CXX) -MM $(CPPFLAGS) $(SRCS) > $@
include makefile.dep
