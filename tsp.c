#include <stdio.h>
#include <stdlib.h>

#include "common.h"
#include "read.h"

int main() {
  struct Map map;
  char path 255;
  char fname[128] = "./DataFiles/Euclidean/eil51.tsp";

  map.vertex_arr = calloc(MAX_VERTEX_N, sizeof(struct Vertex));
  read_file(&map, fname);
  calc_each_euc_dis(&map);

  farthest_insertion(&map, path);

  return 0;
}
