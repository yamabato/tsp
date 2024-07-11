#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

#include "common.h"
#include "farthest_insertion.h"

// Farthest Insertionで解を構成
void farthest_insertion(struct Map *map, int *path) {
  struct Vertex *vertex_arr;
  int *dis_arr;
  int nd, nv;
  int nv1, nv2;
  int nv1_dis, nv2_dis;
  int fd, fv; // farthest distance, vertex
  int sv;
  int added[MAX_VERTEX_N+1];
  int vertex_n = map->vertex_n;

  vertex_arr = map->vertex_arr;

  for (int i=1; i<vertex_n+1; i++) {
    added[i] = 0;
    path[i] = -1;
  }

  srand((unsigned int)time(NULL));
  sv = rand() % vertex_n + 1;
  sv = 1;
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

    nd = 2147483647;
    nv = -1;
    dis_arr = vertex_arr[fv].dis;
    for (int j=1; j<vertex_n+1; j++) {
      if (added[j] && fv != j && dis_arr[j] < nd) { nd=dis_arr[j]; nv=j; }
    }
    nv1 = path[nv];
    nv2 = -1;
    for (int j=1; j<vertex_n+1; j++) {
      if (path[j] == nv) { nv2=j; break; }
    }

    if (nv1 == -1 && nv2 == -1) { path[nv]=fv; path[fv]=sv; }
    else if (nv1 == -1) { path[nv2]=fv; path[fv]=nv; }
    else if (nv2 == -1) { path[nv]=fv; path[fv]=nv1; }
    else {
      nv1_dis = vertex_arr[fv].dis[nv1] - vertex_arr[nv].dis[nv1];
      nv2_dis = vertex_arr[fv].dis[nv2] - vertex_arr[nv].dis[nv2];
      if (nv1_dis < nv2_dis) { path[nv]=fv; path[fv]=nv1; }
      else { path[nv2]=fv; path[fv]=nv; }
    }
  }
}
