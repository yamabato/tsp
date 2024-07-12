#include <stdlib.h>
#include <unistd.h>

#include "cl_opt.h"

void parse_options(int argc, char **argv, struct CLOpt *cl_opt) {
  int opt;

  opterr = 0;
  while ((opt=getopt(argc, argv, "d:")) != -1) {
    switch (opt) {
      case 'd':
        cl_opt->data_num = atoi(optarg);
        break;
      default:
        break;
    }
  }
}
