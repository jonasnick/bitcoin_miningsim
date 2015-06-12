BOOST_LIBS=-lboost_program_options -lboost_system -lboost_thread -lboost_chrono
CFLAGS=-O2
#CFLAGS=-g -ggdb -DTRACE

scheduler: main.cpp scheduler.cpp
	clang++ -std=c++11 -I/usr/local/include -L/usr/lib $(CFLAGS) -o mining_simulator main.cpp scheduler.cpp $(BOOST_LIBS)
