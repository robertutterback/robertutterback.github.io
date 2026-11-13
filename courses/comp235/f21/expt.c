#include <stdio.h>

double power(double base, int exp) {
  // TODO
}

int main() {
  
  // TESTING HERE, optional

  // END TESTING
  
  printf("Enter base and power as 'base ** power':\n");
  while (1) {
    double base;
    int exp;
    printf("> ");
    int items_scanned = scanf(" %lf ** %d", &base, &exp);

    if (items_scanned == EOF) {
      break;
    }

    if (items_scanned != 2) {
      printf("Invalid input or something went wrong.\n");
      int c;
      while ((c = getchar()) != '\n' && c != EOF)
	;
      continue;
    }


    printf("%lf ** %d = %lf\n", base, exp, power(base, exp));
  }
  return 0;
}
