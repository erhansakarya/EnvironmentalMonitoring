################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/freeRTOS/org/Source/croutine.c \
../ThirdParty/freeRTOS/org/Source/event_groups.c \
../ThirdParty/freeRTOS/org/Source/list.c \
../ThirdParty/freeRTOS/org/Source/queue.c \
../ThirdParty/freeRTOS/org/Source/stream_buffer.c \
../ThirdParty/freeRTOS/org/Source/tasks.c \
../ThirdParty/freeRTOS/org/Source/timers.c 

OBJS += \
./ThirdParty/freeRTOS/org/Source/croutine.o \
./ThirdParty/freeRTOS/org/Source/event_groups.o \
./ThirdParty/freeRTOS/org/Source/list.o \
./ThirdParty/freeRTOS/org/Source/queue.o \
./ThirdParty/freeRTOS/org/Source/stream_buffer.o \
./ThirdParty/freeRTOS/org/Source/tasks.o \
./ThirdParty/freeRTOS/org/Source/timers.o 

C_DEPS += \
./ThirdParty/freeRTOS/org/Source/croutine.d \
./ThirdParty/freeRTOS/org/Source/event_groups.d \
./ThirdParty/freeRTOS/org/Source/list.d \
./ThirdParty/freeRTOS/org/Source/queue.d \
./ThirdParty/freeRTOS/org/Source/stream_buffer.d \
./ThirdParty/freeRTOS/org/Source/tasks.d \
./ThirdParty/freeRTOS/org/Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/freeRTOS/org/Source/croutine.o: ../ThirdParty/freeRTOS/org/Source/croutine.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"ThirdParty/freeRTOS/org/Source/croutine.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
ThirdParty/freeRTOS/org/Source/event_groups.o: ../ThirdParty/freeRTOS/org/Source/event_groups.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"ThirdParty/freeRTOS/org/Source/event_groups.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
ThirdParty/freeRTOS/org/Source/list.o: ../ThirdParty/freeRTOS/org/Source/list.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"ThirdParty/freeRTOS/org/Source/list.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
ThirdParty/freeRTOS/org/Source/queue.o: ../ThirdParty/freeRTOS/org/Source/queue.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"ThirdParty/freeRTOS/org/Source/queue.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
ThirdParty/freeRTOS/org/Source/stream_buffer.o: ../ThirdParty/freeRTOS/org/Source/stream_buffer.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"ThirdParty/freeRTOS/org/Source/stream_buffer.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
ThirdParty/freeRTOS/org/Source/tasks.o: ../ThirdParty/freeRTOS/org/Source/tasks.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"ThirdParty/freeRTOS/org/Source/tasks.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
ThirdParty/freeRTOS/org/Source/timers.o: ../ThirdParty/freeRTOS/org/Source/timers.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"ThirdParty/freeRTOS/org/Source/timers.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

