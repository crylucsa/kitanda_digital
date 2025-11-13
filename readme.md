
---

```markdown
# 🍎 Kitanda Digital — Projeto de Banco de Dados  

Este projeto foi desenvolvido como parte das atividades do **2º período do curso de Desenvolvimento de Sistemas**, com o objetivo de praticar a **criação e manipulação de bancos de dados relacionais** utilizando **MySQL**.

O projeto simula o sistema de uma marketplace chamada **Kitanda Digital**, que gerencia **vendedores, produtos e vendas**.

---

## 🧩 Estrutura do Projeto  

O repositório está organizado da seguinte forma:

```

📁 kitanda-digital/
├── 📄 create_database.sql        # Criação do banco de dados e tabelas
├── 📄 insert_data.sql            # Inserção dos dados iniciais
├── 📄 views.sql                  # Criação das views solicitadas
├── 📄 procedures.sql             # Procedures de cadastro, vendas e reajuste de preços
├── 📄 reports_queries.sql        # Relatórios e consultas analíticas
└── 📄 README.md                  # Documentação do projeto

```

---

## 🧠 Tecnologias Utilizadas  

- **MySQL** — principal sistema de gerenciamento de banco de dados relacional  
- **DBeaver / MySQL Workbench** — para execução e testes das queries  
- **Notion** — para documentação do projeto  

---

## 🚀 Objetivos do Projeto  

- Criar um banco de dados relacional completo no MySQL  
- Desenvolver e testar **views** e **procedures**  
- Gerar **relatórios e consultas analíticas** com funções de agregação e `JOIN`  
- Compreender como diferentes entidades se relacionam em um sistema de vendas online  

---

## 🧾 Funcionalidades  

O banco de dados inclui:

### 📋 Tabelas
- **vendedores:** informações cadastrais dos vendedores  
- **produtos:** catálogo de produtos disponíveis  
- **vendas:** registro de todas as vendas realizadas  

### 🔍 Views
- `vw_produtos_detalhados` — mostra os produtos com detalhes do vendedor  
- `vw_total_vendas_por_vendedor` — soma o total vendido por vendedor  
- `vw_vendas_mensais` — apresenta o faturamento mensal  
- `vw_produtos_por_categoria` — exibe dados consolidados por categoria  

### ⚙️ Procedures
- `sp_cadastrar_vendedor` — adiciona um novo vendedor  
- `sp_registrar_venda` — registra uma nova venda  
- `sp_atualizar_preco_categoria` — reajusta preços de produtos de uma categoria  

### 📊 Relatórios
- Ranking de produtos mais vendidos  
- Vendedor com maior valor de vendas  
- Total de vendas por categoria e vendedor  
- Variação percentual de vendas mês a mês  

---

## 🧪 Testes  

O banco foi testado com:
- **20 vendedores**
- **50 produtos**
- **150 vendas**

Esses dados garantem que todas as consultas e relatórios retornem resultados consistentes e realistas.

---

## 📚 Aprendizados  

Durante o desenvolvimento, foram reforçados conceitos como:
- Estrutura e modelagem de banco de dados  
- Relacionamentos (PK, FK)  
- Criação e uso de **JOINs, VIEWS, PROCEDURES e funções de agregação**  
- Montagem de consultas analíticas  

---

## 👥 Equipe  

Desenvolvido por estudantes do **2º período de Desenvolvimento de Sistemas**, como parte do aprendizado prático de **Banco de Dados I**.  
> Projeto acadêmico — SENAI / SESI  

---

## 📄 Licença  

Este projeto é de uso **educacional** e está disponível sob a licença **MIT**.  
Sinta-se livre para utilizar e modificar, com os devidos créditos.

---
```

---

