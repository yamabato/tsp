#include <stdlib.h>
#include <stdio.h>
#include <limits.h>

#include "common.h"
#include "kruskal.h"

void euler(struct Map *map, int *route, int sv) {
  int en;
  int v;
  int v1, v2;
  struct Edge edges[MAX_VERTEX_N*MAX_VERTEX_N];
  int T[MAX_VERTEX_N*MAX_VERTEX_N];

  int edge_matrix[MAX_VERTEX_N][MAX_VERTEX_N];
  int discover[MAX_VERTEX_N];
  int x = 0;
  int vn = 0;
  int dm = INT_MAX;
  int t = 0;

  for (int i=0; i<MAX_VERTEX_N; i++) {
    discover[i] = -1;
    for (int j=0; j<MAX_VERTEX_N; j++) {
      edge_matrix[i][j] = 0;
    }
  }

  en = build_kruskal_tree(map, route, edges, T);

  for (int i=0; i<en; i++) {
    if (T[i]) {
      v1 = edges[i].v1;
      v2 = edges[i].v2;
      edge_matrix[v1][v2] = 1;
      edge_matrix[v2][v1] = 1;
    }
  }

  v = sv - 1;
  discover[v] = 0;
  route[0] = v+1;
  while (x < map->vertex_n - 1) {
    dm = INT_MAX;
    for (int j=0; j<map->vertex_n; j++) {
      if (edge_matrix[v][j] && dm > discover[j]) {
        dm = discover[j];
        vn = j;
      }
    }
    if (discover[vn] == -1) { route[++x] = vn+1; }
    discover[vn] = ++t;
    v = vn;
  }

  route[++x] = sv;
}

int build_kruskal_tree(struct Map *map, int *route, struct Edge *edges, int *T) {
  int en = 0;

  int ednum[MAX_VERTEX_N*MAX_VERTEX_N];
  int vertex_n = map->vertex_n;

  for (int i=0; i<vertex_n; i++) {
    for (int j=i+1; j<vertex_n; j++) {
      edges[en].v1 = i;
      edges[en].v2 = j;
      edges[en].weight = map->vertex_arr[i].dis[j];
      edges[en].e = en;
      en++;
    }
  }

  qsort(edges, en, sizeof(struct Edge), cmp_edge);

  for (int i=0; i<en; i++) { ednum[i] = edges[i].e; }
  kruskal(vertex_n, en, edges, ednum, T);

  return en;
}

// xを唯一の頂点とする根付き木を生成
void make_set(int *p, int *rank, int x) {
  p[x] = x;
  rank[x] = 0;
}

// x, yを含む部分集合の和集合を作り、代表を選ぶ
int set_union(int *p, int *rank, int x, int y) {
  int u, v;
  u = find_set(p, x);
  v = find_set(p, y);

  if (u != v) {
    link(p, rank, u, v);
    return 1;
  }
  return 0;
}

// xが含まれる根付き木の根を返す
int find_set(int *p, int x) {
  int y, z, r;

  y = x;
  // 根に到達するまで繰り返す
  while (y != p[y]) {
    y = p[y];
  }
  r = y;

  // パス圧縮
  y = x;
  while (y != r) {
    z = p[y];
    p[y] = r;
    y = z;
  }

  return r;
}

// x, yを根とする根付き木を統合する
void link(int *p, int *rank, int x, int y) {
  // 木が高くなりすぎないよう、rankによって統合
  if (rank[x] > rank[y]) { p[y] = x; }
  else {
    p[x] = y;
  }

  if (rank[x] == rank[y]) { rank[y] = rank[y] + 1; }
}

// クラスカル法
void kruskal(int n, int m, struct Edge *edge, int *ednum, int *T) {
  int p[MAX_VERTEX_N*MAX_VERTEX_N], rank[MAX_VERTEX_N*MAX_VERTEX_N]; // 親、ランクを格納する
  int u, v; // 頂点
  int x;

  // Tを初期化
  for (int i=0; i<m; i++) { T[i] = 0; }

  // 辺iが唯一の頂点の木をつくる
  for (int i=0; i<m; i++) { make_set(p, rank, i); }

  // 重みの小さい順に、ループを作らない限り追加
  for (int i=0; i<m; i++) {
    x = ednum[i];
    u = edge[x].v1;
    v = edge[x].v2;
    T[x] = set_union(p, rank, u, v);
  }
}

int cmp_edge(const void *e1, const void *e2) {
  int e1_weight, e2_weight;

  e1_weight = ((struct Edge *)e1)->weight;
  e2_weight = ((struct Edge *)e2)->weight;

  if (e1_weight > e2_weight) { return 1; }
  else if (e1_weight < e2_weight) { return -1; }
  return 0;
}
