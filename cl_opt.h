#ifndef _CL_OPT_H_
#define _CL_OPT_H_

struct CLOpt {
  int data_num;
};

void parse_options(int, char **, struct CLOpt *);

#endif
