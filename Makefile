COPTS =  -O2
LIBPATH = -L/usr/X11/lib -L./mikmod/lib
LIBS =  -lmikmod -lmmio -lX11 -lXext -lm
DEFINES = -DUSE_MIKMOD -DUSE_X11 -DHAVE_GETTIMEOFDAY -DHAVE_USLEEP
INCLUDES = -I. -I./mikmod/include

manic: manic.o emu_util.o
	gcc $(COPTS) manic.o emu_util.o -o manic $(LIBPATH) $(LIBS)

manic.o: mm-demo.c   mm-final.c  mm-keydf.c  mm-pal.c    mm-tplat.c manic.c     mm-end.c    mm-font.c   mm-keys2.c  mm-piano.c  mm-vrobo.c mm-air.c    mm-eug2.c   mm-ftsml.c  mm-kong.c   mm-pkeys.c  mm-willy.c mm-blocx.c  mm-exits.c  mm-game.c   mm-load.c   mm-sky.c    mm-win.c mm-conv.c   mm-fant.c   mm-house.c  mm-map2.c   mm-sun.c mm-core.c   mm-fill.c   mm-hrobo.c  mm-over.c   mm-swit.c emu_util.h
	gcc $(COPTS) $(DEFINES) $(INCLUDES) -c manic.c

emu_util.o: emu_util.c emu_util.h
	gcc $(COPTS) $(DEFINES) $(INCLUDES) -c emu_util.c
