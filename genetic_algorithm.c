#include <stdio.h>
#include <stdlib.h>

#include "common.h"
#include "util.h"
#include "show.h"
#include "farthest_insertion.h"
#include "genetic_algorithm.h"

void genetic_algorithm(struct Map *map) {
  int route_arr[GENE_COUNT][MAX_VERTEX_N+1];

  for (int i=0; i<GENE_COUNT; i++) {
    farthest_insertion(map, route_arr[i]);
  }

  map->route = route_arr[6];
  show_path(map);

  for (int i=0; i<GENE_COUNT; i++) {
    printf("%d\n", calc_dis_sum(map, route_arr[i]));
  }

  map->route = route_arr[0];
  show_path(map);
}
