
# Dockerfile para o Backend
FROM node:18

# Instalar PM2 globalmente
RUN npm install -g pm2

# Definir o diretório de trabalho
WORKDIR /usr/src/app

# Copiar arquivos de dependências
COPY backend/package*.json ./

# Instalar dependências
RUN npm install --legacy-peer-deps

# Copiar o restante do código do backend
COPY backend ./

# Expor a porta usada pelo backend
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["pm2-runtime", "start", "ecosystem.config.js"]
