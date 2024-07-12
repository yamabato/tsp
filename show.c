#include <stdio.h>

#include "common.h"
#include "util.h"
#include "show.h"

void show_path(struct Map *map) {
  printf("path: ");
  for (int i=1; i<map->vertex_n+2; i++) {
    printf("%d ", map->route[i]);
  }
  printf("\n");

  printf("distance: %d\n", calc_dis_sum(map));
}
