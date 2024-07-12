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

      if (d1+d2 > ds1+ds2) {
        map->route[i+1] = v21;
        map->route[j] = v12;
      }
    }
  }
}
