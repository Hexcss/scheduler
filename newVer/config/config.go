package config

import (
	"log"
	"os"

	"github.com/joho/godotenv"
	"gopkg.in/yaml.v3"
)

type Config struct {
	App struct {
		Port string `yaml:"port"`
		Env  string `yaml:"env"`
	} `yaml:"app"`

	DB struct {
		Host     string `yaml:"host"`
		Port     string `yaml:"port"`
		User     string `yaml:"user"`
		Password string `yaml:"password"`
		Name     string `yaml:"name"`
		SSLMode  string `yaml:"sslmode"`
	} `yaml:"db"`

	Redis struct {
		Host string `yaml:"host"`
		Port string `yaml:"port"`
	} `yaml:"redis"`
}

func LoadConfig() *Config {
	// load from .env if exists
	_ = godotenv.Load()

	file := "config.yaml"
	cfg := &Config{}

	if _, err := os.Stat(file); err == nil {
		f, err := os.ReadFile(file)
		if err != nil {
			log.Fatalf("error reading config.yaml: %v", err)
		}
		if err := yaml.Unmarshal(f, cfg); err != nil {
			log.Fatalf("error parsing config.yaml: %v", err)
		}
	}

	// allow override from env vars
	if port := os.Getenv("APP_PORT"); port != "" {
		cfg.App.Port = port
	}
	if env := os.Getenv("APP_ENV"); env != "" {
		cfg.App.Env = env
	}

	if host := os.Getenv("DB_HOST"); host != "" {
		cfg.DB.Host = host
		cfg.DB.Port = os.Getenv("DB_PORT")
		cfg.DB.User = os.Getenv("DB_USER")
		cfg.DB.Password = os.Getenv("DB_PASSWORD")
		cfg.DB.Name = os.Getenv("DB_NAME")
		cfg.DB.SSLMode = os.Getenv("DB_SSLMODE")
	}

	if host := os.Getenv("REDIS_HOST"); host != "" {
		cfg.Redis.Host = host
		cfg.Redis.Port = os.Getenv("REDIS_PORT")
	}

	return cfg
}
