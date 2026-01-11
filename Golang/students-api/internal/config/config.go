package config

import (
	"flag"
	"log"
	"os"

	"github.com/ilyakaznacheev/cleanenv"
)

type Config struct {
	Env         string     `yaml:"evn" env:"ENV" env-required:"true"`
	StoragePath string     `yaml:"storage_path"`
	HttpServer  HttpServer `yaml:"http_server"`
}

type HttpServer struct {
	Address string `yaml:"address"`
}

func MustLoadConfig() *Config {

	configFile := os.Getenv("CONFIG_PATH")

	if configFile == "" {

		flags := flag.String("CONFIG_PATH", "", "path of config file")
		flag.Parse()

		configFile = *flags

		if configFile == "" {
			log.Fatal("config path is not set")
		}
	}

	// if path passed and still file is missing in that location
	if _, err := os.Stat(configFile); os.IsNotExist(err) {
		log.Fatalf("config file is missing in path :: %s", configFile)
	}

	var cfg Config

	err := cleanenv.ReadConfig(configFile, &cfg)
	if err != nil {
		log.Fatalf("error in reading config file :: %w", err)
	}

	return &cfg
}
