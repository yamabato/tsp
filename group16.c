#include <time.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <unistd.h>

/* 定数類の定義 */

// TSPの問題数
#define DATA_COUNT 16
// 最大の頂点数
#define MAX_VERTEX_N 255
// 時間制限
#define TIME_LIMIT 1.111453

// 地理的距離計算に用いる円周率
#define PI 3.141592
// M_PI = 3.141593

/* 構造体の定義 */

// 各頂点を表す
struct Vertex {
  double x;              // x座標
  double y;              // y座標
  int dis[MAX_VERTEX_N]; // 他頂点との距離
};

// 辺の情報
struct Edge {
  int v1;
  int v2;
  int weight;
  int e;
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
                            // 順番に頂点の番号を格納する
  int distance;             // 経路長の合計
};

// 実行時のオプション
struct CLOpt {
  int progress;  // 途中経過を表示(今は効かない)
  int data_num;  // データの番号
  int perf_mode; // パフォーマンスのみ表示
};

/* 関数宣言 */

// cl_opt.h
void parse_options(int, char **, struct CLOpt *);

// data.h
void set_data_info(struct Map *);

// util.h
int round_off(double);
int calc_euc_dis(double, double, double, double);
int calc_geo_dis(double, double, double, double);
int calc_dis_sum(struct Map *, int *);
void conv_route(struct Map *, int *, int *, int);

// greedy.h ( nearest neighbor )
void greedy(struct Map *, int *, int);

// farthest_insertion.h
void farthest_insertion(struct Map *, int *, int);

// nearest_insertion.h
void nearest_insertion(struct Map *, int *, int);

// random_insertion.h
void random_insertion(struct Map *, int *, int);

// kruskal.h
void make_set(int *, int *, int);
int set_union(int *, int *, int, int);
int find_set(int *, int);
void set_link(int *, int *, int, int);
void kruskal(int, int, struct Edge*, int *, int *);
int build_kruskal_tree(struct Map *, int *, struct Edge *, int *);
void euler(struct Map*, int *, int);

int cmp_edge(const void *, const void *);

// local_search.h
void local_search(struct Map *);
void two_opt(struct Map *);
void three_opt(struct Map *);
void or_one_opt(struct Map *);
void or_two_opt(struct Map *);

void swap_vertex(struct Map *, int, int);
void reverse_path(struct Map *, int, int);

// read.h
void read_file(struct Map *);
void calc_each_dis(struct Map *);
void calc_each_euc_dis(struct Map *);
void calc_each_geo_dis(struct Map *);

// show.h
void show_data_info(struct Map *);
void show_path(struct Map *);
void show_performance(struct Map *);

/* TSP問題に関する情報の定義 */

extern char DATA_FNAMES[DATA_COUNT][128]; // 各問題のファイル名
extern int DATA_BEST[DATA_COUNT];         // 各問題の最適値
extern int IS_EUC[DATA_COUNT];            // 各問題の距離の種類
extern char EUC_PATH[32];                 // ユークリッド距離のフォルダパス
extern char GEO_PATH[32];                 // 地理的距離のフォルダパス

char DATA_FNAMES[DATA_COUNT][128] = {
  "ch130.tsp",
  "eil51.tsp",
  "eil101.tsp",
  "kroA100.tsp",
  "kroA150.tsp",
  "kroA200.tsp",
  "pr76.tsp",
  "rat99.tsp",
  "rat195.tsp",
  "st70.tsp",

  "burma14.tsp",
  "ulysses16.tsp",
  "gr96.tsp",
  "gr137.tsp",
  "gr202.tsp",
  "gr229.tsp",
};

int DATA_BEST[DATA_COUNT] = {
  6110,
  426,
  629,
  21282,
  26524,
  29368,
  108159,
  1211,
  2323,
  675,

  3323,
  6859,
  55209,
  69853,
  40160,
  134602,
};

// 1 --- ユークリッド距離 0 --- 地理的距離
int IS_EUC[DATA_COUNT] = {
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  0, 0, 0, 0, 0, 0,
};

