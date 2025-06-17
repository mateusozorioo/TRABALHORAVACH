# Trabalho Ravache - Node.js com Docker

Este projeto é uma aplicação Node.js simples que demonstra o uso de containers Docker e CI/CD com GitHub Actions, desenvolvido para a matéria de "Desenvolvimento com DevOps: Gerenciamento de containers".

## 📋 Descrição

A aplicação é um servidor web simples construído com Express.js que retorna uma mensagem "Hello World!" em formato JSON, incluindo timestamp e informações do ambiente.

## 🚀 Funcionalidades

- **Rota principal (`/`)**: Retorna mensagem Hello World com timestamp
- **Rota de health check (`/health`)**: Retorna status da aplicação e uptime
- **Containerização com Docker**: Aplicação totalmente containerizada
- **CI/CD Pipeline**: Deploy automático com GitHub Actions

## 🛠️ Tecnologias Utilizadas

- **Node.js 18**: Runtime JavaScript
- **Express.js**: Framework web minimalista
- **Docker**: Containerização da aplicação
- **GitHub Actions**: CI/CD pipeline
- **Alpine Linux**: Imagem base otimizada

## 📦 Estrutura do Projeto
trabalho-ravach-nodejs/
├── .github/
│   └── workflows/
│       └── ci-cd.yml          # Pipeline CI/CD
├── app.js                     # Aplicação principal
├── package.json               # Dependências e scripts
├── Dockerfile                 # Configuração do container
├── .dockerignore             # Arquivos ignorados pelo Docker
├── .gitignore                # Arquivos ignorados pelo Git
└── README.md                 # Documentação


## 🔧 Instalação e Execução

### Pré-requisitos

- Node.js 18 ou superior
- Docker
- Git

### Execução Local

1. Clone o repositório:
```bash
git clone https://github.com/mateusozorioo/TRABALHORAVACH.git
cd TRABALHORAVACH