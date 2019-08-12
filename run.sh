#!/bin/bash

gcc -framework Cocoa -c main3.m  AppDelagate.m viewController.m
ar rcs libwindow.a main3.o  AppDelagate.o viewController.o
gcc -framework Cocoa -lwindow -L. -o foo main.c 
./foo