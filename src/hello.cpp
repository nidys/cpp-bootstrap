#include "hello.h"
#include <cstdio>
#include <thread>
#include<iostream>

void printHello()
{
  printf("Hello world\n");
}

void call_from_thread(int tid)
{
  std::cout << "hi tid = " << tid << std::endl;
}

const int num_th = 10;

void parallelHelloPrint()
{
  std::thread ths[num_th];

  for(int i = 0; i < num_th; i++)
  {
    ths[i] = std::thread(call_from_thread, i + 1);
  }
  
  for(int i = 0; i < num_th; i++)
  {
    ths[i].join();
  }
  printHello();
}