char EUC_PATH[32] = "./DataFiles/Euclidean/";
char GEO_PATH[32] = "./DataFiles/Geographical/";

// 各問題の情報を設定する
void set_data_info(struct Map *map) {
  int data_num = map->data_num;

  if (data_num < 0 || data_num > DATA_COUNT - 1) {
    printf("data num %d is out of range.\n", data_num);
    exit(1);
  }

  // 距離の種別を設定
  map->is_euc = IS_EUC[data_num];

  // ファイル名に、ファイルが格納されているフォルダのパスを入れる
  if (map->is_euc) { strcpy(map->fname, EUC_PATH); }
  else { strcpy(map->fname, GEO_PATH); }

  // フォルダに続き、ファイル名を結合
  strcat(map->fname, DATA_FNAMES[data_num]);

  // 最適値もMap構造体に保持させる
  map->best = DATA_BEST[data_num];
}

// 扱っている問題の情報を表示する
void show_data_info(struct Map *map) {
  printf("file: %s\n", map->fname);
  printf("type: %s\n", map->is_euc?"Euclidean":"Geographical");
  printf("best: %d\n", map->best);
}

// 経路を表示する
void show_path(struct Map *map) {
  printf("path: ");
  for (int i=0; i<map->vertex_n+1; i++) {
    printf("%d ", map->route[i]);
  }
  printf("\n");

  map->distance = calc_dis_sum(map, map->route);
  printf("distance: %d\n", map->distance);
  printf("efficiency: %.2f\n", map->distance/(double)map->best*100);
}

// 距離と効率を表示する
void show_performance(struct Map *map) {
  map->distance = calc_dis_sum(map, map->route);
  printf("%d\n", map->distance);
  printf("%.2f\n", map->distance/(double)map->best*100);
}

