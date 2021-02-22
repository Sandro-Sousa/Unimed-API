# Projeto UnimedAPI
## Criando uma API com Asp.NetCore Utilizando Padrão Fluent Api e Metodologia DDD, Projeto Baseado na Unimed. 

## Tecnologias Usadas

- [.NET 5] - Framework da Microsoft Para Desenvolver Diversos Tipos de Projetos.
- [Entity Framework] - Framework Para Mapeamento de Dados Relacionais.
- [SQLServer] -Gerenciador de Banco de Dados Relacionais.
- [Swagger] - framework Para Interface de Uma APi Para, Documentar, Visualizar, Consumir APIRest.


# Como Utilizar

## Configurando String de Conexão
Para que o Projeto Utilize a base de Dados é nescessario Criar Uma String de Conexão dentro do Arquivo appsettings.json, Ele Geralemte Fica Localizado Na Pasta da API, Nesse Caso "Unimed.API" Nome do Arquivo:appsettings.json.
 Dentro do appsettings.json Modificar a connection string, Utilizando o Exemplo Abaixo:
 
  "ConnectionStrings": {
    "DefaultConnection": "Data Source=Nome do Servidor do Banco de Dados;Initial Catalog=UnimedDb;User ID=sa;Password=Senha do Banco"
  },

Caso Tenha Dúvida Consultar o Artigo sobre ConnectionString:
https://www.connectionstrings.com/sql-server/

## Configurar o Arquivo com a String de Conexão 
dentro do Visual studio vá para a Barra de Menu na Parte Superior, Selecionar Tools(Ferramentas) > Nuget Package Manager(Gerenciador de pacotes Nuget) > package manager console(console do gerenciador de pacotes) Irá Abrir um Terminal Abaixo Para Adicionar os Comandos necessários Para Criar as Migrations, Selecione Unimed.Repository no combo box e Insera os Seguintes Comandos:

### Criar Migração
```sh
Add-Migration Nome
```

### Criar tabelas do Bando de Dados:

```sh
Update-Database
```


Atenção! Utilize o Script SQL Incluso nesse Projeto para Popular o Banco de Dados Antes de Usar API.



## Funcionalidades

| Metódo | Funcionalidade | Consulta |
| ------ | ------ | ------- |
| GET | Busca o Paciente | Buscar Consulta |
| GET ID | Busca Paciente Por ID | Busca Consulta Por ID |
| POST | Cadastra Paciente | Cadastra Consulta |
| PUT | Altera Dados do Paciente por ID | Altera Dados da Consulta por ID |
| DELETE | Exclui Dados do Paciente por ID |
