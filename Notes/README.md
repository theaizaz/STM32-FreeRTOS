# FreeRTOS

## IDLE Task

The IDLE task is a special task that runs when no other tasks are ready to run. It has the lowest priority and is used to put the CPU into a low-power state when there are no tasks to execute.

The IDLE task is created automatically by FreeRTOS when the scheduler is started, and is use to perform background tasks such as memory management and resource cleanup.

## Task Priorities

Task priorities help the scheduler to determine which task should run first at any given time. FreeRTOS supports 256 task priorities, with priority 0 being the lowest and priority 255 being the highest.

Too many tasks with the same priority can lead to starvation, where some tasks may never get executed. To avoid this, it is recommended to use a limited number of priorities and assign them based on the task's importance.

related MACRO in FreeRTOSConfig.h file.

```c
#define configUSE_PREEMPTION 1 // Enable preemption
#define configMAX_PRIORITIES ( 5 ) // Define number of priorities
```

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

## Context Switching

The process of switching out of one task and switching in of another task on the CPU to execute. it is taken care by Scheduler(PendSVHandler) in port.c.

In case of pre-emptive scheduling, RTOS tick interrupt scheduler will the priority of the running task with the priority  of ready task list. If there is any high priority task in the list context switch will occur.

In FreeRTOS to manually trigger the context switch we use **taskYIELD()** function.

### Task Switching out procedure

1. Save the context of the current task (registers, stack pointer, etc.) in its TCB (Task Control Block). by SysTick interrupt handler.

    - If context switch is required, then SysTick timer will pend the PendSV Exception and PendSV handler runs.

    - Save the PSP (Process Stack Pointer) of the current task in its TCB.

2. Set the current task's state to "Blocked" or "Ready" based on its priority, taken care by vTaskSwitchContext() function in task.c.

### Task Switching in procedure

1. Get the next task to run from the ready list based on its priority.

2. First get the address of the top of the stack of the next task to run from its TCB.

3. copy the value of pxTask->pxTopOfStack to the PSP register.

4. pop all the registers (R4-R11, R14) from the stack.(Restoring the context of the next task).


## Task States

ARM Cortex MxCore has two Stack pointers (MSP and PSP). MSP is used by RTOS kernel and PSP is used by Task to track its private stack.

## Stack

*Static allocation of a variable is done outside of the task TCB.*

There are two types of stack in FreeRTOS.

1. **Kernal Stack**: Used by RTOS kernel to store the context of the task.
2. **Task Stack**: Used by Task to store its local variables.

![FreeRTOS Stack](./images/Stack.png)

