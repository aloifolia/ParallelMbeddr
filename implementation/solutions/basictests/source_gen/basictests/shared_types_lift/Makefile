CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_shared_types_lift=shared_types_lift.o provider1.o provider2.o user.o GenericTaskDeclarations.o GenericSharedDeclarations.o GenericSyncDeclarations.o provider1_SharedTypes_0.o user_SharedTypes_0.o
OBJ_shared_types_lift=$(patsubst %,$(ODIR)/%,$(_OBJ_shared_types_lift))


all: removeStuffFromLibraries clean shared_types_lift 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean shared_types_lift
shared_types_lift: $(OBJ_shared_types_lift)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
