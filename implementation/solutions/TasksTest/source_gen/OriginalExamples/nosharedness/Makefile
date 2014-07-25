CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_sdf=first.o second.o
OBJ_sdf=$(patsubst %,$(ODIR)/%,$(_OBJ_sdf))


all: removeStuffFromLibraries clean sdf 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean sdf
sdf: $(OBJ_sdf)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
