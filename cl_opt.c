#include <stdlib.h>
#include <unistd.h>

#include "cl_opt.h"

void parse_options(int argc, char **argv, struct CLOpt *cl_opt) {
  int opt;

  cl_opt->progress = 0;
  cl_opt->data_num = 0;

  opterr = 0;
  while ((opt=getopt(argc, argv, "pd:")) != -1) {
    switch (opt) {
      case 'p':
        cl_opt->progress = 1;
        break;
      case 'd':
        cl_opt->data_num = atoi(optarg);
        break;
      default:
        break;
    }
  }
}
