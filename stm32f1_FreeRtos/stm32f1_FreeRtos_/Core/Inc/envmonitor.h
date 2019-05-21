/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __ENVMONITOR_H
#define __ENVMONITOR_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

typedef struct{
	float temperature;
	float humidity;
}htu21d_s;

typedef struct{
	float lux;
}tsl2561_s;

typedef struct{
	uint8_t touchState;
}ttp223b_s;

typedef struct{
	htu21d_s htu21d;
	tsl2561_s tsl2561;
	ttp223b_s ttp223b;
}sensor_s;

typedef struct{
	sensor_s sensor;
}envmonitor_s;

extern envmonitor_s envmonitor;

#define INIT_ENVMONITOR {	\
						0.00,	\
						0.00,	\
						0.00,	\
						0,	\
						}	\

uint8_t ENVMNTR_init(void);
uint8_t ENVMNTR_createTasks(void);

#endif
