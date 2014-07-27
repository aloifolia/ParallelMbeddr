CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_shared_types_destroy=shared_types_destroy.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o
OBJ_shared_types_destroy=$(patsubst %,$(ODIR)/%,$(_OBJ_shared_types_destroy))


all: removeStuffFromLibraries clean shared_types_destroy 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean shared_types_destroy
shared_types_destroy: $(OBJ_shared_types_destroy)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
