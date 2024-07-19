TARGET	 = tsp
SRCS		 = *.c
CC 			 = gcc
CFLAGS 	 = -Wall -g -mtune=native -march=native -mfpmath=both -O3 -Wno-unused-result

DATANUM  = 1

clean:
	rm tsp

rm_gif:
	rm path*.gif

build: $(SRCS)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRCS) -lm

run:
	make build
	./$(TARGET) -d ${DATANUM}

visualize:
	make build
	./$(TARGET) -r -d ${DATANUM} | python3 visualize.py
