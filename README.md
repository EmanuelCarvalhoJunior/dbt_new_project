# Projeto de Transformação de Dados com dbt e Snowflake

## Visão Geral

Este projeto utiliza o **dbt (data build tool)** para realizar transformações de dados e o **Elementary Data** para garantir a qualidade dos dados. As transformações são executadas em um banco de dados Snowflake.

## Estrutura do Projeto

- **dbt**: Usado para transformações de dados.
- **Snowflake**: Data warehouse em nuvem usado como banco de dados alvo para as transformações.
- **Elementary Data**: Ferramenta para monitorar e garantir a qualidade dos dados.

![image](https://github.com/EmanuelCarvalhoJunior/dbt_new_project/assets/91102378/ce77aa33-10d9-4fdb-a828-6343f6eb9c7f)


## Requisitos

- Python 3.8+
- dbt
- Conta Snowflake
- Elementary Data

## Configuração

### Passo 1: Clonar o Repositório

```bash
git clone https://github.com/seu-usuario/seu-repo.git
cd seu-repo
````
### Passo 2: Criar um Ambiente Virtual
```bash
python -m venv venv
source venv/bin/activate  # No Windows use `venv\Scripts\activate`
```
