#ifndef _LOCAL_SEARCH_H_
#define _LOCAL_SEARCH_H_

void local_search(struct Map *);
void two_opt(struct Map *);
void three_opt(struct Map *);
void or_one_opt(struct Map *);
void or_two_opt(struct Map *);

void swap_vertex(struct Map *, int, int);
void reverse_path(struct Map *, int, int);

#endif
