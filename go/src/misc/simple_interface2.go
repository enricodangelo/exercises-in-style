package main

import (
    "fmt"
)

type Simpler interface {
    Get() int32
    Set(n int32)
}

type Simple struct {
    value int32
}

func (s Simple) Get() int32 {
    return s.value
}

func (s Simple) Set(value int32) {
    s.value = value
}

func test(s Simpler) {
    fmt.Println(s.Get())
    s.Set(9)
    fmt.Println(s.Get())
}

func main() {
    var s Simple = Simple{7}
    test(s)
}
