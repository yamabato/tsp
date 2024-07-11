#include <stdio.h>

#include "common.h"
#include "util.h"
#include "read.h"

// ファイルの読み込み
void read_file(struct Map *map, char *fname) {
  int vertex_n;  // 頂点数
  int vn;        // 頂点番号
  double vx, vy; // 頂点のx, y座標

  FILE *fp;

  fp = fopen(fname, "r");
  fscanf(fp, "%d", &vertex_n);

  map->vertex_n = vertex_n;

  for (int i=0; i<vertex_n; i++) {
    fscanf(fp, "%d %lf %lf", &vn, &vx, &vy);
    map->vertex_arr[vn].x = vx;
    map->vertex_arr[vn].y = vy;
  }
}

// ユークリッド距離を計算
void calc_each_euc_dis(struct Map *map) {
  struct Vertex v1, v2;
  for (int i=0; i<map->vertex_n; i++) {
    v1 = map->vertex_arr[i];
    for (int j=0; j<map->vertex_n; j++) {
      v2 = map->vertex_arr[j];
      map->vertex_arr[i].dis[j] = calc_euc_dis(v1.x, v1.y, v2.x, v2.y);
    }
  }
}
