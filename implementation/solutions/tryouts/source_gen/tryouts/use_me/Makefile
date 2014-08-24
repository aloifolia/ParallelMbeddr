CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_use_me=use_me.o
OBJ_use_me=$(patsubst %,$(ODIR)/%,$(_OBJ_use_me))


all: removeStuffFromLibraries clean use_me 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean use_me
use_me: $(OBJ_use_me)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
