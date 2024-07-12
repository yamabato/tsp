#ifndef _TEST_FILE_H_
#define _TEST_FILE_H_

#define DATA_COUNT 16

extern char DATA_FNAMES[DATA_COUNT][128];
extern int DATA_BEST[DATA_COUNT];
extern int IS_EUC[DATA_COUNT];
extern char EUC_PATH[32];
extern char GEO_PATH[32];

void set_data_info(struct Map *);

#endif
