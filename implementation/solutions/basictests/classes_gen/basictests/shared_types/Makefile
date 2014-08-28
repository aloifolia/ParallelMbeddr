CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_shared_types=shared_types.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o shared_types_SharedTypes_0.o
OBJ_shared_types=$(patsubst %,$(ODIR)/%,$(_OBJ_shared_types))


all: removeStuffFromLibraries clean shared_types 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean shared_types
shared_types: $(OBJ_shared_types)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
