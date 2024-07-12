#include <stdio.h>

#include "common.h"
#include "util.h"
#include "show.h"

void show_data_info(struct Map *map) {
  printf("file: %s\n", map->fname);
  printf("type: %s\n", map->is_euc?"Euclidean":"Geographical");
  printf("best: %d\n", map->best);
}

void show_path(struct Map *map) {
  printf("path: ");
  for (int i=1; i<map->vertex_n+2; i++) {
    printf("%d ", map->route[i]);
  }
  printf("\n");

  calc_dis_sum(map);
  printf("distance: %d\n", map->distance);
  printf("efficiency: %.2f\n", map->distance/(double)map->best*100);
}

void show_performance(struct Map *map) {
  calc_dis_sum(map);
  printf("%d\n", map->distance);
  printf("%.2f\n", map->distance/(double)map->best*100);
}
