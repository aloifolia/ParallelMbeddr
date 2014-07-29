CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_philosophers=philosophers.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o philosophers_SharedTypes_0.o
OBJ_philosophers=$(patsubst %,$(ODIR)/%,$(_OBJ_philosophers))


all: removeStuffFromLibraries clean philosophers 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean philosophers
philosophers: $(OBJ_philosophers)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
