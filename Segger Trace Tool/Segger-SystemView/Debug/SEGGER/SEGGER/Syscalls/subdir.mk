################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.c 

OBJS += \
./SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o 

C_DEPS += \
./SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d 


# Each subdirectory must supply rules for building sources it contributes
SEGGER/SEGGER/Syscalls/%.o SEGGER/SEGGER/Syscalls/%.su SEGGER/SEGGER/Syscalls/%.cyclo: ../SEGGER/SEGGER/Syscalls/%.c SEGGER/SEGGER/Syscalls/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I"/home/aizaz/devomech/learning/STM32-FreeRTOS/Segger Trace Tool/Segger-SystemView/FreeRTOS/include" -I"/home/aizaz/devomech/learning/STM32-FreeRTOS/Segger Trace Tool/Segger-SystemView/SEGGER/Config" -I"/home/aizaz/devomech/learning/STM32-FreeRTOS/Segger Trace Tool/Segger-SystemView/SEGGER/OS" -I"/home/aizaz/devomech/learning/STM32-FreeRTOS/Segger Trace Tool/Segger-SystemView/SEGGER/SEGGER" -I"/home/aizaz/devomech/learning/STM32-FreeRTOS/Segger Trace Tool/Segger-SystemView/FreeRTOS/portable/GCC/ARM_CM4F" -I"/home/aizaz/devomech/learning/STM32-FreeRTOS/Segger Trace Tool/Segger-SystemView/FreeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-SEGGER-2f-SEGGER-2f-Syscalls

clean-SEGGER-2f-SEGGER-2f-Syscalls:
	-$(RM) ./SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.cyclo ./SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d ./SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o ./SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.su

.PHONY: clean-SEGGER-2f-SEGGER-2f-Syscalls

