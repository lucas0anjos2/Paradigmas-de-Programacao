package main

import "fmt"

func main() {
  ch1 := make(chan int)
  ch2 := make(chan int)
  x := []int {1,2,3,4,5,6,7,8,9}

  go Min(x, ch1)
  go Max(x, ch2)

  min, ok := <- ch1
  max, ok := <- ch2
  fmt.Print(x)
  fmt.Printf("min = '%d', ok = '%v' \n", min, ok)
  fmt.Printf("max = '%d', ok = '%v' \n", max, ok)

}

func Min( x []int, ch chan int){
  min := 20;
  for i:= 0; i < len(x); i++{
    if x[i] < min{
      min = x[i]
    }
    
  }
  ch <- min
}

func Max( x []int, ch chan int){
  max := 0;
  for i :=0; i < len(x); i++{
    if x[i] > max{
      max = x[i]
    }
  }
  ch <- max
}