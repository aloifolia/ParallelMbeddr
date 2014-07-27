CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_shared_types_complex=shared_types_complex.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o shared_types_complex_SharedTypes_0.o
OBJ_shared_types_complex=$(patsubst %,$(ODIR)/%,$(_OBJ_shared_types_complex))


all: removeStuffFromLibraries clean shared_types_complex 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean shared_types_complex
shared_types_complex: $(OBJ_shared_types_complex)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
