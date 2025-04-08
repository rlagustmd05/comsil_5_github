
CC = gcc
target = animal_exe
objects = dog.o blackcow.o turtle.o main.o


$(target): $(objects)
	$(CC) -o $(target) $(objects)


dog.o: dog.c
	$(CC) -c -o dog.o dog.c

blackcow.o: blackcow.c
	$(CC) -c -o blackcow.o blackcow.c

turtle.o: turtle.c
	$(CC) -c -o turtle.o turtle.c

main.o: main.c
	$(CC) -c -o main.o main.c


.PHONY: clean
clean:
	rm -f $(target) $(objects)

