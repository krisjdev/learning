AS = arm-linaro-linux-gnueabihf-as
LD = arm-linaro-linux-gnueabihf-ld


# https://stackoverflow.com/questions/8035394/gnu-make-how-to-make-conditional-cflags
BUILD = debug

asmflags.debug = --gstabs
asmflags.common = -o
ASMFLAGS = ${asmflags.${BUILD}} ${asmflags.common}

OBJS = printing_ascii.o
TARGET = printing_ascii

$(TARGET): dir $(OBJS)
	$(LD) -o bin/$(TARGET) bin/$(OBJS)

dir:
	mkdir -p bin/

%.o: %.s
	$(AS) --gstabs -o bin/$@ $<

clean:
	rm -rf bin/