#http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/
#https://stackoverflow.com/questions/2908057/can-i-compile-all-cpp-files-in-src-to-os-in-obj-then-link-to-binary-in

OUTPUT=main.out
CC=g++

IDIR =include
CPPFLAGS=-I$(IDIR) -std=c++14 -pthread

ODIR=obj
LDIR=lib
SDIR=src

LIBS=-lm

$(shell mkdir -p obj)

_DEPS = hello.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = hello.o main.o 
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: $(SDIR)/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CPPFLAGS)

$(OUTPUT): $(OBJ)
	$(CC) -o $@ $^ $(CPPFLAGS) $(LIBS)
	./$(OUTPUT)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ $(OUTPUT)
