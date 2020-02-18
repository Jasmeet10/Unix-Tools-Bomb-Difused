all: defuseTheBomb checkmem clean

defuseTheBomb: bomb.o defuseMe.o hidden.o
	gcc bomb.c defuseMe.c hidden.o -o defuseTheBomb

checkmem:
	gcc program3B.c -o program3
	valgrind ./program3
clean:
	chmod +x trash.sh
	./trash.sh *.o
