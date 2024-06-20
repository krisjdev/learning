AS = arm-linaro-linux-gnueabihf-as
LD = arm-linaro-linux-gnueabihf-ld

all: dir mov_examples.o
	$(LD) -o bin/mov_examples bin/mov_examples.o

dir:
	mkdir -p bin/

mov_examples.o: mov_examples.s
	$(AS) --gstabs -o bin/mov_examples.o mov_examples.s

clean:
	rm -rf bin/