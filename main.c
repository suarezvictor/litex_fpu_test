#include <irq.h>
#include <libbase/uart.h>
#include <stdio.h>

volatile float f = .5;
void float_test(void)
{
  int a;
  for(a = 0; a < 5; ++a)
  {
   char b = a  * f;
   putchar(a+'0');
   putchar('=');
   putchar(b+'0');
   putchar('\n');
  }
}

int main(void)
{
#ifdef CONFIG_CPU_HAS_INTERRUPT
	irq_setmask(0);
	irq_setie(1);
#endif
	uart_init();

	float_test();
	return 0;
}
