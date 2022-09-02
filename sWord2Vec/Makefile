CC = gcc
CFLAGS = -lm -Ofast -march=native -funroll-loops

all: word2vec distance

word2vec : word2vec.c
	$(CC) word2vec.c -o word2vec $(CFLAGS)
distance : distance.c
	$(CC) distance.c -o distance $(CFLAGS)

clean:
	rm -rf word2vec distance
