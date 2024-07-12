#ifndef _COMMON_H_
#define _COMMON_H_

#define MAX_VERTEX_N 255
#define TIME_LIMIT 1.111453

#define PI 3.141592
// M_PI = 3.141593

// 各頂点を表す
struct Vertex {
  double x;              // x座標
  double y;              // y座標
  int dis[MAX_VERTEX_N]; // 他頂点との距離
};

// 与えられた都市群の情報を保持
struct Map {
  int data_num;             // データの番号
  char *fname;              // データのファイル名
  int is_euc;               // ユークリッド距離か否か
  int best;                 // 最適値
  struct Vertex *vertex_arr;// 頂点群
  int vertex_n;             // 頂点数
  int *route;               // 経路
  int distance;             // 経路長の合計
};

#endif
