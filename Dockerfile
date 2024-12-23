
# Use uma imagem oficial do Node.js
FROM node:18

# Instalar PM2 globalmente
RUN npm install -g pm2

# Definir o diretório de trabalho
WORKDIR /usr/src/app

# Copiar arquivos de dependências
COPY backend/package*.json ./

# Instalar dependências e garantir core-js atualizado
RUN npm install --legacy-peer-deps && npm install core-js@^3.23.3 --save

# Copiar o restante do código do backend
COPY backend ./

# Expor a porta usada pelo backend
EXPOSE 3000

# Iniciar o servidor
CMD ["pm2-runtime", "start", "ecosystem.config.js"]
