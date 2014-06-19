CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_pi=pi.o queue.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o queue_SharedTypes_0.o
OBJ_pi=$(patsubst %,$(ODIR)/%,$(_OBJ_pi))


all: removeStuffFromLibraries clean pi 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean pi
pi: $(OBJ_pi)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
