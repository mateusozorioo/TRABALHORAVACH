# Use a imagem oficial do Node.js 18 Alpine
FROM node:18-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o package.json e package-lock.json (se existir)
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o resto dos arquivos da aplicação
COPY . .

# Expõe a porta 3000
EXPOSE 3000

# Define o comando para iniciar a aplicação
CMD ["npm", "start"]