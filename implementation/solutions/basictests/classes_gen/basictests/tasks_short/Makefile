CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_tasks_short=tasks_short.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o
OBJ_tasks_short=$(patsubst %,$(ODIR)/%,$(_OBJ_tasks_short))


all: removeStuffFromLibraries clean tasks_short 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean tasks_short
tasks_short: $(OBJ_tasks_short)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
