#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "common.h"
#include "util.h"
#include "local_search.h"

void local_search(struct Map *map) {
  // if (map->vertex_n <= 3) { return; }

  /* or_one_opt(map); */
  /* or_two_opt(map); */
  /* two_opt(map); */
  two_opt(map);
  or_one_opt(map);
  two_opt(map);
  or_two_opt(map);
  two_opt(map);
}

void two_opt(struct Map *map) {
  int d1, d2;
  int ds1, ds2;
  int v11, v12;
  int v21, v22;
  int tmp;

  for (int i=0; i<map->vertex_n-3; i++) {
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

        for (int k=0; k<(j-i-1)/2; k++) {
          tmp = map->route[j-1-k];
          map->route[j-1-k] = map->route[i+2+k];
          map->route[i+2+k] = tmp;
        }
      }
    }
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
