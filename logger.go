package main

import "fmt"

type Logger struct {
	def string
	red string
}

func (l Logger) Log(message string) {
	fmt.Println(l.def, message)
}

func (l Logger) Error(message string) {
	fmt.Println(l.red, message)
}
