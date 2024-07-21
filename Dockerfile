# Usar a imagem base do Node.js
FROM node:18

# Criar um diretório de trabalho
WORKDIR /app

# Copiar package.json e package-lock.json
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o restante do código
COPY . .

# Expor a porta
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["npm", "start"]
