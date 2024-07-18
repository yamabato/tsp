#ifndef _KRUSKAL_H_
#define _KRUSKAL_H_

void make_set(int *, int *, int);
int set_union(int *, int *, int, int);
int find_set(int *, int);
void link(int *, int *, int, int);
void kruskal(int, int, struct Edge*, int *, int *);
int build_kruskal_tree(struct Map *, int *, struct Edge *, int *);
void christofides(struct Map*, int *);

int cmp_edge(const void *, const void *);

#endif
