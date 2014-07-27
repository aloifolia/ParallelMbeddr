CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_syncs_stop=syncs_stop.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o
OBJ_syncs_stop=$(patsubst %,$(ODIR)/%,$(_OBJ_syncs_stop))


all: removeStuffFromLibraries clean syncs_stop 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean syncs_stop
syncs_stop: $(OBJ_syncs_stop)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
