################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SEGGER/Config/SEGGER_SYSVIEW_Config_FreeRTOS.c 

OBJS += \
./SEGGER/Config/SEGGER_SYSVIEW_Config_FreeRTOS.o 

C_DEPS += \
./SEGGER/Config/SEGGER_SYSVIEW_Config_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
SEGGER/Config/%.o SEGGER/Config/%.su SEGGER/Config/%.cyclo: ../SEGGER/Config/%.c SEGGER/Config/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I"/home/aizaz/devomech/learning/STM32-FreeRTOS/Segger Trace Tool/Segger-SystemView/FreeRTOS/include" -I"/home/aizaz/devomech/learning/STM32-FreeRTOS/Segger Trace Tool/Segger-SystemView/SEGGER/Config" -I"/home/aizaz/devomech/learning/STM32-FreeRTOS/Segger Trace Tool/Segger-SystemView/SEGGER/OS" -I"/home/aizaz/devomech/learning/STM32-FreeRTOS/Segger Trace Tool/Segger-SystemView/SEGGER/SEGGER" -I"/home/aizaz/devomech/learning/STM32-FreeRTOS/Segger Trace Tool/Segger-SystemView/FreeRTOS/portable/GCC/ARM_CM4F" -I"/home/aizaz/devomech/learning/STM32-FreeRTOS/Segger Trace Tool/Segger-SystemView/FreeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-SEGGER-2f-Config

clean-SEGGER-2f-Config:
	-$(RM) ./SEGGER/Config/SEGGER_SYSVIEW_Config_FreeRTOS.cyclo ./SEGGER/Config/SEGGER_SYSVIEW_Config_FreeRTOS.d ./SEGGER/Config/SEGGER_SYSVIEW_Config_FreeRTOS.o ./SEGGER/Config/SEGGER_SYSVIEW_Config_FreeRTOS.su

.PHONY: clean-SEGGER-2f-Config

