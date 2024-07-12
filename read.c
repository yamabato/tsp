#include <stdio.h>

#include "common.h"
#include "util.h"
#include "read.h"

// ファイルの読み込み
void read_file(struct Map *map) {
  int vertex_n;  // 頂点数
  int vn;        // 頂点番号
  double vx, vy; // 頂点のx, y座標

  FILE *fp;

  fp = fopen(map->fname, "r");
  fscanf(fp, "%d", &vertex_n);

  map->vertex_n = vertex_n;

  for (int i=0; i<vertex_n; i++) {
    fscanf(fp, "%d %lf %lf", &vn, &vx, &vy);
    map->vertex_arr[vn].x = vx;
    map->vertex_arr[vn].y = vy;
  }
}

void calc_each_dis(struct Map *map) {
  if (map->is_euc) { calc_each_euc_dis(map); }
  else { calc_each_geo_dis(map); }
}

// ユークリッド距離を計算
void calc_each_euc_dis(struct Map *map) {
  struct Vertex v1, v2;
  for (int i=0; i<map->vertex_n+1; i++) {
    v1 = map->vertex_arr[i];
    for (int j=0; j<map->vertex_n+1; j++) {
      v2 = map->vertex_arr[j];
      map->vertex_arr[i].dis[j] = calc_euc_dis(v1.x, v1.y, v2.x, v2.y);
    }
  }
}

// 地理的距離を計算
void calc_each_geo_dis(struct Map *map) {
  struct Vertex v1, v2;
  for (int i=0; i<map->vertex_n+1; i++) {
    v1 = map->vertex_arr[i];
    for (int j=0; j<map->vertex_n+1; j++) {
      v2 = map->vertex_arr[j];
      map->vertex_arr[i].dis[j] = calc_geo_dis(v1.x, v1.y, v2.x, v2.y);
    }
  }
}
