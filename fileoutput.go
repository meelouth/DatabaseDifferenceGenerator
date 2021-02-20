package main

import "os"

type FileOutput struct {
}

func (fo FileOutput) OutputLn(filename string, content string) {
	content += "\n"
	fo.Output(filename, content)
}

func (fo FileOutput) Output(filename string, content string) {
	f, err := os.OpenFile(filename, os.O_APPEND|os.O_WRONLY|os.O_CREATE, 0600)
	if err != nil {
		panic(err)
	}

	defer f.Close()

	if _, err = f.WriteString(content); err != nil {
		panic(err)
	}
}

func (fo *FileOutput) CreateFile(filename string) *os.File {
	f, err := os.Create(filename)

	if err != nil {
		panic(err)
	}

	return f
}
