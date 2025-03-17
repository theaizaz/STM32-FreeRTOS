# FreeRTOS

## FreeRTOS Scheduler Implementation

In FreeRTOS scheduler is actually combination of FreeRTOS Generic code (found in task.c) plus Architecture specific codes (in port.c and portmacro.h). Our Architecture is ARM Cortex M4.

Blow is the interrupt handler in port.c file. which is a part of scheduler implementation of FeeRTOS. 
 
```c
vPortSVHandler();
```

To launch the very first task. Triggered by SVC instruction.

```c
xPortPendSVHandler();
```

Use to achieve the context switching between tasks. Triggered by pending the PendSV interrupt (System exception of ARM).

```c
xPortSysTickHandler();
```

*Heart beat of FreeRTOS*.

Use to generate the tick interrupt. Triggered by SysTick timer.

On every Tick **xTickCount** increments by 1. This is used to keep track of time in FreeRTOS.

If SysTick interrupt is used for some other purpose in your application, then you may ise any other available timer for tick interrupt.

Red indicates SystemTickHandler, Gray (just after red)indicates PendSVHandler.

![FreeRTOS Scheduler](./images/output.png)

## vTaskStartScheduler()

This function is used to start the FreeRTOS scheduler.

Only after calling this function scheduler code is initialized and all the Arch specific interrupts will be activated.

Also creates the Idle task and the Timer task.

Inside this function it calls **xPortStartScheduler()** to do the actual work.

