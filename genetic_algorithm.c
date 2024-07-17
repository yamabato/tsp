#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "common.h"
#include "util.h"
#include "show.h"
#include "farthest_insertion.h"
#include "genetic_algorithm.h"

void genetic_algorithm(struct Map *map) {
  struct Gene gene_arr[GENE_COUNT];

  for (int i=0; i<GENE_COUNT; i++) {
    gene_arr[i].route = calloc(MAX_VERTEX_N+1, sizeof(int));
    farthest_insertion(map, gene_arr[i].route);
    gene_arr[i].dist = calc_dis_sum(map, gene_arr[i].route);
  }

  generate_next_gen(map, gene_arr);

  qsort(gene_arr, GENE_COUNT, sizeof(struct Gene), cmp_gene);

  memcpy(map->route, gene_arr[0].route, sizeof(int)*(MAX_VERTEX_N+1));
}

void generate_next_gen(struct Map *map, struct Gene *gene_arr) {
  struct Gene next_gene_arr[GENE_COUNT];
  for (int i=0; i<GENE_COUNT; i++) {
    next_gene_arr[i].route = calloc(MAX_VERTEX_N+1, sizeof(int));
  }

  qsort(gene_arr, GENE_COUNT, sizeof(struct Gene), cmp_gene);

  memcpy(next_gene_arr[0].route, gene_arr[0].route, sizeof(int)*(MAX_VERTEX_N+1));
  memcpy(next_gene_arr[1].route, gene_arr[1].route, sizeof(int)*(MAX_VERTEX_N+1));
  memcpy(next_gene_arr[2].route, gene_arr[2].route, sizeof(int)*(MAX_VERTEX_N+1));
  memcpy(next_gene_arr[3].route, gene_arr[8].route, sizeof(int)*(MAX_VERTEX_N+1));
  memcpy(next_gene_arr[4].route, gene_arr[9].route, sizeof(int)*(MAX_VERTEX_N+1));
  memcpy(next_gene_arr[5].route, gene_arr[rand()%GENE_COUNT].route, sizeof(int)*(MAX_VERTEX_N+1));
  memcpy(next_gene_arr[6].route, gene_arr[rand()%GENE_COUNT].route, sizeof(int)*(MAX_VERTEX_N+1));
  memcpy(next_gene_arr[7].route, gene_arr[7].route, sizeof(int)*(MAX_VERTEX_N+1));
  memcpy(next_gene_arr[8].route, gene_arr[8].route, sizeof(int)*(MAX_VERTEX_N+1));
  memcpy(next_gene_arr[9].route, gene_arr[9].route, sizeof(int)*(MAX_VERTEX_N+1));

  for (int i=0; i<5; i++) {
    partial_crossover(map, &next_gene_arr[7], &next_gene_arr[1]);
    partial_crossover(map, &next_gene_arr[8], &next_gene_arr[2]);
    partial_crossover(map, &next_gene_arr[9], &next_gene_arr[0]);
  }

  for (int i=0; i<GENE_COUNT; i++) {
    memcpy(gene_arr[i].route, next_gene_arr[i].route, sizeof(int)*(MAX_VERTEX_N+1));
  }
}

void partial_crossover(struct Map *map, struct Gene *g1, struct Gene *g2) {
  int pos = rand() % (map->vertex_n-1) + 1;
  g1->route[pos] = g2->route[pos];
}

int cmp_gene(const void *g1, const void *g2) {
  int g1_dist, g2_dist;

  g1_dist = ((struct Gene *)g1)->dist;
  g2_dist = ((struct Gene *)g2)->dist;

  if (g1_dist > g2_dist) { return 1; }
  else if (g1_dist < g2_dist) { return -1; }
  return 0;
}
