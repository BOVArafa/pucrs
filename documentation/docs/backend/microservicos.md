# Introducao a Microservicos


Temas
- SOA
- Monolito
  - Base de dados compartilhada
  - Funcoes interligadas enre si na mesma base de codigo.
  - Todas as funcionalidades do negocio implementadas em um unico processo
  - Caracterisitcas: agilidade no desenvolvimento, baixo trafigo de rede e deploy simplificado
  - Problemas: dificil manutencao e baixa escalibilidade (performance = + infra)
  - Exemplo de software Monolito: ERP SAP ([medium article sore arquitetura SAP](https://medium.com/@BernhardBuhl/monolith-vs-sap-vs-microservices-65709e8450db))
  - Relacao entre integridade de dados e tipos de arquitetura: monolitico (SAP) garante uma maior integridade de dados do que um Totvs? Sistemas monoliticos sao mais seguros?
  - Sistemas monolicos normalmente sao on-premise

- Microservicos
  - Base de dados unica
  - Comunicacao atraves de APIs
    - As APIs sao definidas atraves de contratos. O que sao estes contratos?
  - Sistemas de microservicos normalmente sao hospedados em cloud services
  - Relacao Containers e microservicos
    - Docker: DockerFile (script de acoes para criacao de imagens)
    - Docker Registry: repositorio de armazenamento e versionamento de imgagens.
      - Possivel acessar o hub de imagens na nuvem ou acessar registros locais/de servidores.
    - Entender sobre arquitetura docker: docker host, docker daemon, etc
  - Relevancia do Domain Driven Design para Microservicos
  !!! note "Estudo de caso"

        Caso de transicao para cloud: alteracao de enderecos IP para DNS (IP fixo muito custoso)

  - Domain Driven Design: principais caracteristicas e conceitos (Linguagem ubiqua)
    - Event Storming

- Message Broker?
  - Amazon MQ; Google Pub/Sub; Kafka

- Serveless
  - FaaS: Function as a Service
- Kubernetes
  - Qual relacao entre kubernetes e microservicos
  - Como o kubernetes facilita a vida do desenvolvedor com relacao a criacao de message brokers?


## Pagina 1: Intro

- [] Service-Based Architectures
  - [] SOA
  - [] Microservicos
  - [] Serverless
  - [] Self Contained Service
  - [] Event Driven
- [] Monolito



