#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "common.h"
#include "cl_opt.h"
#include "data.h"
#include "read.h"
#include "util.h"
#include "farthest_insertion.h"
#include "local_search.h"
#include "genetic_algorithm.h"
#include "show.h"

int main(int argc, char **argv) {
  clock_t start_t, end_t; // 処理の開始、終了クロック
  double utime;           // 実行時間

  struct CLOpt cl_opt;
  struct Map map; // 都市群の情報を保持する構造体

  // int data_num = 0; // データの番号
  int prev_dis;     // 最適化前の距離

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
  farthest_insertion(&map, map.route);
  if (!cl_opt.perf_mode) { printf("\n"); }

  map.distance = calc_dis_sum(&map, map.route);
  prev_dis = map.distance;
  while (1) {
    if (cl_opt.progress && !cl_opt.perf_mode) { show_path(&map); printf("\n"); }
    local_search(&map);
    map.distance = calc_dis_sum(&map, map.route);
    if (prev_dis == map.distance) { break; }
    prev_dis = map.distance;

    if ((clock() - start_t)/CLOCKS_PER_SEC >= TIME_LIMIT) { break; }
  }

  // genetic_algorithm(&map);

  end_t = clock();
  utime = (double)(end_t - start_t) / CLOCKS_PER_SEC;

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
