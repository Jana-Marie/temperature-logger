#ifndef LED_H
#define LED_H

#include "main.h"

enum Led {
  LED0 = LED0_Pin,
  LED1 = LED1_Pin,
  LED2 = LED2_Pin,
  LED3 = LED3_Pin,
  STATUS = LED_STATUS_Pin,
};

enum LedState {
	STATE_OFF = -1,
	STATE_RED = GPIO_PIN_RESET,
	STATE_GREEN = GPIO_PIN_SET,
};

extern void led_set(enum Led, enum LedState);

#endif
