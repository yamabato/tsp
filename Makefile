TARGET	 = tsp
SRCS 		 = data.c farthest_insertion.c local_search.c read.c show.c tsp.c util.c cl_opt.c genetic_algorithm.c
CC 			 = gcc
CFLAGS 	 = -Wall -g

clean:
	rm tsp

rm_gif:
	rm path*.gif

build: $(SRCS)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRCS) -lm

run:
	make build
	./$(TARGET)

visualize:
	make build
	./$(TARGET) | python3 visualize.py
