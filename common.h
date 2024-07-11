#ifndef _COMMON_H_
#define _COMMON_H_

#define MAX_VERTEX_N 254

// 各頂点を表す
struct Vertex {
  double x; // x座標
  double y; // y座標
  int dis[MAX_VERTEX_N]; // 他頂点との距離
};

// 与えられた都市群の情報を保持
struct Map {
  struct Vertex *vertex_arr; // 頂点群
  int vertex_n; // 頂点数
};

#endif
