#include <stdio.h>

#include "common.h"
#include "util.h"
#include "show.h"

void show_path(struct Map *map, int *path) {
  int v = 1;

  printf("path: ");
  for (int i=1; i<map->vertex_n+2; i++) {
    printf("%d ", v);
    v = path[v];
  }
  printf("\n");

  printf("distance: %d\n", calc_dis_sum(map, path));
}
