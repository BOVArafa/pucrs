# Aplicação de Segurança em uma API Fullstack com Node.js

Este projeto oferece ao aluno uma oportunidade de aplicar, de forma prática, os principais conceitos de segurança apresentados durante a aula. A implementação de uma API segura, com autenticação OAuth, HTTPS, CORS, SFTP, e envio de e-mails seguros, garante que o aluno compreenda como proteger um sistema web moderno em múltiplas camadas.

O objetivo do projeto é aplicar os 10 conceitos de segurança aprendidos durante o curso, criando uma **API segura** que fornece recursos protegidos, como um sistema de **autenticação de usuários**, **upload de arquivos** e **envio de e-mails**.

## Descrição do Projeto: Sistema de Gerenciamento de Usuários com Autenticação e API Segura

Neste projeto, o aluno deverá desenvolver uma API de gerenciamento de usuários usando **Node.js** e **Express**, que implementa os seguintes recursos:

- **Autenticação de Usuários**: Os usuários poderão criar uma conta, fazer login e acessar recursos protegidos.
- **Autorização com OAuth e JWT**: O projeto deverá utilizar OAuth para login social (como Google), e JWT para autenticação baseada em tokens.
- **Envio de E-mails Seguros**: A API enviará um e-mail de confirmação de conta para novos usuários.
- **Uploads Seguros de Arquivos**: Os usuários poderão fazer upload de arquivos para a aplicação de forma segura.
- **Uso de HTTPS com HSTS**: A aplicação deve rodar em HTTPS, garantindo segurança nas comunicações.
- **Implementação de CORS**: A API deve permitir acesso somente de domínios autorizados.
- **Acesso SSH Seguro**: O servidor de produção deve ser configurado com SSH para gerenciamento.
- **Configuração de IPsec para VPN (opcional)**: O aluno pode configurar uma VPN entre sua máquina local e o servidor de produção para monitoramento de tráfego seguro.

## Requisitos Funcionais e de Segurança:

1. **HTTPS e TLS (SSL/TLS)**
   - O servidor Node.js deve ser configurado para rodar em **HTTPS** com um certificado **SSL/TLS** válido.
   - O aluno deve usar **Let's Encrypt** para configurar um certificado gratuito.

2. **Autenticação com OAuth e JWT**
   - O sistema deve permitir que os usuários façam login usando **Google OAuth**. Para isso, o aluno deve usar o **Passport.js** com a estratégia **OAuth 2.0**.
   - Para as rotas privadas (acesso autenticado), o aluno deverá implementar **JWT** para gerar e validar tokens de autenticação.

3. **SSH Seguro para Acesso ao Servidor**
   - O servidor de produção (ou uma máquina virtual) deve ser acessível via **SSH** para deploys e gerenciamento remoto.
   - O aluno deve gerar **chaves SSH** e configurar o servidor para que apenas autenticação por chave seja permitida.

4. **Envio de E-mails Seguros via SMTP com TLS**
   - Quando um novo usuário se registra, a API deverá enviar um e-mail de confirmação usando **SMTP com TLS**.
   - O aluno deverá usar a biblioteca **nodemailer** para enviar e-mails e configurar o SMTP corretamente.

5. **Upload Seguro de Arquivos com SFTP**
   - O sistema permitirá que os usuários façam upload de arquivos, e esses arquivos deverão ser transferidos de forma segura usando **SFTP**.
   - O aluno deve configurar um servidor de **SFTP** e utilizar a biblioteca **ssh2-sftp-client** em Node.js.

6. **Implementação de HSTS**
   - A aplicação deve forçar o uso de **HTTPS** em todas as conexões, e o cabeçalho **HSTS** deve ser configurado para garantir que os navegadores sempre se conectem ao site de forma segura.
   - O aluno deve configurar **HSTS** no servidor web (NGINX/Express) para reforçar o uso de HTTPS.

