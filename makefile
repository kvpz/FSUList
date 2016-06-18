#
# makefile for fsu::List project 1
#

#HOME  = /home/courses/cop4530p/LIB
HOME  = ../../../Documents/CodeFiles
#HOME  = ../../../Code\ files
#TCPP  = $(HOME)/tcpp
TCPP  = $(HOME)/mytcpp
CPP   = $(HOME)/mycpp
TESTS = $(HOME)/tests
PROJ  = .
incpath = -I$(PROJ) -I$(CPP) -I$(TCPP)
CC    = g++ -std=c++11 -Wall -Wextra $(incpath)  
#CC    = clang++ -std=c++11 -Wall -Wextra -I. -I$(CPP) -I$(TCPP)

all: flist.x mlist.x 

flist.x:  $(PROJ)/flist.cpp $(PROJ)/list.h $(TCPP)/list_sort.cpp $(PROJ)/list.cpp
	$(CC) -o flist.x $(PROJ)/flist.cpp

mlist.x:  $(PROJ)/mlist.cpp $(PROJ)/list.h $(TCPP)/list_sort.cpp $(PROJ)/list.cpp
	$(CC) -o mlist.x $(PROJ)/mlist.cpp

fqueue.x:  $(TESTS)/fqueue.cpp $(PROJ)/list.h $(TCPP)/list_sort.cpp $(PROJ)/list.cpp
	$(CC) -o fqueue.x $(TESTS)/fqueue.cpp
