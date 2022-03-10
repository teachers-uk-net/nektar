#To generate FmIndex.py FmIndex_wrap.c FmIndex_wrap.cxx

#swig -tcl -c++ FmIndex.i
#swig -python -c++ FmIndex.i

rm -r *.o

g++ -g -Wall -fPIC -c util.cc BaseRep.cc SeqIter.cc StrDict.cc SeqStore.cc SeqRange.cc MultiRange.cc FmIndex.cc FmIndex_wrap.cxx -Ipath/to/python-2.7/bin/ -lz -std=c++0x -fopenmp -lm
g++ -shared util.o BaseRep.o SeqIter.o SeqStore.o SeqRange.o StrDict.o FmIndex.o FmIndex_wrap.o -o _FmIndex.so -lz -std=c++0x -fopenmp -lm
