AS = arm-linaro-linux-gnueabihf-as
LD = arm-linaro-linux-gnueabihf-ld

all: dir add_adc.o
	$(LD) -o bin/add_adc bin/add_adc.o

dir:
	mkdir -p bin/

add_adc.o: add_adc.s
	$(AS) --gstabs -o bin/add_adc.o add_adc.s

clean:
	rm -rf bin/