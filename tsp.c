#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "common.h"
#include "read.h"
#include "util.h"
#include "farthest_insertion.h"
#include "local_search.h"
#include "show.h"

int main() {
  clock_t start_t, end_t;
  double utime;

  struct Map map;
  // char fname[128] = "test.tsp";
  char fname[128] = "./DataFiles/Euclidean/eil51.tsp";

  map.vertex_arr = calloc(MAX_VERTEX_N, sizeof(struct Vertex));
  map.route = calloc(MAX_VERTEX_N+1, sizeof(int));

  printf("file: %s\n", fname);
  read_file(&map, fname);
  calc_each_euc_dis(&map);

  start_t = clock();

  farthest_insertion(&map);

  end_t = clock();

  utime = (double)(end_t - start_t) / CLOCKS_PER_SEC;

  show_path(&map);
  printf("\n");

  local_search(&map);
  show_path(&map);
  printf("\n");

  printf("time: %lf\n", utime);
  printf("start: %ld\n", start_t);
  printf("  end: %ld\n", end_t);

  return 0;
}
