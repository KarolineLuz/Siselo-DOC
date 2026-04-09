# Guia Rapido da Homologacao do Siselo

Este guia serve para qualquer pessoa do time subir e fechar a stack local de homologacao do Siselo no proprio computador.

## Pre-requisitos

- Docker Desktop instalado
- Docker Desktop aberto e com o engine em execucao
- Os repositorios do Siselo no mesmo diretorio pai

Estrutura esperada:

```text
<pasta-base>\
  Siselo-Admin\
  Siselo-DOC\
  Siselo-Frontend\
  Siselo-Users\
```

## Como abrir o servidor

1. Abra um terminal dentro da pasta `Siselo-DOC`.
2. Escolha uma das formas abaixo.

### Opcao 1: direto no terminal com Docker

Para subir mostrando logs no terminal:

```bash
docker compose up --build
```

Para subir em segundo plano:

```bash
docker compose up -d --build
```

### Opcao 2: script PowerShell

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\homolog-up.ps1
```

Se quiser subir em segundo plano e liberar o terminal:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\homolog-up.ps1 -d
```

## Como fechar o servidor

Dentro da pasta `Siselo-DOC`, rode:

### Opcao 1: direto no terminal com Docker

```bash
docker compose down
```

### Opcao 2: script PowerShell

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\homolog-down.ps1
```

## Atalhos prontos

Tambem existem dois atalhos para Windows dentro da pasta `Siselo-DOC`:

- `.\abrir-homolog.cmd`
- `.\fechar-homolog.cmd`

## Enderecos principais

- aplicacao principal: `http://localhost:8080/`
- hub da homologacao: `http://localhost:8080/hub/`
- navegador geral dos repositorios: `http://localhost:8080/repos/`

## Observacoes

- Se preferir, use sempre os comandos diretos `docker compose ...` no terminal e ignore os scripts PowerShell.
- Se o PowerShell bloquear scripts, use os comandos com `-ExecutionPolicy Bypass` ou os arquivos `.cmd`.
- Se a porta `8080` estiver ocupada, ajuste a porta no compose antes de subir a stack.
- Se o Docker retornar erro de permissao no Windows, pode ser necessario abrir o Docker Desktop como administrador ou pedir acesso ao grupo `docker-users`.
