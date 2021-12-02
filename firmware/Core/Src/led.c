#include "led.h"

void led_set(enum Led led, enum LedState state) {
		GPIO_TypeDef * port;
		switch (led) {
		case LED1:
		case LED2:
    case LED3:
			port = GPIOC;
			break;

		case LED0:
			port = GPIOF;
			break;


		case STATUS:
    default:
			port = GPIOA;
			break;
		}

  GPIO_InitTypeDef GPIO_InitStruct = {0};
  GPIO_InitStruct.Pin = led;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
	switch (state) {
	case STATE_OFF:
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    break;
	default:
		GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_WritePin(port, led, state);
    break;
	}
  HAL_GPIO_Init(port, &GPIO_InitStruct);
}
