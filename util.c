#include <math.h>

#include "common.h"
#include "util.h"

// ユークリッド距離を計算
int calc_euc_dis(double x1, double y1, double x2, double y2) {
  double xd = x1 - x2;
  double yd = y1 - y2;
  return (int)(sqrt(xd * xd + yd * yd)+0.5);
}

// 経路の距離を計算
int calc_dis_sum(struct Map *map, int *path) {
  int v = 1;
  long int sum = 0;

  for (int i=1; i<map->vertex_n+1; i++) {
    sum += map->vertex_arr[v].dis[path[v]];
    v=path[v];
  }

  return sum;
}
