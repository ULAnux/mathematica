Principal.exe: main.o bpmenu.o
	g++ -g $^ -o $@

bpmenu.o: bpmenu.cpp
	g++ -c -g $^

main.o: main.cpp
	g++ -c -g $^

clean:
	rm *.o *~ core Principal.exe
