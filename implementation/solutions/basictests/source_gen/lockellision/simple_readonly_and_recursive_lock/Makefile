CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_recursive_lock=readonly_and_recursive_lock.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o
OBJ_recursive_lock=$(patsubst %,$(ODIR)/%,$(_OBJ_recursive_lock))


all: removeStuffFromLibraries clean recursive_lock 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean recursive_lock
recursive_lock: $(OBJ_recursive_lock)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
