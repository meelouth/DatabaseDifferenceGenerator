package main

import (
	"log"
)

type Logger struct {
	def string
	red string
}

func (l Logger) Log(message string) {
	log.Println(l.def, message)
}

func (l Logger) Error(message string) {
	log.Println(l.red, message)
}
