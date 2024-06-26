# Lista de Comandos Básicos do Git

Comando para inicializar o repositório Git na pasta selecionada:
```
git init
```
> [!NOTE]
> _Veja que será criado uma pasta ".git" oculta dentro do diretório onde foi usado o comando_

<br><br>
 
## Configurações Iniciais

Observe a imagem abaixo e veja as informações a seguir:
![image001](/assets/image001.png)

As configurações seguem a hierarquia de dentro pra fora, do mais específico (repositório) ao menos específico (sistema).

Configurações ao nivel de ***Repositório***. Destacado na imagem em cor cinza e ao centro.
```
git config --local ...
```

Configurações para o nivel de ***Usuários***. Destacado na imagem em cor verde.
```
git config --global ...
```

Configurações para o nivel de ***Sistema***. Destacado na imagem em cor azul.
```
git config --system ...
```


### Exemplos:

```git config --local color.branch white``` Define a cor branco para o repositorio

```git config --local --unset color.branch``` Retira a cor e deixa como padrão

```git config --global user.name Julio Gaiotto``` Define o nome do usuario

```git config --global user.email nukleo.dev@gmail.com``` Define o email do usuario

<br><br>

## Aliases

Aliases são atalhos para comandos
Veja o exemplo abaixo:
```
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
```
<details>

<summary>Observação o conteudo coringa </summary>

alias.hist &rarr; nome do alias

%h &rarr; hash abrevidada do comit

%ad &rarr; data do comit

%s &rarr; comentario

%d &rarr; decorações do commit

%an &rarr; Nome do Autor

--graph &rarr; define o formato de grafico ASCII

--date-short &rarr; data curta

</details>

> [!TIP]
> Modo de uso:
> ```
> git hist
> ```

<br><br>

## Áreas do Git

```mermaid
flowchart LR
    id1[Computador Local] --> id2[Area de Trabalho]  
    id2[Area de Trabalho] --> id3[Area de Preparo]
    id3[Area de Preparo] --> id4[Repositorio Web]    
```


<!--
<div align="center" markdown="1">
[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)&#160;
</div>
-->
