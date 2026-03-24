AS = nasm
ASFLAGS = -f elf64
LD = ld

SRCS = $(wildcard *.asm)
OBJS = $(SRCS:.asm=.o)
TARGETS = $(SRCS:.asm=)

.PHONY: all clean

all: $(TARGETS)

%: %.o
	$(LD) -o $@ $<

%.o: %.asm
	$(AS) $(ASFLAGS) -o $@ $<

clean:
	rm -f *.o $(TARGETS)
