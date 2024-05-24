CXX         = clang++ -std=c++17
WARN        = -Wall -Wextra -Wcast-align -Wno-sign-compare -Wno-write-strings -Wno-parentheses -Wfloat-equal -pedantic

INCLUDEPATH = -I$(LIB)/include

FLAGS       = -DDEBUG -g -O0
LIBLINK     = $(OBJECTS) -lpthread

# Libs
LIB         = ./lib
INCLUDES    = $(wildcard $(LIB)/include/*.hpp)
SOURCES     = $(wildcard $(LIB)/src/*.cpp)
OBJECTS     = $(SOURCES:$(LIB)/src/%.cpp=$(LIB)/obj/%.o)

# Test
TESTDIR     = ./test
TEST        = $(wildcard $(TESTDIR)/src/*.cpp)
MKTEST      = $(TEST:$(TESTDIR)/src/%.cpp=$(TESTDIR)/bin/%)

# Main
MAINDIR     = ./main
MAIN        = $(wildcard $(MAINDIR)/src/*.cpp)
MKMAIN      = $(MAIN:$(MAINDIR)/src/%.cpp=$(MAINDIR)/bin/%)

all: main test

$(LIB)/obj/%.o : $(LIB)/src/%.cpp
	$(CXX) $(FLAGS) $(INCLUDEPATH) -c $< -o $@

$(TESTDIR)/bin/%: $(TESTDIR)/src/%.cpp $(OBJECTS)
	$(CXX) $(FLAGS) $(INCLUDEPATH) $< -o $@ $(LIBLINK)

test: $(TEST) $(INCLUDES) $(SOURCES) $(MKTEST)

$(MAINDIR)/bin/%: $(MAINDIR)/src/%.cpp $(OBJECTS)
	$(CXX) $(FLAGS) $(INCLUDEPATH) $< -o $@ $(LIBLINK)

main: $(MAIN) $(INCLUDES) $(SOURCES) $(MKMAIN)

.PHONY:
clean:
	$(RM) $(MKTEST) $(MKMAIN)

