#
# makefile for fsu::List project
#

#HOME  = /home/courses/cop4530p/LIB
HOME  = ~/Documents/CodeFiles
#TCPP  = $(HOME)/tcpp
TCPP  = $(HOME)/mytcpp
#CPP   = $(HOME)/cpp
CPP   = $(HOME)/mycpp
TESTS = $(HOME)/tests
PROJ  = .
CC    = g++ -std=c++11 -Wall -Wextra -I. -I$(CPP) -I$(TCPP)
#CC    = clang++ -std=c++11 -Wall -Wextra -I. -I$(CPP) -I$(TCPP)

all: flist.x mlist.x 

flist.x:  $(TESTS)/flist.cpp $(TCPP)/list.h $(TCPP)/list_sort.cpp $(PROJ)/list.cpp
	$(CC) -oflist.x $(TESTS)/flist.cpp

mlist.x:  $(TESTS)/mlist.cpp $(TCPP)/list.h $(TCPP)/list_sort.cpp $(PROJ)/list.cpp
	$(CC) -omlist.x $(TESTS)/mlist.cpp

fqueue.x:  $(TESTS)/fqueue.cpp $(TCPP)/list.h $(TCPP)/list_sort.cpp $(PROJ)/list.cpp
	$(CC) -ofqueue.x $(TESTS)/fqueue.cpp
