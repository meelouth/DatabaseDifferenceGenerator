package main

import (
	"encoding/json"
	"fmt"
	"os"
)

type ConfigReader struct {
	configurationFileName string
}

type Configuration struct {
	ProdDBConnectionString    string
	PreProdDBConnectionString string

	OutputFileName string
}

func (r *ConfigReader) ReadConfig() Configuration {
	file, _ := os.Open(r.configurationFileName)
	defer file.Close()

	decoder := json.NewDecoder(file)
	configuration := Configuration{}
	err := decoder.Decode(&configuration)

	if err != nil {
		fmt.Println("Configuration error:", err)
	}

	return configuration
}
