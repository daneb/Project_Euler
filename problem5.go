package main

import "fmt"

func main() {

  var smallest = 2520
  var all_evenly = false

  for ; all_evenly == false; {

    for i := 1; i <= 20; i++ {
      if smallest % i == 0 {
       all_evenly = true   
      } else {
        all_evenly = false
        break;
      }
    }

    if all_evenly == false {
      smallest += 2
    }

  }

  fmt.Println("Found smallest:", smallest) 

}
