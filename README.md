# STM32-FreeRTOS

This repository contains code for running FreeRTOS on STM32F401CCU6.

## What is operating system (OS)?

An operating systems is a program that controls and manages the hardware and other software on a computer. It acts as an intermediary between the user and the computer hardware.

## What is Real-Time?

A Real-Time system is designed to process data and provide responses in within a strict constraint.

### Types of Real-Time Systems

#### 1. Hard Real-Time Systems

These systems have to process data within a strict time frame. If the system fails to process data within the time frame, it is considered a failure.\
\
**Example**: Airbag deployment system in a car.

#### 2. Soft Real-Time Systems

These systems can tolerate occasional deadline misses without without sever consequences. The performance of the system degrades with the number of missed deadlines.

**Example**: Video streaming service.

#### 3. Firm Real-Time Systems

These systems lies between hard and soft real-time systems. Missing a deadline is tolerable but reduces the usefulness of output.

**Example**: Online Satellite based tracking.


## What is RTOS?

Real-Time operating system (RTOS) is equivalent to Predictable computing system. It is a computing system that has to process data in a certain time frame.

## What is FreeRTOS?

FreeRTOS is an open-source Real-Time operating system kernel designed for embedded devices. 

**Link**: [FreeRTOS](https://www.freertos.org/)

## Basic concepts of FreeRTOS

### 1. Throughput and Latency

**Throughput** is the number of tasks that can be completed in a given time frame.\
or\
Data transfer rate (e.g., Mbps)

**Latency** is the time taken to complete a task.\
or\
Time taken to transfer data from source to destination. (e.g., 20 ms ping in gaming)

### 2. Task and Thread

In FreeRTOS, the equivalent of a thread is called task thread. its an independent piece pf code that runs in its own context and can be scheduled buy the FreeRTOS kernel .

### 3. Task Scheduling

Task scheduling is the process of deciding which task to run next. FreeRTOS uses a priority-based scheduling algorithm.

### 4. Task Switching Latency

The time gap between a triggering of an event and the time at which the task takes care of that event is allowed to run on the CPU