CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_calculations=constants.o main.o readerData.o writerData.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o readerData_SharedTypes_0.o
OBJ_calculations=$(patsubst %,$(ODIR)/%,$(_OBJ_calculations))


all: removeStuffFromLibraries clean calculations 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean calculations
calculations: $(OBJ_calculations)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
