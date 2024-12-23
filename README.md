
# Projeto CRM Sales Center

## Configuração e Instalação no EasyPanel

### Pré-requisitos
- **Docker** instalado na VPS.
- **EasyPanel** configurado para gerenciar o projeto.

### Configuração no EasyPanel

1. **Caminhos dos Arquivos**:
   - **docker-compose.yml**:
     ```plaintext
     /etc/easypanel/projects/disparador/novo-crm-sales-center/code/docker-compose.yml
     ```
   - **Dockerfile (backend)**:
     ```plaintext
     /etc/easypanel/projects/disparador/novo-crm-sales-center/code/backend/Dockerfile
     ```
   - **Dockerfile (frontend)**:
     ```plaintext
     /etc/easypanel/projects/disparador/novo-crm-sales-center/code/frontend/Dockerfile
     ```

2. **Configuração das Variáveis de Ambiente**:
   Adicione as variáveis no painel do EasyPanel:
   ```plaintext
   NODE_ENV=production
   DB_HOST=db
   DB_USER=user
   DB_PASSWORD=password
   DB_NAME=mydb
   ```

3. **Iniciar os Serviços**:
   - Certifique-se de usar o `docker-compose.yml` para iniciar todos os serviços de maneira integrada.
   - Execute no EasyPanel:
     ```bash
     docker-compose up --build
     ```

### Estrutura do Projeto

```
projeto/
├── backend/
│   ├── Dockerfile
│   ├── package.json
│   ├── src/
│   └── ...
├── frontend/
│   ├── Dockerfile
│   ├── package.json
│   ├── src/
│   └── ...
├── docker-compose.yml
├── .env
└── README.md
```

### Solução de Problemas
1. **Verificar Logs**:
   ```bash
   docker-compose logs
   ```
2. **Reiniciar Serviços**:
   ```bash
   docker-compose down && docker-compose up --build
   ```

### Contato
Para dúvidas ou suporte, entre em contato com a equipe de desenvolvimento.
