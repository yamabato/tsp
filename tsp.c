#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "common.h"
#include "data.h"
#include "read.h"
#include "util.h"
#include "farthest_insertion.h"
#include "local_search.h"
#include "show.h"

int main() {
  clock_t start_t, end_t;
  double utime;

  struct Map map;

  int data_num = 0;
  int prev_dis;

  map.fname = calloc(128, sizeof(char));
  map.vertex_arr = calloc(MAX_VERTEX_N, sizeof(struct Vertex));
  map.route = calloc(MAX_VERTEX_N+1, sizeof(int));

  map.data_num = data_num;

  set_data_info(&map);

  printf("file: %s\n", map.fname);
  read_file(&map);
  calc_each_dis(&map);

  start_t = clock();

  farthest_insertion(&map);

  printf("\n");
  show_path(&map);

  prev_dis = map.distance;
  while (1) {
    printf("\n");
    local_search(&map);
    show_path(&map);
    if (prev_dis <= map.distance) { break; }
    prev_dis = map.distance;

    if ((clock() - start_t)/CLOCKS_PER_SEC >= TIME_LIMIT) { break; }
  }

  end_t = clock();
  utime = (double)(end_t - start_t) / CLOCKS_PER_SEC;

  printf("END\n\n");

  printf("time: %lf\n", utime);
  printf("start: %ld\n", start_t);
  printf("  end: %ld\n", end_t);

  return 0;
}
