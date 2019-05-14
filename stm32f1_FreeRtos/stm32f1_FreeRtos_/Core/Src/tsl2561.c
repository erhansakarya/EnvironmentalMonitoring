#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "queue.h"
#include "semphr.h"
#include "event_groups.h"

#include "envmonitor.h"
#include "tsl2561.h"

int8_t tsl2561_init(void){
	int8_t returnVal = 0;
}

/*
 * void pointer olarak içerisinde global değişkenlerin bulunduğu struct'ın adresini gönder.
 * */

void tsl2561Task(void *pvParameters){

	uint8_t *lux = (uint8_t *)pvParameters;
	int32_t lVariableExample = 0;	/* NOTE: prefix l is long */

	for(;;){

	}

	vTaskDelete(NULL);

}