// オイラーグラフを用いて、初期解を構成
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

  // 各辺を未発見にし、
  // すべての辺を未追加状態にする
  for (int i=0; i<MAX_VERTEX_N; i++) {
    discover[i] = -1;
    for (int j=0; j<MAX_VERTEX_N; j++) {
      edge_matrix[i][j] = 0;
    }
  }

  // クラスカル法で最小全域木作成
  en = build_kruskal_tree(map, route, edges, T);

  for (int i=0; i<en; i++) {
    if (T[i]) {
      v1 = edges[i].v1;
      v2 = edges[i].v2;
      edge_matrix[v1][v2] = 1;
      edge_matrix[v2][v1] = 1;
    }
  }

  // 最小全域木をなぞり、辺がまだ追加されていなければ、経路に追加
  v = sv - 1;
  discover[v] = 0;
  route[0] = v+1;
  while (x < map->vertex_n - 1) {
    // 発見時刻が一番遅い辺に行く(初期値は-1)
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

// クラスカル法で全域木を作成する
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
    set_link(p, rank, u, v);
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
void set_link(int *p, int *rank, int x, int y) {
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

// クラスカル法において、辺の並び替えを行うのに標準関数のqsortを使う
// その際に必要な比較用の関数
int cmp_edge(const void *e1, const void *e2) {
  int e1_weight, e2_weight;

  e1_weight = ((struct Edge *)e1)->weight;
  e2_weight = ((struct Edge *)e2)->weight;

  if (e1_weight > e2_weight) { return 1; }
  else if (e1_weight < e2_weight) { return -1; }
  return 0;
}

// ランダムインサーションによる初期解の構成
void random_insertion(struct Map *map, int *route, int sv) {
  int added[MAX_VERTEX_N];
  int v;

  for (int i=0; i<map->vertex_n+1; i++) {
    added[i] = 0;
  }

  for (int i=0; i<map->vertex_n;) {
    // 適当な頂点を選ぶ
    v = (rand() % map->vertex_n) + 1;
    if (added[v]) { continue; } // 追加済なら飛ばす
    map->route[i++] = v; // 経路に選んだ頂点を追加
    added[v] = 1;
  }
  map->route[map->vertex_n] = map->route[0];
}
 
// nearest neighbor法で解を構成
void greedy(struct Map *map, int *route, int sv) {
  struct Vertex *vertex_arr;
  int *dis_arr;
  int nd, nv;
  int v;
  int added[MAX_VERTEX_N+1];
  int vertex_n = map->vertex_n;

  vertex_arr = map->vertex_arr;
  for (int i=0; i<vertex_n+1; i++) {
    added[i] = 0;
  }

  added[sv] = 1;
  map->route[0] = sv;

  // 今見ている頂点から、一番近い頂点を追加していく
  v = sv;
  for (int i=0; i<vertex_n-1; i++) {
    nd = INT_MAX;
    nv = -1;
    dis_arr = vertex_arr[v].dis;
    for (int j=1; j<vertex_n+1; j++) {
      if (!added[j] && dis_arr[j] < nd) { nd=dis_arr[j]; nv=j; }
    }

    map->route[i+1] = nv;
    added[nv] = 1;
    v = nv;
  }
  map->route[vertex_n] = sv;
}

// nearest insertion法で初期解を構成
void nearest_insertion(struct Map *map, int *route, int sv) {
  struct Vertex *vertex_arr;
  int *dis_arr;
  int nd, nv;
  int nv1, nv2;
  int nv1_dis, nv2_dis;
  int ad, av; // farthest distance, vertex
  int added[MAX_VERTEX_N+1];
  int vertex_n = map->vertex_n;
  int next_v[MAX_VERTEX_N+1];

  vertex_arr = map->vertex_arr;

  for (int i=0; i<vertex_n+1; i++) {
    added[i] = 0;
    next_v[i] = -1;
    next_v[i] = -1;
  }

  added[sv] = 1;

  for(int i=0; i<vertex_n-1; i++) {
    ad = INT_MAX;
    av = -1;
    for (int j=1; j<vertex_n+1; j++) {
      if (!added[j]) { continue; }
      for (int k=1; k<vertex_n+1; k++) {
        if (!added[k] && vertex_arr[j].dis[k] < ad) { ad=vertex_arr[j].dis[k]; av=k; }
      }
    }
    added[av] = 1;

    nd = INT_MAX;
    nv = -1;
    dis_arr = vertex_arr[av].dis;
    for (int j=1; j<vertex_n+1; j++) {
      if (added[j] && av != j && dis_arr[j] < nd) { nd=dis_arr[j]; nv=j; }
    }
    nv1 = next_v[nv];
    nv2 = -1;
    for (int j=1; j<vertex_n+1; j++) {
      if (next_v[j] == nv) { nv2=j; break; }
    }

    if (nv1 == -1 && nv2 == -1) { next_v[nv]=av; next_v[av]=sv; }
    else if (nv1 == -1) { next_v[nv2]=av; next_v[av]=nv; }
    else if (nv2 == -1) { next_v[nv]=av; next_v[av]=nv1; }
    else {
      nv1_dis = vertex_arr[av].dis[nv1] - vertex_arr[nv].dis[nv1];
      nv2_dis = vertex_arr[av].dis[nv2] - vertex_arr[nv].dis[nv2];
      if (nv1_dis < nv2_dis) { next_v[nv]=av; next_v[av]=nv1; }
      else { next_v[nv2]=av; next_v[av]=nv; }
    }
  }

  conv_route(map, route , next_v, sv);
}

// farthest insertion法で初期解を構成
void farthest_insertion(struct Map *map, int *route, int sv) {
  struct Vertex *vertex_arr;
  int *dis_arr;
  int nd, nv;
  int nv1, nv2;
  int nv1_dis, nv2_dis;
  int fd, fv; // farthest distance, vertex
  int added[MAX_VERTEX_N+1];
  int vertex_n = map->vertex_n;
  int next_v[MAX_VERTEX_N+1];

  vertex_arr = map->vertex_arr;

  for (int i=0; i<vertex_n+1; i++) {
    added[i] = 0;
    next_v[i] = -1;
    next_v[i] = -1;
  }
  added[sv] = 1;

  for(int i=0; i<vertex_n-1; i++) {
    fd = -1;
    fv = -1;
    for (int j=1; j<vertex_n+1; j++) {
      if (!added[j]) { continue; }
      for (int k=1; k<vertex_n+1; k++) {
        if (!added[k] && vertex_arr[j].dis[k] > fd) { fd=vertex_arr[j].dis[k]; fv=k; }
      }
    }
    added[fv] = 1;

    nd = INT_MAX;
    nv = -1;
    dis_arr = vertex_arr[fv].dis;
    for (int j=1; j<vertex_n+1; j++) {
      if (added[j] && fv != j && dis_arr[j] < nd) { nd=dis_arr[j]; nv=j; }
    }
    nv1 = next_v[nv];
    nv2 = -1;
    for (int j=1; j<vertex_n+1; j++) {
      if (next_v[j] == nv) { nv2=j; break; }
    }

    if (nv1 == -1 && nv2 == -1) { next_v[nv]=fv; next_v[fv]=sv; }
    else if (nv1 == -1) { next_v[nv2]=fv; next_v[fv]=nv; }
    else if (nv2 == -1) { next_v[nv]=fv; next_v[fv]=nv1; }
    else {
      nv1_dis = vertex_arr[fv].dis[nv1] - vertex_arr[nv].dis[nv1];
      nv2_dis = vertex_arr[fv].dis[nv2] - vertex_arr[nv].dis[nv2];
      if (nv1_dis < nv2_dis) { next_v[nv]=fv; next_v[fv]=nv1; }
      else { next_v[nv2]=fv; next_v[fv]=nv; }
    }
  }

  conv_route(map, route , next_v, sv);
}

// 実行時のコマンドライン引数をパース
void parse_options(int argc, char **argv, struct CLOpt *cl_opt) {
  int opt;

  cl_opt->progress = 0;
  cl_opt->data_num = 0;
  cl_opt->perf_mode = 0;

  opterr = 0;
  while ((opt=getopt(argc, argv, "prd:")) != -1) {
    switch (opt) {
      case 'r':
        cl_opt->progress = 1;
        break;
      case 'd':
        cl_opt->data_num = atoi(optarg);
        break;
      case 'p':
        cl_opt->perf_mode = 1;
        break;
      default:
        break;
    }
  }
}

// 四捨五入
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
int calc_dis_sum(struct Map *map, int *route) {
  int v1, v2;
  int sum = 0;

  for (int i=0; i<map->vertex_n; i++) {
    v1 = route[i];
    v2 = route[i+1];
    sum += map->vertex_arr[v1].dis[v2];
  }

  return sum;
}

// 経路の表現を変換する
// 次の頂点を指す -> 頂点を順に並べる
void conv_route(struct Map * map, int *route, int *next_v, int sv) {
  int v = sv;
  for (int i=0; i<map->vertex_n+1; i++) {
    route[i] = v;
    v = next_v[v];
  }
}

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

// 距離種別に合わせ、距離行列を埋める
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

// 局所最適化
void local_search(struct Map *map) {
  // if (map->vertex_n <= 3) { return; }

  // 良さそうな順番
  or_one_opt(map);
  or_two_opt(map);
  two_opt(map);
  three_opt(map);
  or_two_opt(map);
  or_one_opt(map);
  three_opt(map);
  two_opt(map);
}

// 2-opt法
void two_opt(struct Map *map) {
  int d1, d2;
  int ds1, ds2;
  int v11, v12;
  int v21, v22;
  int tmp;

  for (int i=0; i<map->vertex_n-2; i++) {
    for (int j=i+2; j<map->vertex_n; j++) {
      v11 = map->route[i];
      v12 = map->route[i+1];
      v21 = map->route[j];
      v22 = map->route[j+1];

      d1 = map->vertex_arr[v11].dis[v12];
      d2 = map->vertex_arr[v21].dis[v22];
      ds1 = map->vertex_arr[v11].dis[v21];
      ds2 = map->vertex_arr[v12].dis[v22];

      // 辺を繋ぎ変えたほうが短いなら、繋ぎ変えを行う
      if (d1+d2 > ds1+ds2) {
        map->route[i+1] = v21;
        map->route[j] = v12;

        // 繋ぎ変えた場合、あいだの辺を逆向きに繋ぎ変える
        for (int k=0; k<(j-i-1)/2; k++) {
          tmp = map->route[j-1-k];
          map->route[j-1-k] = map->route[i+2+k];
          map->route[i+2+k] = tmp;
        }
      }
    }
  }
}

// 3-opt
void three_opt(struct Map *map) {
  int d;
  int d1, d2, d3;
  int ds1, ds2, ds3, ds4;

  int v11, v12;
  int v21, v22;
  int v31, v32;

  int le1, le2;

  int path_tmp[MAX_VERTEX_N];

  int mn = -1;
  int dm = INT_MAX;

  for (int i=0; i<map->vertex_n-4; i++) {
    for (int j=i+2; j<map->vertex_n-2; j++) {
      for (int k=j+2; k<map->vertex_n; k++) {
        v11 = map->route[i];
        v12 = map->route[i+1];
        v21 = map->route[j];
        v22 = map->route[j+1];
        v31 = map->route[k];
        v32 = map->route[k+1];

        d1 = map->vertex_arr[v11].dis[v12];
        d2 = map->vertex_arr[v21].dis[v22];
        d3 = map->vertex_arr[v31].dis[v32];

        d = d1 + d2 + d3;

        // 元のつなぎ方
        //        i  i+1 le1 j  j+1 le2 k  k+1
        // s --- v11 v12 E1 v21 v22 E2 v31 v32 --- s
        /*      /-> v12 -- E1 --> v21
         *     /                   |
         *    /                    |
         * v11                     v
         *           v31 <-- E2-- v22
         *  ^         \
         *  |          \
         *  |          |
         *  s          v
         *   \------- v32
         */
        ds1 = map->vertex_arr[v11].dis[v21] + \
              map->vertex_arr[v12].dis[v31] + \
              map->vertex_arr[v22].dis[v32];
        ds2 = map->vertex_arr[v11].dis[v22] + \
              map->vertex_arr[v31].dis[v12] + \
              map->vertex_arr[v21].dis[v32];
        ds3 = map->vertex_arr[v11].dis[v22] + \
              map->vertex_arr[v31].dis[v21] + \
              map->vertex_arr[v12].dis[v32];
        ds4 = map->vertex_arr[v11].dis[v31] + \
              map->vertex_arr[v22].dis[v12] + \
              map->vertex_arr[v21].dis[v32];

        le1 = j - (i+1) - 1;
        le2 = k - (j+1) - 1;

        // 繋ぎ変え方4通りのうち、一番良いものを選ぶ
        dm = ds1; mn = 0;
        if (ds2 < dm) { dm=ds2; mn=1; }
        if (ds3 < dm) { dm=ds3; mn=2; }
        if (ds4 < dm) { dm=ds4; mn=3; }

        // 一番良いものが、もとより長いなら入れ替えない
        if (dm >= d) { continue; }

        // それぞれ繋ぎ変え方の手順が異なる
        if (mn == 0) {
          swap_vertex(map, i+1, j); reverse_path(map, i+2, j-1);
          swap_vertex(map, j+1, k); reverse_path(map, j+2, k-1);
        } else if (mn == 1) {
          // s --- v11 v22 E2 v31 v12 E1 v21 v32 --- s
          map->route[i+1] = v22;
          map->route[k] = v21;
          memcpy(path_tmp, &map->route[i+2], sizeof(int)*le1); // E1をtmpに退避
          memcpy(&map->route[i+2], &map->route[k-le2], sizeof(int)*le2); // E2を移動
          memcpy(&map->route[k-le1], path_tmp, sizeof(int)*le1); // E1を移動
          map->route[i+2+le2] = v31;
          map->route[i+3+le2] = v12;
        } else if (mn == 2) {
          // s --- v11 v22 E2 v31 v21 E1^-1 v12 v32 --- s
          map->route[i+1] = v22;
          map->route[k] = v12;
          memcpy(path_tmp, &map->route[i+2], sizeof(int)*le1);
          memcpy(&map->route[i+2], &map->route[k-le2], sizeof(int)*le2);
          memcpy(&map->route[k-le1], path_tmp, sizeof(int)*le1);
          reverse_path(map, k-le1, k-1);
          map->route[i+2+le2] = v31;
          map->route[i+3+le2] = v21;
        } else {
          // s --- v11 v31 E2^-1 v22 v12 E1 v21 v32 --- s
          map->route[i+1] = v31;
          map->route[k] = v21;
          memcpy(path_tmp, &map->route[i+2], sizeof(int)*le1);
          memcpy(&map->route[i+2], &map->route[k-le2], sizeof(int)*le2);
          memcpy(&map->route[k-le1], path_tmp, sizeof(int)*le1);
          reverse_path(map, i+2, i+1+le2);
          map->route[i+2+le2] = v22;
          map->route[i+3+le2] = v12;
        }
      }
    }
  }
}

// 頂点を入れ替え
void swap_vertex(struct Map *map, int p1, int p2) {
  int tmp;
  tmp = map->route[p1];
  map->route[p1] = map->route[p2];
  map->route[p2] = tmp;
}

// 指定した範囲の辺の向きを逆にする
void reverse_path(struct Map *map, int p1, int p2) {
  int tmp;

  for (int i=0; i<(p2-p1+1)/2; i++) {
    tmp = map->route[p2-i];
    map->route[p2-i] = map->route[p1+i];
    map->route[p1+i] = tmp;
  }
}

/*
 A -           - B
     \ - X - /
 
 C -           - D

 A -           - B
     / - X - \
 C -           - D
*/
void or_one_opt(struct Map *map) {
  int d1, d2;
  int ds1, ds2;

  int v11, v12;
  int v21, v22;
  int vx;

  for (int i=0; i<map->vertex_n-2; i++) {
    for (int j=i+2; j<map->vertex_n; j++) {
      v11 = map->route[i];
      v12 = map->route[i+2];
      v21 = map->route[j];
      v22 = map->route[j+1];
      vx = map->route[i+1];

      d1 = map->vertex_arr[v11].dis[vx] + \
           map->vertex_arr[vx].dis[v12];
      d2 = map->vertex_arr[v21].dis[v22];

      ds1 = map->vertex_arr[v11].dis[v12];
      ds2 = map->vertex_arr[v21].dis[vx] + \
           map->vertex_arr[vx].dis[v22];

      if ((d1 + d2) > (ds1 + ds2)) {
        for (int k=i+1; k<=j; k++) { map->route[k] = map->route[k+1]; }
        map->route[j] = vx;
      }
    }
  }
}

void or_two_opt(struct Map *map) {
  int d1, d2;
  int ds1, ds2;

  int v11, v12;
  int v21, v22;
  int vx, vy;

  for (int i=0; i<map->vertex_n-3; i++) {
    for (int j=i+3; j<map->vertex_n; j++) {
      v11 = map->route[i];
      v12 = map->route[i+3];
      v21 = map->route[j];
      v22 = map->route[j+1];

      vx = map->route[i+1];
      vy = map->route[i+2];

      d1 = map->vertex_arr[v11].dis[vx] + \
           map->vertex_arr[vx].dis[vy]  + \
           map->vertex_arr[vy].dis[v12];
      d2 = map->vertex_arr[v21].dis[v22];

      ds1 = map->vertex_arr[v11].dis[v12];
      ds2 = map->vertex_arr[v21].dis[vx] + \
            map->vertex_arr[vx].dis[vy]  + \
            map->vertex_arr[vy].dis[v22];

      if ((d1 + d2) > (ds1 + ds2)) {
        for (int k=i+1; k<j-1; k++) { map->route[k] = map->route[k+2]; }
        map->route[j-1] = vx;
        map->route[j] = vy;
      }
    }
  }
}

// 指定した初期解構成用の関数を用い、指定時間内で経路を最適化
int solve(struct Map *map, int *route_best, void f(struct Map *, int *, int), double limit) {
  clock_t start_t = clock();
  int best = INT_MAX;
  int sv;
  int prev_dis;

  while(1) {
    // ランダムな初期頂点を選ぶ
    sv = rand() % map->vertex_n + 1;
    // ランダムな始点から、初期解を作る
    f(map, map->route, sv);

    map->distance = calc_dis_sum(map, map->route);
    prev_dis = map->distance;
    while (1) {
      if ((clock() - start_t)/(double)CLOCKS_PER_SEC >= limit) { break; } // 時間切れ
      three_opt(map);
      map->distance = calc_dis_sum(map, map->route);
      if (prev_dis == map->distance) { break; } // 改善されなくなったら終わり
      prev_dis = map->distance;
    }

    while (1) {
      if ((clock() - start_t)/(double)CLOCKS_PER_SEC >= limit) { break; } // 時間切れ
      local_search(map);
      map->distance = calc_dis_sum(map, map->route);
      if (prev_dis == map->distance) { break; } // 改善されなくなったら終わり
      prev_dis = map->distance;
    }

    // より良い結果が得られたら、経路を保存しておく
    if (map->distance < best) {
      best = map->distance;
      memcpy(route_best, map->route, sizeof(int)*(MAX_VERTEX_N+1));
    }
    if ((clock() - start_t)/(double)CLOCKS_PER_SEC >= limit) { break; } // 時間切れ
  }

  return best;
}

int main(int argc, char **argv) {
  clock_t start_t, end_t; // 処理の開始、終了クロック
  double utime;           // 実行時間

  struct CLOpt cl_opt;
  struct Map map; // 都市群の情報を保持する構造体

  int ri_route_best[MAX_VERTEX_N+1];
  int gr_route_best[MAX_VERTEX_N+1];
  int kr_route_best[MAX_VERTEX_N+1];
  int ni_route_best[MAX_VERTEX_N+1];
  int fi_route_best[MAX_VERTEX_N+1];
  int ri_best = INT_MAX;
  int gr_best = INT_MAX;
  int kr_best = INT_MAX;
  int ni_best = INT_MAX;
  int fi_best = INT_MAX;
  int bn = 0;

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

  if (!cl_opt.perf_mode) { printf("\n"); }

  // 各方法で、初期解を構成し改善することを繰り返す
  ri_best = solve(&map, ri_route_best, random_insertion, TIME_LIMIT*0.2);
  gr_best = solve(&map, gr_route_best, greedy, TIME_LIMIT*0.35);
  kr_best = solve(&map, kr_route_best, euler, TIME_LIMIT*0.2);
  /* ni_best = solve(&map, ni_route_best, nearest_insertion, TIME_LIMIT*0.9); */
  fi_best = solve(&map, fi_route_best, farthest_insertion, TIME_LIMIT*0.2);

  // 一番良かった方法を選ぶ
  if (ri_best > gr_best) { bn = 1; }
  if (gr_best > kr_best) { bn = 2; }
  if (gr_best > ni_best) { bn = 3; }
  if (gr_best > fi_best) { bn = 4; }

  // 一番良かった方法のパスをコピー
  if (bn == 0) { memcpy(map.route, ri_route_best, sizeof(ri_route_best)); }
  else if (bn == 1) { memcpy(map.route, gr_route_best, sizeof(gr_route_best)); }
  else if (bn == 2) { memcpy(map.route, kr_route_best, sizeof(kr_route_best)); }
  else if (bn == 3) { memcpy(map.route, ni_route_best, sizeof(ni_route_best)); }
  else { memcpy(map.route, fi_route_best, sizeof(fi_route_best)); }

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
