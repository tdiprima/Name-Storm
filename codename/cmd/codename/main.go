package main

import (
    "fmt"
    "github.com/lucasepe/codename"
)

func main() {
    rng, err := codename.DefaultRNG()
    if err != nil {
        panic(err)
    }

    for i := 0; i < 8; i++ {
        name := codename.Generate(rng, 0) // (rng, 0) // (rng, 4)
        fmt.Println(name)
    }
}

