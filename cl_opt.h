#ifndef _CL_OPT_H_
#define _CL_OPT_H_

struct CLOpt {
  int progress;
  int data_num;
  int perf_mode;
};

void parse_options(int, char **, struct CLOpt *);

#endif
