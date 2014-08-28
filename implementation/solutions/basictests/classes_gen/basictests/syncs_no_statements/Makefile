CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_syncs_no_statements=syncs_no_statements.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o
OBJ_syncs_no_statements=$(patsubst %,$(ODIR)/%,$(_OBJ_syncs_no_statements))


all: removeStuffFromLibraries clean syncs_no_statements 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean syncs_no_statements
syncs_no_statements: $(OBJ_syncs_no_statements)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
