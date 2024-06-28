# Git - Comandos Mais Usados

<br>

## CONFIG - Configurando o Git

Para vincular sua conta Git, utilize a sintaxe:
```
git config --global user.name "<seu_nome>"
git config --global user.email "<seu_email>"
```

<br>

## CLONE - Clonar um Repositorio Existente

Se você já possui um repositório Git em um serviço de hospedagem como GitHub, utilize o comando ```git clone``` para cloná-lo no seu computador. Isso criará uma cópia local do repositório, incluindo todos os seus arquivos e histórico.
```
git clone https://<url_do_repositorio> <nome_do_diretorio_local>
```

<br>

## INIT - inicializando um repositório

O comando ```git init``` te permite transformar um simples diretório no seu computador em um repositório Git, pronto para registrar e acompanhar todas as mudanças que você fizer no seu projeto.
```
git init
```

<br>

## ADD - Adicionando arquivos

O ```git add``` oferece diversas opções para selecionar os arquivos que você deseja adicionar, desde arquivos individuais até diretórios inteiros. Você também pode usar padrões para incluir ou excluir grupos específicos de arquivos.

+ Adicionar um único arquivo:
```
git add arquivo.txt
```

+ Adicionar todos os arquivos modificados no diretório de trabalho:
```
git add .
```

+ Adicionar todos os arquivos em um diretório específico:
```
git add diretorio/
```

+ Adicionar arquivos com base em um padrão:
```
git add *.js *.css
```

<br>

## COMMIT - Salvando arquivos e alterações feitas

O comando ```git commit``` é essencial no Git para registrar as alterações feitas em seu projeto e criar um "instantâneo" das mudanças preparadas no projeto/código em um determinado momento. 
```
git add index.html app.css main.js
git commit -m "Atualização da página inicial e do CSS principal, adição de nova funcionalidade no JavaScript"
```

<br>

Você pode usar opções adicionais para personalizar o commit, como:

- ```-A```: Adiciona automaticamente todos os arquivos modificados no diretório de trabalho.
- ```--verbose```: Mostra mais informações sobre o commit, incluindo o hash do commit e os arquivos modificados.
- ```--amend```: Permite modificar a última mensagem do commit sem criar um novo commit.
```
git commit -A -m "Realizei diversas alterações no projeto"
```

<br>

## STATUS - Verificando o que foi feito

Verifica o status do commit, se existe alterações a serem "comitadas"
```
git status
```
