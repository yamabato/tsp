#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

#include "common.h"
#include "util.h"
#include "greedy.h"

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
