/**
 * SPO256 -AL2 
 * samples from https://www.cpcwiki.eu/index.php/SP0256_Allophones
 * 
 * Pico code Derek Woodroffe 4/5/2022
 *
 */

//pico SDK includes
#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/pwm.h"
#include "pico/multicore.h"

//program includes
#include "allophones.c"
#include "allophoneDefs.h"

//must be pins on the same slice
#define soundIO1 11
#define soundIO2 12

#define PIN_SP_A1            0
#define PIN_SP_A2            1
#define PIN_SP_A3            2
#define PIN_SP_A4            3
#define PIN_SP_A5            4
#define PIN_SP_A6            5
#define PIN_SP_A7            6
#define PIN_SP_A8            7
#define PIN_SP_ALD           8
#define PIN_SP_SE            9
#define PIN_SP_SBY_RES_N    10
#define PIN_SP_DIGITAL_OUT  11
#define PIN_SP_RESET_N      12
#define PIN_SP_LRQ_N        13
#define PIN_SP_SBY          14


#define rate 90

uint PWMslice;

void PlayAllophone(int al)
{
  int b,s;
  uint8_t v;
  
  s=allophonesizeCorrected[al];
  //printf("\nstart %d", s);
  
  for(b=0;b<s;b++)
    {
      v=allophoneindex[al][b]; //get delta value
      //printf("\n%d", v);
      
      pwm_set_both_levels(PWMslice,v,v);
      volatile int x;

      for(x=0; x<125*9; x++)
	{
	}
      
      //sleep_us(rate);
      //sleep_ms(2);
    }

  //printf("\nend");
}

void PlayAllophones(uint8_t *alist,int listlength)
{
  int a;

  printf("\nStart allophones");
  for(a=0; a<listlength; a++)
    {
      PlayAllophone(alist[a]);
    }

  pwm_set_both_levels(PWMslice, 0x0, 0x0);
}

void SetPWM(void)
{
  gpio_init(soundIO1);
  gpio_set_dir(soundIO1,GPIO_OUT);
  gpio_set_function(soundIO1, GPIO_FUNC_PWM);
  
  //  gpio_init(soundIO2);
  //gpio_set_dir(soundIO2,GPIO_OUT);
  //gpio_set_function(soundIO2, GPIO_FUNC_PWM);
  
  PWMslice=pwm_gpio_to_slice_num (soundIO1);
  
  pwm_set_clkdiv(PWMslice,16);
  pwm_set_both_levels(PWMslice,0x80,0x80);
  
  pwm_set_output_polarity(PWMslice,true,false);
  
  pwm_set_wrap (PWMslice, 256);
  pwm_set_enabled(PWMslice,true);
  
}

void test_gpios(void)
{
  gpio_init(soundIO1);
  gpio_set_dir(soundIO1,GPIO_OUT);

  while(1)
    {
      gpio_put(soundIO1, 0);
      sleep_ms(2);
      gpio_put(soundIO1, 1);
      sleep_ms(2);
      
    }
  

}

void test_gpios2(void)
{
  SetPWM();
  
  while(1)
    {
      pwm_set_both_levels(PWMslice,0x10,0x10);
      //      gpio_put(soundIO1, 0);
      sleep_ms(2);
      pwm_set_both_levels(PWMslice,0xA0,0xA0);
      //gpio_put(soundIO1, 1);
      sleep_ms(2);
      
    }
}

void core1_main(void)
{
  uint8_t alist[] ={AR,PA5,PP,EH,IY,PA5,TT2,WH,EH,EH,NN1,PA2,PA3,TT2,IY,PA5,FF,OR,PA3,TT2,IY,PA5};

  //  printf("\nCore1 started");

  int last_ald = gpio_get(PIN_SP_ALD);
  int ald;

  //  irq_set_mask_enabled(0xffffffff, false);

      
  while(0)
    {
      printf("\nPlaying %d", sizeof(alist));
      
      PlayAllophones(alist,sizeof(alist));


    }

  while(1)
    {
      // Sit in loop waiting for allophone selection
      ald = gpio_get(PIN_SP_ALD);

      if( (ald == 0) && (last_ald == 1) )
	{
	  //	  printf("\nNeg edge");

	  // When we get a neg edge we lath the address lines in
	  int gpio_states = (sio_hw->gpio_in) & 0x3F;

	  //printf("\nAllophone %d", gpio_states);

	  gpio_put(PIN_SP_LRQ_N, 1);
	  gpio_put(PIN_SP_SBY, 0);

	  PlayAllophone(gpio_states);
	  
	  gpio_put(PIN_SP_LRQ_N, 0);
	  gpio_put(PIN_SP_SBY, 1);
	}

      last_ald = ald;
    }

  while(1)
    {
      printf("\nPlaying %d", sizeof(alist));
      
      PlayAllophones(alist,sizeof(alist));

      sleep_ms(3000);

    }
}

void set_gpio_input(int gpio)
{
  gpio_init(gpio);
  gpio_set_dir(gpio, GPIO_IN);
}

int main()
{
  ////////////////////////////////////////////////////////////////////////////////
  //
  // Overclock as needed
  //
  ////////////////////////////////////////////////////////////////////////////////
#if 0  
  #define OVERCLOCK 135000
  //#define OVERCLOCK 200000
  //#define OVERCLOCK 270000
  //#define OVERCLOCK 360000
  
#if OVERCLOCK > 270000
  /* Above this speed needs increased voltage */
  vreg_set_voltage(VREG_VOLTAGE_1_20);
  sleep_ms(1000);
#endif

  
  /* Overclock */
  set_sys_clock_khz( OVERCLOCK, 1 );
#endif
  
  stdio_init_all();
  //  sleep_ms(2000);

  printf("\n*********************");
  printf("\n*  SP0256 Emulator  *");
  printf("\n*********************");
  
  set_gpio_input(PIN_SP_A1);
  set_gpio_input(PIN_SP_A2);
  set_gpio_input(PIN_SP_A3);
  set_gpio_input(PIN_SP_A4);
  set_gpio_input(PIN_SP_A5);
  set_gpio_input(PIN_SP_A6);
  set_gpio_input(PIN_SP_A7);
  set_gpio_input(PIN_SP_A8);
  
  
  gpio_init(PIN_SP_LRQ_N);
  gpio_set_dir(PIN_SP_LRQ_N, GPIO_OUT);
  gpio_put(PIN_SP_LRQ_N, 0);

  gpio_init(PIN_SP_SBY);
  gpio_set_dir(PIN_SP_SBY, GPIO_OUT);
  gpio_put(PIN_SP_SBY, 1);
  
  SetPWM();
  //test_gpios2();
  
  uint8_t alist[] ={HH,EH,LL,AX,OW,PA5,WW,OR,LL,DD1};

#if 1
  multicore_launch_core1(core1_main);
#else
    
  while(1)
    {
      printf("\nPlaying %d", sizeof(alist));
      
      PlayAllophones(alist,sizeof(alist));

      sleep_ms(3000);

    }
  
#endif
  while(1)
    {
    }
  
}
