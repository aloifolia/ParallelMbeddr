CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_quicksort=quicksort.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o
OBJ_quicksort=$(patsubst %,$(ODIR)/%,$(_OBJ_quicksort))


all: removeStuffFromLibraries clean quicksort 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean quicksort
quicksort: $(OBJ_quicksort)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
