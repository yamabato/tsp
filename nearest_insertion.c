#include <stdio.h>
#include <stdlib.h>

#include "common.h"
#include "util.h"
#include "nearest_insertion.h"

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
    ad = 2147483647;
    av = -1;
    for (int j=1; j<vertex_n+1; j++) {
      if (!added[j]) { continue; }
      for (int k=1; k<vertex_n+1; k++) {
        if (!added[k] && vertex_arr[j].dis[k] < ad) { ad=vertex_arr[j].dis[k]; av=k; }
      }
    }
    added[av] = 1;

    nd = 2147483647;
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
