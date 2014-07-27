CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_syncs_no_resources=syncs_no_resources.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o
OBJ_syncs_no_resources=$(patsubst %,$(ODIR)/%,$(_OBJ_syncs_no_resources))


all: removeStuffFromLibraries clean syncs_no_resources 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean syncs_no_resources
syncs_no_resources: $(OBJ_syncs_no_resources)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
