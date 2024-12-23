
#!/bin/bash

# Este script configura e inicializa o projeto automaticamente

# Use-o localmente ou como referência para configuração no EasyPanel

# Certifique-se de configurar os caminhos corretos no EasyPanel:
# - docker-compose.yml: /etc/easypanel/projects/disparador/novo-crm-sales-center/code/docker-compose.yml
# - Dockerfile (backend): /etc/easypanel/projects/disparador/novo-crm-sales-center/code/backend/Dockerfile
# - Dockerfile (frontend): /etc/easypanel/projects/disparador/novo-crm-sales-center/code/frontend/Dockerfile

echo "Iniciando a configuração do projeto..."

# Construir e iniciar os serviços com docker-compose
docker-compose up --build -d

if [ $? -eq 0 ]; then
  echo "Projeto configurado e em execução!"
  echo "Acesse o backend em http://localhost:3000"
  echo "Acesse o frontend em http://localhost"
else
  echo "Houve um erro durante a configuração. Verifique os logs do docker-compose."
fi
