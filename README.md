# Task Manager API

[![Build Status](https://travis-ci.org/wdmeida/task-manager-api.svg?branch=master)](https://travis-ci.org/wdmeida/task-manager-api)

## O Projeto

Projeto desenvolvido durante o Curso de [**API Rails 5 + Aplicação Angular 4 + App Móvel NativeScript**](https://www.udemy.com/rails-angular-nativescript-apis-e-apicativos-android-ios-e-web/learn/v4/overview). O projeto consiste no desenvolvimento de uma API de gerenciamento de tarefas, utilizando testes, com Ruby on Rails 5.

O App frontend que fará o consumo desta API (**em desenvolvimento**) pode ser acessado através do link abaixo:

* [Task Manager App](https://github.com/wdmeida/task-manager-api)


## Executando o projeto

Para executar o projeto, entre no diretório 'task-manager-api', no terminal e instale as dependências:

```$ bundle install```

O banco de dados utilizado foi o MySQL. Caso queira modificar o mesmo, basta alterar as configurações do arquivo no endereço ***'config/database.yml'*** com as configurações desejadas, logo após executar o comando abaixo para criar a base de dados e executar as migrações:

```$ rails db:create db:migrate```

Após isso, inicie o servidor da aplicação:

```$ rails server```

Utilize o comando abaixo para verificar as rotas disponíveis:

```$ rails routes```


