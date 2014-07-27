CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_syncs=syncs.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o
OBJ_syncs=$(patsubst %,$(ODIR)/%,$(_OBJ_syncs))


all: removeStuffFromLibraries clean syncs 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean syncs
syncs: $(OBJ_syncs)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
