# Usar a imagem oficial do Node.js (versão LTS)
FROM node:18-alpine

# Definir diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copiar package.json e package-lock.json (se existir)
COPY package*.json ./

# Instalar dependências
RUN npm ci --only=production

# Copiar código da aplicação
COPY . .

# Expor a porta que a aplicação usa
EXPOSE 3000

# Criar usuário não-root para segurança
RUN addgroup -g 1001 -S nodejs
RUN adduser -S nextjs -u 1001
USER nextjs

# Comando para executar a aplicação
CMD ["npm", "start"]