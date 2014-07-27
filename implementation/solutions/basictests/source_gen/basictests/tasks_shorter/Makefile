CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_tasks_shorter=tasks_shorter.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o
OBJ_tasks_shorter=$(patsubst %,$(ODIR)/%,$(_OBJ_tasks_shorter))


all: removeStuffFromLibraries clean tasks_shorter 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean tasks_shorter
tasks_shorter: $(OBJ_tasks_shorter)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
