################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c 

OBJS += \
./ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o 

C_DEPS += \
./ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o: ../ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/include" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/SEGGER/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/SEGGER/OS" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/SEGGER/SEGGER" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Config" -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/ThirdParty/freeRTOS/org/Source/portable/GCC/ARM_CM3" -I../Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/erhan/github/EnvironmentalMonitoring/stm32f1_FreeRtos/stm32f1_FreeRtos_/Core/Inc" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

