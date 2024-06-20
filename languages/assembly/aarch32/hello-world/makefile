AS = arm-linaro-linux-gnueabihf-as
LD = arm-linaro-linux-gnueabihf-ld

all: dir hello_world.o
	$(LD) -o bin/hello_world bin/hello_world.o

dir:
	mkdir -p bin/

hello_world.o: hello_world.s
	$(AS) --gstabs -o bin/hello_world.o hello_world.s

clean:
	rm -rf bin/