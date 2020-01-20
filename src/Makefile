#
#
#

# Compiler Options
CC := ghdl
CC_FLAGS :=

# Target files
VHDL_SRC := $(wildcard *.vhd)
VHDL_OBJ := $(VHDL_SRC:.vhd=.o)
VHDL_CSRC := $(VHDL_SRC:.vhd=.cc)

.PHONY = ALL
ALL: $(VHDL_OBJ)

%.o: %.vhd
	$(CC) -a $< $(CC_FLAGS)

.PHONY = clear
clean:
	rm -vrf $(VHDL_OBJ) $(VHDL_CSRC)
