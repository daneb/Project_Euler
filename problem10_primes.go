package main

import "fmt"

func main() {

  var limit = 2000000
  var primes := make([]int, 0, 1000000)
  var prime_counter = 0;

  for i := 2; i <= limit; i++ { 
      if is_prime(i, i - 1) 
      {
        primes[prime_counter] = i
        prime_counter++
      }
  }

  fmt.Println("Found smallest:", smallest) 

}

func is_prime(var value, var x)
{
  if x == 1 {
    return true
  }
  else if(((value % 2 == 0) | (value % x == 0)) && (x != 1)) {
    return false
  }
  is_prime(value, x - 1)
}
