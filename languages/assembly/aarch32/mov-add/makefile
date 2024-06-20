AS = arm-linaro-linux-gnueabihf-as
LD = arm-linaro-linux-gnueabihf-ld

all: dir mov_add.o
	$(LD) -o bin/mov_add bin/mov_add.o

dir:
	mkdir -p bin/

mov_add.o: mov_add.s
	$(AS) --gstabs -o bin/mov_add.o mov_add.s

clean:
	rm -rf bin/