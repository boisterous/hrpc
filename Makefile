AR = ar
CC = gcc
CFLAGS = -g -Wall -fPIC 

OUTPUT := ./libeasy.a

INCS_HEAD := ./thread ./packet ./io ./util ./memory ./include  ./packet/http ./compact

LIB_PATH := 
LIBS := -lpthread -lrt

SOURCE := $(wildcard  ./memory/*.c ./packet/*.c ./thread/*.c ./io/*.c ./util/*.c ./packet/http/*.c)
OBJS := $(patsubst %.c, %.o, $(SOURCE))
#LIBOBJS := $(filter-out nameserver_main.o , $(OBJS))


%.o:%.c
	$(CC) $(CFLAGS) $(addprefix -I,$(INCS_HEAD)) -c $< -o $@

all:$(OUTPUT)


./libeasy.a : $(OBJS) 
	$(AR) rcs  $@ $^

clean:
	-rm -f $(OBJS)
	-rm -f $(OUTPUT)
