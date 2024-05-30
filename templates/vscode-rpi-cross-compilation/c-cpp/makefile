# compilers & flags
# CC = arm-linux-gnueabihf-gcc	# | these compilers do not work with armv6! 
# CXX = arm-linux-gnueabihf-g++	# |	they generate armv7 headers... check with arm-linux-gnueabi-readelf

# to actually be able to compile for arm6l (specifically for the raspberry pi b+ v1.2), download the repo:
# https://github.com/raspberrypi/tools

CC = arm-linaro-linux-gnueabihf-gcc
CXX = arm-linaro-linux-gnueabihf-g++

CFLAGS = -mcpu=arm1176jzf-s -Wall -Wextra -Werror -mfpu=vfp -mfloat-abi=hard -marm -g
CXXFLAGS = $(CFLAGS)
LDFLAGS = -mcpu=arm1176jzf-s -mfpu=vfp -mfloat-abi=hard

# define target and source files
TARGET = bin/a.out
SRCS = helloworld.cpp   # list sources here, c & c++
OBJS = $(patsubst %.c, bin/%.o, $(filter %.c, $(SRCS))) $(patsubst %.cpp, bin/%.o, $(filter %.cpp, $(SRCS)))

DIRS = bin

all: $(DIRS) $(TARGET)

$(DIRS):
	mkdir -p $(DIRS)

$(TARGET): $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $^

bin/%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

bin/%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

# clean up
clean:
	rm -rf bin/
	# rm -f $(OBJS) $(TARGET)
