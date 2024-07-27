#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

#include "common.h"
#include "util.h"
#include "random_insertion.h"

void random_insertion(struct Map *map, int *route, int sv) {
  int added[MAX_VERTEX_N];
  int v;

  for (int i=0; i<map->vertex_n+1; i++) {
    added[i] = 0;
  }

  for (int i=0; i<map->vertex_n;) {
    v = (rand() % map->vertex_n) + 1;
    if (added[v]) { continue; }
    map->route[i++] = v;
    added[v] = 1;
  }
  map->route[map->vertex_n] = map->route[0];
}
 
