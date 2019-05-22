/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __NRF24L01PLUS_H
#define __NRF24L01PLUS_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

uint8_t NRF24L01Plus_init(void);
void NRF24L01Plus_handler(void *lux);

#endif
