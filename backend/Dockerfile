
# Use uma imagem base oficial do Node.js
FROM node:18

# Instalar PM2 globalmente
RUN npm install -g pm2

# Definir o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copiar package.json e package-lock.json para o container
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o restante do código da aplicação
COPY . .

# Expor a porta que a aplicação utiliza (ajuste conforme necessário)
EXPOSE 3000

# Usar PM2 para gerenciar processos e escalabilidade
CMD ["pm2-runtime", "start", "ecosystem.config.js"]