7. **Política de CORS**
   - A API deverá ter uma política de **CORS** restritiva, permitindo apenas requisições de domínios específicos (por exemplo, do frontend que consome a API).
   - O aluno deve implementar o middleware de **CORS** no **Express.js** e configurar corretamente os domínios autorizados.

8. **Configuração de IPsec para VPN (Opcional)**
   - Como uma funcionalidade adicional, o aluno pode configurar uma **VPN** usando **IPsec** para proteger a comunicação entre seu servidor local e o servidor de produção.
   - O aluno pode utilizar ferramentas como **strongSwan** para configurar a VPN.

## Passos para o Desenvolvimento do Projeto:

### Passo 1: Configuração do Servidor
1. Configurar um servidor de produção (VPS na **Hostinger**, **AWS**, ou qualquer outro provedor).
2. Acessar o servidor via **SSH** configurando **autenticação por chave SSH**.
3. Configurar um domínio ou subdomínio para rodar a API usando **HTTPS** com certificado SSL de **Let's Encrypt**.

### Passo 2: Configuração do Projeto Node.js
1. Criar uma API RESTful em **Node.js** com **Express.js**.
2. Implementar as rotas para:
   - Registro de usuários (POST `/register`)
   - Login de usuários com Google OAuth (GET `/auth/google`)
   - Upload de arquivos (POST `/upload`)
   - Envio de e-mail de confirmação de conta (POST `/send-confirmation`)

### Passo 3: Implementação de Autenticação e Autorização
1. Configurar **OAuth 2.0** com **Google** usando **Passport.js** para login social.
2. Implementar **JWT** para autenticação de rotas privadas. O token deve ser gerado no login e enviado nas requisições subsequentes para rotas protegidas.

### Passo 4: Segurança da API
1. Configurar **HTTPS** para proteger todas as comunicações entre o cliente e o servidor.
2. Configurar o cabeçalho **HSTS** no servidor para reforçar o uso de HTTPS.
3. Implementar **CORS** para restringir o acesso da API aos domínios autorizados.

### Passo 5: Envio de E-mails Seguros
1. Implementar envio de e-mails de confirmação de conta usando **nodemailer** com suporte a **TLS**.
2. Configurar um serviço de SMTP seguro, como **SendGrid** ou **Mailgun**, para o envio de e-mails.

### Passo 6: Upload Seguro de Arquivos
1. Implementar a rota de upload de arquivos.
2. Configurar **SFTP** para transferir os arquivos de forma segura entre o cliente e o servidor, usando a biblioteca **ssh2-sftp-client**.

### Passo 7: Testes e Deploy
1. Testar todas as rotas da API para garantir que a autenticação, o upload de arquivos, o envio de e-mails e a segurança estejam funcionando corretamente.
2. Fazer o deploy da aplicação no servidor de produção.

## Ferramentas e Frameworks para o Projeto:
- **Node.js** com **Express.js**: Para criar a API RESTful.
- **Passport.js**: Para implementar a autenticação OAuth.
- **jsonwebtoken**: Para trabalhar com JWT na autenticação.
- **nodemailer**: Para envio de e-mails com SMTP seguro.
- **ssh2-sftp-client**: Para upload de arquivos via SFTP.
- **Let's Encrypt**: Para obter certificados SSL.
- **OpenSSH**: Para gerenciamento seguro do servidor via SSH.
- **Helmet.js**: Para configurar HSTS e outras medidas de segurança no Express.
- **strongSwan** (opcional): Para configurar IPsec e VPN, caso o aluno escolha essa funcionalidade.

## Entregáveis do Projeto
- Código-fonte da API com todas as funcionalidades implementadas.
- Documentação explicando o uso de cada um dos 10 protocolos de segurança, como foram aplicados no projeto e as ferramentas usadas.
- Tutorial detalhado para a configuração do servidor e do ambiente de produção (deploy).
- Testes de segurança comprovando a eficácia das implementações, como logs de acessos SSH, testes de CORS, e testes de e-mails seguros.



