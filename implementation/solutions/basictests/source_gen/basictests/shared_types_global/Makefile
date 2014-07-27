CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_shared_types_global=shared_types_global.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o shared_types_global_SharedTypes_0.o
OBJ_shared_types_global=$(patsubst %,$(ODIR)/%,$(_OBJ_shared_types_global))


all: removeStuffFromLibraries clean shared_types_global 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean shared_types_global
shared_types_global: $(OBJ_shared_types_global)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
