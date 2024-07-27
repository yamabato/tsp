#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <limits.h>

#include "common.h"
#include "cl_opt.h"
#include "data.h"
#include "read.h"
#include "util.h"
#include "farthest_insertion.h"
#include "random_insertion.h"
#include "nearest_insertion.h"
#include "kruskal.h"
#include "greedy.h"
#include "local_search.h"
#include "genetic_algorithm.h"
#include "show.h"

int solve(struct Map *map, int *route_best, void f(struct Map *, int *, int), double limit) {
  clock_t start_t = clock();
  int best = INT_MAX;
  int sv;
  int prev_dis;

  while(1) {
    sv = rand() % map->vertex_n + 1;
    f(map, map->route, sv);

    show_path(map);
    exit(0);

    map->distance = calc_dis_sum(map, map->route);
    prev_dis = map->distance;
    while (1) {
      local_search(map);
      map->distance = calc_dis_sum(map, map->route);
      if (prev_dis == map->distance) { break; }
      prev_dis = map->distance;

      if ((clock() - start_t)/(double)CLOCKS_PER_SEC >= limit) { break; }
    }
    if (map->distance < best) {
      best = map->distance;
      memcpy(route_best, map->route, sizeof(int)*(MAX_VERTEX_N+1));
    }
    if ((clock() - start_t)/(double)CLOCKS_PER_SEC >= limit) { break; }
  }

  return best;
}

int main(int argc, char **argv) {
  clock_t start_t, end_t; // 処理の開始、終了クロック
  double utime;           // 実行時間

  struct CLOpt cl_opt;
  struct Map map; // 都市群の情報を保持する構造体
  int gr_route_best[MAX_VERTEX_N+1];
  int kr_route_best[MAX_VERTEX_N+1];
  int gr_best = INT_MAX;
  int kr_best = INT_MAX;

  srand((unsigned int)time(NULL));

  // Map構造体における配列の領域を確保
  map.fname = calloc(128, sizeof(char));
  map.vertex_arr = calloc(MAX_VERTEX_N+1, sizeof(struct Vertex));
  map.route = calloc(MAX_VERTEX_N+1, sizeof(int));

  parse_options(argc, argv, &cl_opt);

  // データ番号を設定
  map.data_num = cl_opt.data_num;

  // データの情報を設定
  set_data_info(&map);

  // データ情報を表示
  if (!cl_opt.perf_mode) { show_data_info(&map); }

  // ファイルを読み込み
  read_file(&map);
  calc_each_dis(&map);

  start_t = clock(); // 開始時のクロック

  // 最遠挿入法で解を構成
  if (!cl_opt.perf_mode) { printf("\n"); }

  gr_best = solve(&map, gr_route_best, random_insertion, TIME_LIMIT*0.48);
  kr_best = solve(&map, kr_route_best, euler, TIME_LIMIT*0.48);

  if (gr_best < kr_best) { memcpy(map.route, gr_route_best, sizeof(gr_route_best)); }
  else { memcpy(map.route, kr_route_best, sizeof(kr_route_best)); }

  end_t = clock();
  utime = (end_t - start_t) / (double)CLOCKS_PER_SEC;

  if (!cl_opt.perf_mode) {
    show_path(&map);
    printf("FIN\n\n");
  }

  if (!cl_opt.perf_mode) {
    printf("time: %lf / %lf\n", utime, TIME_LIMIT);
    printf("start: %ld\n", start_t);
    printf("  end: %ld\n", end_t);
  }

  if (cl_opt.perf_mode) {
    show_performance(&map);
  }

  return 0;
}
