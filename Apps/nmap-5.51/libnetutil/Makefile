top_srcdir = ..
srcdir = .

CXX = g++
CXXFLAGS = -no-cpp-precomp -g -O2 -Wall -fno-strict-aliasing
CPPFLAGS = -I$(top_srcdir)/liblua -I$(top_srcdir)/libdnet-stripped/include -I$(top_srcdir)/libpcre  -I$(top_srcdir)/nbase -I$(top_srcdir)/nsock/include $(DEFS)
DEFS = -DHAVE_CONFIG_H
DEFS += -D_FORTIFY_SOURCE=2
AR = ar
RANLIB = ranlib

LIBDNETDIR = libdnet-stripped
LIBPCAPDIR = libpcap

TARGET = libnetutil.a

SRCS = $(srcdir)/netutil.cc
OBJS = netutil.o

all: $(TARGET) 

$(TARGET): $(OBJS)
	rm -f $@
	$(AR) cr $@ $(OBJS)
	$(RANLIB) $@

clean:
	rm -f $(OBJS) $(TARGET) 

distclean: clean
	rm -rf Makefile

Makefile: Makefile.in
	cd $(top_srcdir) && ./config.status

.cc.o:
	$(CXX) -c $(CPPFLAGS) $(CXXFLAGS) $< -o $@

makefile.dep:
	$(CXX) -MM $(CPPFLAGS) $(SRCS) > $@
include makefile.dep
