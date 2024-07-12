#include <math.h>

#include "common.h"
#include "util.h"

int round_off(double x) {
  return (int)(x+0.5);
}

// ユークリッド距離を計算
int calc_euc_dis(double x1, double y1, double x2, double y2) {
  double xd = x1 - x2;
  double yd = y1 - y2;
  return round_off(sqrt(xd * xd + yd * yd));
}

// 地理的距離を計算
int calc_geo_dis(double x1, double y1, double x2, double y2) {
  int deg;
  double min;
  double lat1, longi1;
  double lat2, longi2;
  double q1, q2, q3;
  double tmp;
  double RRR = 6378.388;

  deg = round_off(x1);
  min = x1 - (double)deg;
  lat1 = PI * (deg + 5.0 * min / 3.0) / 180.0;
  deg = round_off(y1);
  min = y1 - (double)deg;
  longi1 = PI * (deg + 5.0 * min / 3.0) / 180.0; 

  deg = round_off(x2);
  min = x2 - (double)deg;
  lat2 = PI * (deg + 5.0 * min / 3.0) / 180.0;
  deg = round_off(y2);
  min = y2 - (double)deg;
  longi2 = PI * (deg + 5.0 * min / 3.0) / 180.0; 

  q1 = cos(longi1 - longi2);
  q2 = cos(lat1 - lat2);
  q3 = cos(lat1 + lat2);

  tmp = RRR * acos(0.5 * ((1.0+q1)*q2 - (1.0-q1)*q3)) + 1.0;

  return (int)tmp;
}

// 経路の距離を計算
void calc_dis_sum(struct Map *map) {
  int v1, v2;
  long int sum = 0;

  for (int i=1; i<map->vertex_n+2; i++) {
    v1 = map->route[i];
    v2 = map->route[i+1];
    sum += map->vertex_arr[v1].dis[v2];
  }

  map->distance = sum;
}

void conv_route(struct Map *map, int *next_v, int sv) {
  int v = sv;
  for (int i=1; i<map->vertex_n+2; i++) {
    map->route[i] = v;
    v = next_v[v];
  }
}
