CC=gcc
CFLAGS=-std=c99
ODIR=./bin
_OBJ_FirstTasks=task.o
OBJ_FirstTasks=$(patsubst %,$(ODIR)/%,$(_OBJ_FirstTasks))


all: removeStuffFromLibraries clean FirstTasks 
.PHONY: removeStuffFromLibraries all clean
removeStuffFromLibraries: 
	
$(ODIR)/%.o: %.c
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
$(ODIR)/%.o: %.cpp
		mkdir -p $(ODIR) 
	$(CC) $(CFLAGS)   -c -o $@ $<  
debug: CFLAGS +=-g
debug: clean FirstTasks
FirstTasks: $(OBJ_FirstTasks)
	$(CC) $(CFLAGS) -o $@ $^   
clean: 
	rm -rf $(ODIR) 
