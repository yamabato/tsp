#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "common.h"
#include "util.h"
#include "local_search.h"

void local_search(struct Map *map) {
  if (map->vertex_n <= 3) { return; }

  two_opt(map);
}

void two_opt(struct Map *map) {
  int d1, d2;
  int ds1, ds2;
  int v11, v12;
  int v21, v22;

  for (int i=1; i<map->vertex_n-1; i++) {
    for (int j=i+2; j<map->vertex_n+1; j++) {
      v11 = i;
      v12 = map->route[i];
      v21 = j;
      v22 = map->route[j];

      d1 = map->vertex_arr[v11].dis[v12];
      d2 = map->vertex_arr[v21].dis[v22];
      ds1 = map->vertex_arr[v11].dis[v21];
      ds2 = map->vertex_arr[v12].dis[v22];

      if (d1+d2 > ds1+ds2 && v11 != v21 && v12 != v22) {
        map->route[i] = v21;
        map->route[v12] = v22;
      }
    }
  }
}
