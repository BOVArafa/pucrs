# Introdução à Segurança de Software

!!! note "O que aprendo na aula?"

    Em sala de aula esse assunto é apresentado de forma mais ortodoxa, o que pode deixar o aluno com a impressao de que para desenvolver uma solucao web fullstack tera que se tornar um genio da criptografia.

    A intencao deste material é servir de suporte introdutorio às aulas considerando o perfil de um futuro profissional em *web development*.

Para um desenvolvedor **web fullstack**, a segurança é um aspecto crucial, pois ele lida tanto com o **frontend** quanto com o **backend** de aplicações. É essencial conhecer e implementar corretamente os principais protocolos de segurança para garantir a integridade, privacidade, e autenticidade dos dados e das comunicações. Abaixo estão os principais protocolos de segurança que um desenvolvedor fullstack deve conhecer:

## HTTPS
- **O que é**: Versão segura do protocolo HTTP que usa **SSL/TLS** para criptografar as comunicações entre o cliente (navegador) e o servidor.
- **Por que é importante**: HTTPS é fundamental para proteger dados sensíveis (como senhas, dados bancários, etc.) durante a transmissão. Sem HTTPS, os dados podem ser interceptados por terceiros.
- **Aplicação prática**: Implementar certificados **SSL/TLS** no servidor web, garantindo que todas as comunicações sejam criptografadas. Usar serviços como **Let's Encrypt** para gerar certificados gratuitos.

## SSL/TLS
- **O que é**: Protocolos que fornecem criptografia para garantir a **confidencialidade**, **integridade** e **autenticidade** das comunicações na web.
- **Por que é importante**: SSL/TLS sustentam a segurança do HTTPS, garantindo que os dados enviados entre cliente e servidor sejam protegidos contra interceptação e modificações.
- **Aplicação prática**: Entender o funcionamento básico de **certificados digitais** e como configurar **SSL/TLS** em servidores web como **NGINX** ou **Apache**.

## OAuth
- **O que é**: Protocolo de autorização que permite que um aplicativo acesse recursos de outro serviço em nome de um usuário, sem compartilhar suas credenciais (senha).
- **Por que é importante**: OAuth é amplamente usado para implementar **Login com Google/Facebook**, permitindo que os usuários façam login em diferentes aplicações de forma segura, sem precisar criar novas contas ou compartilhar senhas.
- **Aplicação prática**: Implementar OAuth para login de terceiros, utilizando **Passport.js** no **Node.js** ou **Auth0**, e usar **tokens** para gerenciar sessões.

## JWT
- **O que é**: Um padrão para criar tokens compactos e seguros que podem ser usados para **autenticação** e troca de informações.
- **Por que é importante**: JWTs são frequentemente usados para autenticação em **APIs RESTful**, onde o token é enviado no cabeçalho das requisições para validar o usuário.
- **Aplicação prática**: Utilizar JWT para gerenciar **autenticação de usuários** e proteger APIs. Ferramentas como **jsonwebtoken** (biblioteca Node.js) são amplamente usadas.

## SSH
- **O que é**: Protocolo para acessar servidores de forma segura por meio de criptografia, geralmente usado para acessar o **backend** de servidores remotamente.
- **Por que é importante**: SSH é essencial para gerenciar servidores, implementar automações, e transferir dados de forma segura entre sistemas. Permite login remoto sem expor credenciais.
- **Aplicação prática**: Usar **OpenSSH** para se conectar a servidores em nuvem (AWS, VPS), realizar deploys de aplicações e gerenciar servidores remotamente com segurança.

## SFTP
- **O que é**: Protocolo seguro de transferência de arquivos que usa **SSH** para garantir que os dados sejam transferidos de forma criptografada.
- **Por que é importante**: SFTP é crucial para transferir arquivos entre cliente e servidor de maneira segura, protegendo os dados de interceptação ou alterações.
- **Aplicação prática**: Usar **SFTP** em vez de **FTP** tradicional, utilizando ferramentas como **FileZilla** ou **WinSCP** para transferências seguras de arquivos.

## HSTS
- **O que é**: Protocolo que força os navegadores a sempre se conectarem a um site via **HTTPS**, mesmo que o usuário tente acessar o site via HTTP.
- **Por que é importante**: Garante que o usuário não seja redirecionado para uma versão não segura do site, prevenindo ataques de downgrade como o **SSL stripping**.
- **Aplicação prática**: Configurar o cabeçalho **HSTS** no servidor web, seja no **NGINX**, **Apache**, ou via **Helmet.js** (middleware para Express.js).

## CORS
- **O que é**: Mecanismo de segurança implementado nos navegadores que permite ou restringe requisições HTTP feitas de um domínio diferente do domínio do recurso.
- **Por que é importante**: Impede que sites maliciosos acessem recursos de outro site indevidamente, protegendo contra ataques **cross-site**.
- **Aplicação prática**: Configurar adequadamente os cabeçalhos **CORS** em APIs que expõem recursos para domínios diferentes. Usar o middleware **CORS** no **Express.js** para controlar o acesso.

## IPsec
- **O que é**: Protocolo de segurança que autentica e criptografa pacotes de dados em uma rede IP, garantindo comunicação segura entre hosts.
- **Por que é importante**: Usado em redes privadas e **VPNs** para proteger o tráfego de rede. Fundamental para desenvolvedores que lidam com infraestrutura de rede.
- **Aplicação prática**: Usar **IPsec** para configurar VPNs seguras, protegendo a comunicação entre redes distribuídas ou dispositivos e servidores remotos.

## SMTP
- **O que é**: Protocolo para envio de e-mails que pode ser protegido com **TLS** para garantir a segurança dos dados transmitidos.
- **Por que é importante**: Para desenvolvedores que implementam sistemas de envio de e-mails transacionais ou notificações, o uso de **SMTP seguro** é essencial para evitar interceptações.
- **Aplicação prática**: Configurar corretamente o envio de e-mails com **TLS** usando ferramentas como **nodemailer** no **Node.js** ou serviços como **SendGrid**.

---

Ao conhecer esses protocolos de segurança e entender como aplicá-los, um desenvolvedor fullstack estará melhor preparado para proteger as comunicações, dados e operações de suas aplicações, garantindo a segurança do sistema e dos usuários.
