#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "common.h"
#include "data.h"

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

int IS_EUC[DATA_COUNT] = {
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  0, 0, 0, 0, 0, 0,
};

char EUC_PATH[32] = "./DataFiles/Euclidean/";
char GEO_PATH[32] = "./DataFiles/Geographical/";

void set_data_info(struct Map *map) {
  int data_num = map->data_num;
  int is_euc = 0;

  if (data_num < 0 || data_num > DATA_COUNT - 1) {
    printf("data num %d is out of range.\n", data_num);
    exit(1);
  }

  is_euc = IS_EUC[data_num];

  if (is_euc) { strcpy(map->fname, EUC_PATH); }
  else { strcpy(map->fname, GEO_PATH); }

  strcat(map->fname, DATA_FNAMES[data_num]);

  map->best = DATA_BEST[data_num];
}
