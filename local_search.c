#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <string.h>

#include "common.h"
#include "util.h"
#include "local_search.h"
#include "show.h"

void local_search(struct Map *map) {
  // if (map->vertex_n <= 3) { return; }

  /* or_one_opt(map); */
  /* or_two_opt(map); */
  /* two_opt(map); */

  two_opt(map);
  return;

  or_one_opt(map);
  or_two_opt(map);
  two_opt(map);
  three_opt(map);
  or_two_opt(map);
  or_one_opt(map);
  three_opt(map);
  two_opt(map);
}

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

        dm = ds1; mn = 0;
        if (ds2 < dm) { dm=ds2; mn=1; }
        if (ds3 < dm) { dm=ds3; mn=2; }
        if (ds4 < dm) { dm=ds4; mn=3; }

        if (dm >= d) { continue; }

        if (mn == 0) {
          continue;
          swap_vertex(map, i+1, j); reverse_path(map, i+2, j-1);
          swap_vertex(map, j+1, k); reverse_path(map, j+2, k-1);
        } else if (mn == 1) {
          continue;
          map->route[i+1] = v22;
          map->route[k] = v21;
          memcpy(path_tmp, &map->route[i+2], sizeof(int)*le1);
          memcpy(&map->route[i+2], &map->route[k-le2], sizeof(int)*le2);
          memcpy(&map->route[k-le1], path_tmp, sizeof(int)*le1);
          map->route[i+2+le2] = v31;
          map->route[i+3+le2] = v12;
        } else if (mn == 2) {
          continue;
          map->route[i+1] = v22;
          map->route[k] = v12;
          memcpy(path_tmp, &map->route[i+2], sizeof(int)*le1);
          memcpy(&map->route[i+2], &map->route[k-le2], sizeof(int)*le2);
          memcpy(&map->route[k-le1], path_tmp, sizeof(int)*le1);
          reverse_path(map, k-le1, k-1);
          map->route[i+2+le2] = v31;
          map->route[i+3+le2] = v21;
        } else {
          continue;
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

void swap_vertex(struct Map *map, int p1, int p2) {
  int tmp;
  tmp = map->route[p1];
  map->route[p1] = map->route[p2];
  map->route[p2] = tmp;
}

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
