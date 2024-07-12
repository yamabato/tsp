#ifndef _UTIL_H_
#define _UTIL_H_

int round_off(double);
int calc_euc_dis(double, double, double, double);
int calc_geo_dis(double, double, double, double);
int calc_dis_sum(struct Map *, int *);
void conv_route(struct Map *, int *, int *, int);

#endif
