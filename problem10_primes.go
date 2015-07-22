// No Performant 0(n)
package main

import "fmt"

func is_prime(value int, x int) int {
	var prime = -1

	if x == 1 {
		prime = 0
	} else if value%x == 0 {
		prime = 1
	} else {
		prime = is_prime(value, x-1)
	}

	return prime
}

func main() {
	var limit = 2000000
	var prime_counter = 2

	for i := 3; i <= limit; i = i + 2 {
		if is_prime(i, i-1) == 0 {
			fmt.Println(i)
			prime_counter = prime_counter + i
		}
	}

	fmt.Println(prime_counter)
}
