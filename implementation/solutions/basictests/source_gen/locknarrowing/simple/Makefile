CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_simple=no_references.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o
OBJ_simple=$(patsubst %,$(ODIR)/%,$(_OBJ_simple))


all: removeStuffFromLibraries clean simple 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean simple
simple: $(OBJ_simple)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
