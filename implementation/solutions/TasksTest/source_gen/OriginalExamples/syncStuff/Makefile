CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_syncStuff=syncStuff.o GenericTaskDeclarations.o GenericSharedDeclarations.o
OBJ_syncStuff=$(patsubst %,$(ODIR)/%,$(_OBJ_syncStuff))


all: removeStuffFromLibraries clean syncStuff 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean syncStuff
syncStuff: $(OBJ_syncStuff)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
