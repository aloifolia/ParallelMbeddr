CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_lock_ellision=lock_ellision.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o
OBJ_lock_ellision=$(patsubst %,$(ODIR)/%,$(_OBJ_lock_ellision))


all: removeStuffFromLibraries clean lock_ellision 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean lock_ellision
lock_ellision: $(OBJ_lock_ellision)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
