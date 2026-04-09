# SISELO - Documentacao

Este repositorio contem a documentacao oficial do projeto SISELO (Sistema Integrado de Saude).

O objetivo e centralizar as informacoes tecnicas e organizacionais do sistema, ajudando no entendimento da arquitetura, funcionamento e desenvolvimento do projeto.

---

## Sobre o Projeto

O SISELO e um sistema web desenvolvido para apoiar a integracao entre o Centro de Atencao ao Diabetes e Hipertensao (CADH) e as Unidades Basicas de Saude (UBS).

A plataforma busca centralizar informacoes relacionadas ao acompanhamento de pacientes, facilitando a comunicacao entre as unidades de saude e contribuindo para a continuidade do cuidado.

---

## Repositorios do Projeto

O projeto SISELO esta dividido em diferentes repositorios:

- `Siselo-Users` - backend e banco de dados da aplicacao
- `Siselo-Admin` - funcionalidades administrativas do sistema
- `Siselo-Frontend` - interface visual da aplicacao
- `Siselo-DOC` - documentacao e integracao local da stack

---

## Objetivo da Documentacao

Este repositorio tem como finalidade:

- registrar a documentacao tecnica do sistema
- descrever a arquitetura do projeto
- documentar funcionalidades e modulos do sistema
- organizar diagramas e modelagens do banco de dados
- registrar decisoes tecnicas do desenvolvimento
- facilitar o entendimento do projeto por novos desenvolvedores

---

## Estrutura da Documentacao

A documentacao esta organizada da seguinte forma:

- `docs/` - documentacao tecnica do sistema
- `diagramas/` - diagramas de arquitetura, fluxos e modelagem
- `anexos/` - materiais de apoio e referencias

---

## Integracao Local com Docker

O repositorio `Siselo-DOC` tambem e o ponto central de integracao local dos demais repositorios do projeto.

O arquivo `docker-compose.yml` deste repositorio orquestra:

- `db` - banco MySQL compartilhado
- `users` - backend principal
- `repo-browser` - navegador interno dos repositorios do workspace
- `gateway` - entrada unica da homologacao em uma porta so

### Como subir tudo

Dentro da pasta `Siselo-DOC`, execute:

```bash
docker compose up --build
```

Ou em segundo plano:

```bash
docker compose up -d --build
```

Ou pelo atalho PowerShell:

```powershell
.\scripts\homolog-up.ps1
```

Para encerrar a stack:

```bash
docker compose down
```

### Porta usada

- stack unificada - `http://localhost:8080`

### Rotas principais

- aplicacao principal (`Siselo-Users`) - `http://localhost:8080/`
- hub da homologacao - `http://localhost:8080/hub/`
- documentacao/repo `Siselo-DOC` - `http://localhost:8080/docs/`
- repo `Siselo-Users` - `http://localhost:8080/users-repo/`
- repo `Siselo-Admin` - `http://localhost:8080/admin-site/`
- repo `Siselo-Frontend` - `http://localhost:8080/frontend-site/`
- navegador geral de todos os repositorios - `http://localhost:8080/repos/`

### Observacoes

- o banco `db` nao e exposto para fora do Docker, evitando conflito de porta local
- o `Siselo-DOC` continua como ponto central da integracao local
- o gateway aceita tanto as rotas novas quanto redirecionamentos antigos com `/public/*` do `Siselo-Users`
- `Siselo-Admin` e `Siselo-Frontend` ainda nao possuem aplicacoes completas neste workspace, por isso sao expostos como repositorios navegaveis pela mesma porta ate virarem apps executaveis

---

## Licenca

Este projeto esta licenciado sob a Apache License 2.0.

Consulte o arquivo `LICENSE` para mais informacoes sobre os termos da licenca.
