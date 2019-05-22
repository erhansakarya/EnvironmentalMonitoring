#include "envmonitor.h"
#include "ttp223b.h"

#include "SEGGER_SYSVIEW_FreeRTOS.h"

uint8_t TTP223B_init(void){

	uint8_t error = 0;

	GPIO_InitTypeDef GPIO_InitStruct;

	__HAL_RCC_GPIOC_CLK_ENABLE();

	GPIO_InitStruct.Pin = GPIO_PIN_0;
	GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
	GPIO_InitStruct.Pull = GPIO_NOPULL;

	HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

	HAL_NVIC_EnableIRQ(EXTI0_IRQn);

	return error;

}

/* NOTE: This is IRQHandler */
void EXTI0_IRQHandler(void){

#ifdef DEBUG
	traceISR_ENTER();
#endif

	HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_0);	/* NOTE: This calls HAL_GPIO_EXTI_Callback function */

#ifdef DEBUG
	traceISR_EXIT();
#endif

}

/* NOTE: This determines the GPIO_Pin, occuring interrupt */
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin){

	if(GPIO_Pin == GPIO_PIN_0){

		envmonitor.sensor.ttp223b.touchState ^= 1;

	}

}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
static void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}
