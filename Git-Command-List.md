# Comandos Mais Usados

## INIT

O comando ```git init``` te permite transformar um simples diretório no seu computador em um repositório Git, pronto para registrar e acompanhar todas as mudanças que você fizer no seu projeto.
```
git init
```

<br><br>

## ADD

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

<br><br>

## COMMIT

O comando ```git commit``` é essencial no Git para registrar as alterações feitas em seu projeto e criar um "instantâneo" das mudanças preparadas no projeto/código em um determinado momento. 
```
git add index.html app.css main.js
git commit -m "Atualização da página inicial e do CSS principal, adição de nova funcionalidade no JavaScript"
```

<br><br>

Você pode usar opções adicionais para personalizar o commit, como:

- ```-A```: Adiciona automaticamente todos os arquivos modificados no diretório de trabalho.
- ```--verbose```: Mostra mais informações sobre o commit, incluindo o hash do commit e os arquivos modificados.
- ```--amend```: Permite modificar a última mensagem do commit sem criar um novo commit.
```
git commit -A -m "Realizei diversas alterações no projeto"
```

<br><br>

## STATUS

Verifica o status do commit, se existe alterações a serem "comitadas"
```
git status
```
