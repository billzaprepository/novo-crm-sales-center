
# Dockerfile para o Frontend
FROM node:18 as build

# Definir o diretório de trabalho
WORKDIR /usr/src/app

# Copiar arquivos de dependências
COPY frontend/package*.json ./

# Instalar dependências
RUN npm install

# Copiar o restante do código do frontend
COPY frontend ./

# Criar o build
RUN npm run build

# Servir a aplicação com Nginx
FROM nginx:alpine

# Copiar os arquivos de build para o diretório do Nginx
COPY --from=build /usr/src/app/build /usr/share/nginx/html

# Expor a porta padrão do Nginx
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
