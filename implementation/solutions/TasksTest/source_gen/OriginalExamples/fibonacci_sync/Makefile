CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_fibonacci=fibonacci.o GenericDeclarations.o
OBJ_fibonacci=$(patsubst %,$(ODIR)/%,$(_OBJ_fibonacci))


all: removeStuffFromLibraries clean fibonacci 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean fibonacci
fibonacci: $(OBJ_fibonacci)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
