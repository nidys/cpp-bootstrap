#http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/
#https://stackoverflow.com/questions/2908057/can-i-compile-all-cpp-files-in-src-to-os-in-obj-then-link-to-binary-in

OUTPUT=main.out
TEST_OUTPUT=test
CC=g++

IDIR=include
ODIR=obj
LDIR=lib
SDIR=src
GMOCK_DIR=lib/googletest/googlemock/make/

LIBS=-lm
CPPFLAGS=-I$(IDIR) -std=c++14 -pthread
TEST_CPPFLAGS=-Itest/include -I$(IDIR) -g -Wall -Wextra -pthread

_INOBJ=gmock-all.o gtest-all.o gmock_main.o
INOBJ = $(patsubst %,$(GMOCK_DIR)/%,$(_INOBJ))

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

.PHONY: $(TEST_OUTPUT)

$(TEST_OUTPUT): obj/hello.o
	$(CC) $(TEST_CPPFLAGS) $(INOBJ) obj/hello.o test/test_hello.cpp -o unittest
	./unittest


.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ $(OUTPUT)

