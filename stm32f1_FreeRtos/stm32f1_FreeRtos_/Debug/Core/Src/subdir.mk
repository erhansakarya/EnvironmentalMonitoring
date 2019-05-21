################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/envmonitor.c \
../Core/Src/htu21d.c \
../Core/Src/main.c \
../Core/Src/ssd1306_display.c \
../Core/Src/stm32f1xx_hal_msp.c \
../Core/Src/stm32f1xx_hal_timebase_tim.c \
../Core/Src/stm32f1xx_it.c \
../Core/Src/system_stm32f1xx.c \
../Core/Src/tsl2561.c \
../Core/Src/ttp223.c 

OBJS += \
./Core/Src/envmonitor.o \
./Core/Src/htu21d.o \
./Core/Src/main.o \
./Core/Src/ssd1306_display.o \
./Core/Src/stm32f1xx_hal_msp.o \
./Core/Src/stm32f1xx_hal_timebase_tim.o \
./Core/Src/stm32f1xx_it.o \
./Core/Src/system_stm32f1xx.o \
./Core/Src/tsl2561.o \
./Core/Src/ttp223.o 

C_DEPS += \
./Core/Src/envmonitor.d \
./Core/Src/htu21d.d \
./Core/Src/main.d \
./Core/Src/ssd1306_display.d \
./Core/Src/stm32f1xx_hal_msp.d \
./Core/Src/stm32f1xx_hal_timebase_tim.d \
./Core/Src/stm32f1xx_it.d \
./Core/Src/system_stm32f1xx.d \
./Core/Src/tsl2561.d \
./Core/Src/ttp223.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/envmonitor.o: ../Core/Src/envmonitor.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/envmonitor.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/htu21d.o: ../Core/Src/htu21d.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/htu21d.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/main.o: ../Core/Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/ssd1306_display.o: ../Core/Src/ssd1306_display.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/ssd1306_display.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/stm32f1xx_hal_msp.o: ../Core/Src/stm32f1xx_hal_msp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32f1xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/stm32f1xx_hal_timebase_tim.o: ../Core/Src/stm32f1xx_hal_timebase_tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32f1xx_hal_timebase_tim.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/stm32f1xx_it.o: ../Core/Src/stm32f1xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32f1xx_it.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/system_stm32f1xx.o: ../Core/Src/system_stm32f1xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/system_stm32f1xx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/tsl2561.o: ../Core/Src/tsl2561.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/tsl2561.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/ttp223.o: ../Core/Src/ttp223.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/ttp223.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

