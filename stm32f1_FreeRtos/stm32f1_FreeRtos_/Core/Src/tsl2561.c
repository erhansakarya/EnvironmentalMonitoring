#include <math.h>
#include <string.h>

#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "queue.h"
#include "semphr.h"
#include "event_groups.h"

#include "envmonitor.h"
#include "tsl2561.h"

static uint8_t TSL2561_calculateLux(uint16_t *adcData, float *luxVal);
static void Error_Handler(void);

uint8_t TSL2561_init(void){

	uint8_t pData[2];
	uint8_t error = 0;

	memset(pData, 0, (sizeof(pData) / sizeof(pData[0])));

	/* NOTE: Power up the device */
	pData[0] = TSL2561_COMMAND_REG | TSL2561_CONTROL;
	pData[1] = TSL2561_POWER_UP;
	if(HAL_I2C_Master_Transmit(&hi2c1, TSL2561_ADDR_FLOAT, pData,
			(sizeof(pData) / sizeof(pData[0])), HAL_MAX_DELAY) != HAL_OK){

		Error_Handler();
	}

//	/* NOTE: Get power state */
//	memset(pData, 0, (sizeof(pData) / sizeof(pData[0])));
//	if(HAL_I2C_Master_Receive(&hi2c1, TSL2561_ADDR_FLOAT, pData,
//			1, HAL_MAX_DELAY) != HAL_OK ){
//
//		Error_Handler();
//	}
//
//	if(pData[0] != 0x03){
//
//		error = 1;
//
//	}

	/* NOTE: Get Device ID */
	memset(pData, 0, (sizeof(pData) / sizeof(pData[0])));
	pData[0] = TSL2561_COMMAND_REG | TSL2561_ID;
	if(HAL_I2C_Master_Transmit(&hi2c1, TSL2561_ADDR_FLOAT, pData,
			1, HAL_MAX_DELAY) != HAL_OK ){

		Error_Handler();
	}

	memset(pData, 0, (sizeof(pData) / sizeof(pData[0])));
	if(HAL_I2C_Master_Receive(&hi2c1, TSL2561_ADDR_FLOAT, pData,
			1, HAL_MAX_DELAY) != HAL_OK ){

		Error_Handler();
	}

	if((pData[0] & 0xF0) != TSL2561_DEV_ID){
		error = 1;
	}

	/* NOTE: Configure Timing Register */
	memset(pData, 0, (sizeof(pData) / sizeof(pData[0])));
	pData[0] = TSL2561_COMMAND_REG | TSL2561_TIMING;
	pData[1] = 0x00;	/* NOTE: integration time is 13.7ms and 16x gain */
	if(HAL_I2C_Master_Transmit(&hi2c1, TSL2561_ADDR_FLOAT, pData,
			(sizeof(pData) / sizeof(pData[0])), HAL_MAX_DELAY) != HAL_OK){

		Error_Handler();
	}


	/* NOTE: Configure Interrupt Threshold registers */


	/* NOTE: Set interrupt control register */

	return error;

}

void TSL2561_handler(void *lux){

	if(lux == NULL)
		Error_Handler();

	for(;;){

		uint8_t pData[2];
		uint16_t adcData[2];

		memset(adcData, 0, 4);

		HAL_Delay(500);	/* NOTE: Wait for integration time */

		/* NOTE: Get ADC channel 0 lower and higher bytes */
		memset(pData, 0, (sizeof(pData) / sizeof(pData[0])));
		pData[0] = (TSL2561_COMMAND_REG | (0x01 << 4) ) | TSL2561_DATA0LOW;
		if(HAL_I2C_Master_Transmit(&hi2c1, TSL2561_ADDR_FLOAT, pData,
				1, HAL_MAX_DELAY) != HAL_OK ){

			Error_Handler();
		}

		memset(pData, 0, (sizeof(pData) / sizeof(pData[0])));
		if(HAL_I2C_Master_Receive(&hi2c1, TSL2561_ADDR_FLOAT, pData,
				1, HAL_MAX_DELAY) != HAL_OK ){

			Error_Handler();
		}

		adcData[0] |= pData[0];

		memset(pData, 0, (sizeof(pData) / sizeof(pData[0])));
		if(HAL_I2C_Master_Receive(&hi2c1, TSL2561_ADDR_FLOAT, pData,
				1, HAL_MAX_DELAY) != HAL_OK ){

			Error_Handler();
		}

		adcData[0] |= pData[0] << 8;

		/* NOTE: Get ADC channel 1 lower and higher bytes */
		memset(pData, 0, (sizeof(pData) / sizeof(pData[0])));
		pData[0] = (TSL2561_COMMAND_REG | (0x01 << 4) ) | TSL2561_DATA1LOW;
		if(HAL_I2C_Master_Transmit(&hi2c1, TSL2561_ADDR_FLOAT, pData,
				1, HAL_MAX_DELAY) != HAL_OK ){

			Error_Handler();
		}

		memset(pData, 0, (sizeof(pData) / sizeof(pData[0])));
		if(HAL_I2C_Master_Receive(&hi2c1, TSL2561_ADDR_FLOAT, pData,
				1, HAL_MAX_DELAY) != HAL_OK ){

			Error_Handler();
		}

		adcData[1] |= pData[0];

		memset(pData, 0, (sizeof(pData) / sizeof(pData[0])));
		if(HAL_I2C_Master_Receive(&hi2c1, TSL2561_ADDR_FLOAT, pData,
				1, HAL_MAX_DELAY) != HAL_OK ){

			Error_Handler();
		}

		adcData[1] |= pData[0] << 8;

		TSL2561_calculateLux(adcData, (float *)lux);

	}

	vTaskDelete(NULL);

}

static uint8_t TSL2561_calculateLux(uint16_t *adcData, float *luxVal){

	if(adcData == NULL || luxVal == NULL)
		Error_Handler();

	float divAdcData = ((float)adcData[1] / (float)adcData[0]);
	uint8_t error = 0;

	if( (0.00 < divAdcData) && (divAdcData <= 0.50) ){

		*luxVal = (0.0304 * adcData[0]) - (0.062 * adcData[0] * pow(divAdcData, 1.4));

	}else if( (0.50 < divAdcData) && (divAdcData <= 0.61) ){

		*luxVal = (0.0224 * adcData[0]) - (0.031 * adcData[1]);

	}else if( (0.61 < divAdcData) && (divAdcData <= 0.80) ){

		*luxVal = (0.0128 * adcData[0]) - (0.0153 * adcData[1]);

	}else if( (0.80 < divAdcData) && (divAdcData <= 1.30) ){

		*luxVal = (0.00146 * adcData[0]) - (0.00112 * adcData[1]);

	}else if( divAdcData > 1.30 ){

		*luxVal = 0;

	}else{

		// error
		error = 1;

	}

	return error;

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
