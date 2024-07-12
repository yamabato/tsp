#include <stdio.h>
#include <stdlib.h>

#include "common.h"
#include "util.h"
#include "show.h"
#include "farthest_insertion.h"
#include "genetic_algorithm.h"

void genetic_algorithm(struct Map *map) {
  struct Gene gene_arr[GENE_COUNT];
  struct Gene next_gene_arr[GENE_COUNT];

  for (int i=0; i<GENE_COUNT; i++) {
    gene_arr[i].route = calloc(MAX_VERTEX_N+1, sizeof(int));
    farthest_insertion(map, gene_arr[i].route);
    gene_arr[i].dist = calc_dis_sum(map, gene_arr[i].route);
  }

  qsort(gene_arr, GENE_COUNT, sizeof(struct Gene), cmp_gene);

  next_gene_arr[0] = gene_arr[0];

  for (int i=0; i<GENE_COUNT; i++) {
    printf("%d\n", next_gene_arr[i].dist);
  }

  map->route = gene_arr[0].route;
  show_path(map);

}

int cmp_gene(const void *g1, const void *g2) {
  int g1_dist, g2_dist;

  g1_dist = ((struct Gene *)g1)->dist;
  g2_dist = ((struct Gene *)g2)->dist;

  if (g1_dist > g2_dist) { return 1; }
  else if (g1_dist < g2_dist) { return -1; }
  return 0;
}
