#include "util.h"

// ユークリッド距離を計算
int calc_euc_dis(double x1, double y1, double x2, double y2) {
  double xd = x1 - x2;
  double yd = y1 - y2;
  return (int)(xd * xd + yd * yd);
}
