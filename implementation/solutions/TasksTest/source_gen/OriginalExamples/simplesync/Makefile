CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_simplesync=simplesync.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o
OBJ_simplesync=$(patsubst %,$(ODIR)/%,$(_OBJ_simplesync))


all: removeStuffFromLibraries clean simplesync 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean simplesync
simplesync: $(OBJ_simplesync)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
