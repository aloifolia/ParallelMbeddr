CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_testSync=testSync.o testSync2.o GenericTaskDeclarations.o GenericSyncDeclarations.o
OBJ_testSync=$(patsubst %,$(ODIR)/%,$(_OBJ_testSync))


all: removeStuffFromLibraries clean testSync 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean testSync
testSync: $(OBJ_testSync)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
