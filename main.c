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

#ifdef __NaxRiscv__
#define csr_set(csr, val)                    \
({                                \
    unsigned long __v = (unsigned long)(val);        \
    __asm__ __volatile__ ("csrs " #csr ", %0"        \
                  : : "rK" (__v));            \
})
#endif

int main(void)
{
#ifdef CONFIG_CPU_HAS_INTERRUPT
	irq_setmask(0);
	irq_setie(1);
#endif
	uart_init();

#ifdef __NaxRiscv__
    csr_set(mstatus, (1 << 13));
#endif
	float_test();
	return 0;
}
