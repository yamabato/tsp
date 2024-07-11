#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Farthest Insertionで解を構成
void farthest_insertion(struct Map *map, char *path) {
  srand((unsigned int)time(NULL));
  printf("%d\n", rand() % map->vertex_n);
}
