#include ./Make.defines

CC      = gcc
CFLAGS += -I./
CFLAGS += -g -O2 -Wall
CFLAGS += -D_REENTRANT
LIBS   += -Wl,-R,./ -L./ 
LIBS   += -lrt -lpthread 

OBJS = \
       yhpath.o\
	   main.o

TARGET = out

EXECUTE = ${CC} ${CFLAGS} $(LIBS) $^ -o $@ 

.c.o: 
	$(CC) -c $(CFLAGS) $(LIBS) $< -o $@

all: ${TARGET}

${TARGET}: $(OBJS)
	$(EXECUTE)

remake:
	make clean && make

clean:
		rm -f ${TARGET} ${OBJS} 
