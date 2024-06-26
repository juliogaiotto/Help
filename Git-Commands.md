# Lista de Comandos Básicos do Git

Comando para inicializar o repositório Git na pasta selecionada:
<br>
<code> git init </code>
<br>
<i>Note que será criado uma pasta ".git" oculta dentro do diretório onde foi usado o comando </i>

<br><br>
<details>
<sumary> Configurações Iniciais </sumary>
## Configurações Iniciais
Observe a imagem abaixo e veja as informações a seguir:
![image001](https://github.com/juliogaiotto/Help/blob/main/assets/image001.png)

As configurações seguem a hierarquia de dentro pra fora, do mais específico (repositório) ao menos específico (sistema).

Configurações ao nivel de ***Repositório***. Destacado na imagem em cor cinza e ao centro.
<br>
<code>git config --local ... </code>

Configurações para o nivel de ***Usuários***. Destacado na imagem em cor verde.
<br>
<code>git config --global ... </code>

Configurações para o nivel de ***Sistema***. Destacado na imagem em cor azul.
<br>
<code>git config --system ... </code>


### Exemplos:

<code>git config --local color.branch white</code> Define a cor branco para o repositorio

<code>git config --local --unset color.branch</code> Retira a cor e deixa como padrão

<code>git config --global user.name Julio Gaiotto</code> Define o nome do usuario

<code>git config --global user.email nukleo.dev@gmail.com</code> Define o email do usuario
</details>
<br><br>

## Aliases
Aliases são atalhos para comandos

<code>git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short' </code>

%h &raquo hash abrevidada do comit

%ad ---> data do comit

%s ==>

%d => 


<div align="center" markdown="1">
[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)&#160;
</div>
