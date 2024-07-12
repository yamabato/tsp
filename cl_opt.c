#include <stdlib.h>
#include <unistd.h>

#include "cl_opt.h"

void parse_options(int argc, char **argv, struct CLOpt *cl_opt) {
  int opt;

  cl_opt->progress = 0;
  cl_opt->data_num = 0;
  cl_opt->perf_mode = 0;

  opterr = 0;
  while ((opt=getopt(argc, argv, "prd:")) != -1) {
    switch (opt) {
      case 'r':
        cl_opt->progress = 1;
        break;
      case 'd':
        cl_opt->data_num = atoi(optarg);
        break;
      case 'p':
        cl_opt->perf_mode = 1;
        break;
      default:
        break;
    }
  }
}
