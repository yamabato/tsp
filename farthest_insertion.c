#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

#include "common.h"
#include "util.h"
#include "farthest_insertion.h"
// Farthest Insertionで解を構成
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
