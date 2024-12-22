
# Use uma imagem base oficial do Node.js
FROM node:18

# Instalar PM2 globalmente
RUN npm install -g pm2

# Definir o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copiar arquivos do backend
COPY backend/package*.json ./

# Limpar cache do NPM, instalar dependências com segurança, e otimizar
RUN npm cache clean --force     && npm install --legacy-peer-deps --no-audit --no-fund --progress=false     && npm update

# Copiar o restante do código do backend
COPY backend ./

# Expor a porta que a aplicação utiliza
EXPOSE 3000

# Usar PM2 para gerenciar processos e escalabilidade
CMD ["pm2-runtime", "start", "ecosystem.config.js"]
