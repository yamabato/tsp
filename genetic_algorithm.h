#ifndef _GA_H_
#define _GA_H_

#define GENE_COUNT 10

struct Gene {
  int *route;
  int dist;
};

void genetic_algorithm(struct Map *);
void generate_next_gen(struct Map*, struct Gene *);
void partial_crossover(struct Map *, struct Gene *, struct Gene *);

int cmp_gene(const void *, const void *);

#endif
