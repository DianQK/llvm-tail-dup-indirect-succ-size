#include <stdio.h>
#include <stdlib.h>

int src(void) {
  return -1;
}

extern int f1(unsigned int *b);

int main(int argc, char **argv) {
  if(argc != 2) {
    printf("Usage: %s <integer>\n", argv[0]);
    return 1;
  }
  int num = atoi(argv[1]);
  int r = argc;
  unsigned int b[] = { 0, 0, 0 };
  for (int i = 0; i < num; i++) {
    r += f1(b);
  }
  return r;
}
