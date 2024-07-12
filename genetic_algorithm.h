#ifndef _GA_H_
#define _GA_H_

#define GENE_COUNT 10

struct Gene {
  int *route;
  int dist;
};

void genetic_algorithm(struct Map *);
int cmp_gene(const void *, const void *);

#endif
