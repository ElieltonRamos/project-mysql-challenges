# Project MySql Challenges

<p align="center">
  <img src="docker.png" alt="Docker Universe" width="300px">
  <img src="javascript.jpg" alt="Docker Universe" width="300px">
  <img src="mysql.webp" alt="Docker Universe" width="300px">
</p>

## Descrição

Com o projeto "Mysql Challenges," tive a oportunidade de aprender a lidar com banco de dados e SQL. Aprendi a normalizar uma planilha de dados não normalizados, criando tabelas no banco de dados e, em seguida, gerei queries SQL para extrair informações úteis. Normalização de tabelas é uma parte essencial, permitindo a organização eficiente dos dados em estruturas lógicas e evitando redundâncias. Ao gerar queries SQL, realizei uma variedade de tarefas, desde calcular estatísticas financeiras até criar rankings e extrair informações detalhadas do banco de dados. Essas habilidades são fundamentais para aprimorar minha capacidade de trabalhar com bancos de dados relacionais e realizar análises detalhadas de dados de maneira eficaz.

## Tabela de Conteúdo

- [Instalação](#instalação)
- [Sobre o projeto](#uso)
- [Contribuição](#contribuição)
- [Licença](#licença)

## Tecnologias Utilizadas

- [Docker](https://www.docker.com/)
- [Docker-Compose](https://docs.docker.com/compose/)
- [Jest](https://jestjs.io/pt-BR/)
- [JavaScript](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript)
- [MySql](https://www.mysql.com/)

## Instalação

## Orientações

<summary>Este projeto foi desenvolvido para rodar com docker</summary>

[Como Instalar o docker](https://docs.docker.com/engine/install/ubuntu/)

<summary>Os testes para as validações dos desafios foram escritos em javascript usando o jest</summary>

[Sobre o Jest](https://jestjs.io/pt-BR/docs/getting-started)

<summary> 🐳 Início rápido com Docker Compose</summary><br>

```bash
docker-compose up -d
docker exec -it one_for_all bash
npm test # roda todos os testes
npm test -- -t "01" # rodando apenas o teste do requisito 01
```

## Sobre o projeto

Este projeto envolve diversos desafios de consulta SQL. Inicialmente, normalizei uma planilha de dados não normalizados, criando tabelas no banco de dados e populando-as. A seguir, realizei vários desafios de consulta SQL:

1. **Normalização da Base de Dados**

   - Crie um banco de dados chamado "SpotifyClone".
   - Forneça as queries necessárias para criar tabelas normalizadas com base nas regras de negócio da planilha SpotifyClone.
   - Forneça as queries necessárias para popular as tabelas do banco de dados de acordo com os dados da planilha.
   - Ajuste o arquivo de configurações "desafio1-json" para mapear as informações necessárias.

2. **Quantidade Total de Canções, Artistas e Álbuns**

   - Crie uma QUERY que retorne a quantidade total de canções, artistas e álbuns no banco de dados normalizado.
   - Utilize chaves estrangeiras ou sub-queries, se necessário.

3. **Músicas Ouvidas por Pessoa Usuária**

   - Crie uma QUERY que exiba o nome da pessoa usuária, a quantidade de músicas ouvidas por ela e o total de minutos ouvidos.
   - Os resultados devem estar agrupados pelo nome da pessoa usuária e ordenados em ordem alfabética.

4. **Pessoas Usuárias Ativas em 2021**

   - Crie uma QUERY que mostre as pessoas usuárias que estavam ativas a partir de 2021, com base na data mais recente no histórico de reprodução.
   - A QUERY deve exibir o nome da pessoa usuária e seu status (ativa ou inativa) e estar ordenada em ordem alfabética.

5. **Músicas Mais Tocadas**

   - Crie uma QUERY que retorne as duas músicas mais tocadas no momento.
   - A QUERY deve exibir o nome da canção e o número de reproduções, ordenados em ordem decrescente pelo número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética.

6. **Faturamento da Empresa**

   - Crie uma QUERY que exiba o menor valor de plano, o maior valor de plano, o valor médio dos planos das pessoas usuárias e o faturamento total da empresa com base nos planos.
   - Arredonde os valores monetários para duas casas decimais.

7. **Álbuns por Pessoas Artistas**

   - Crie uma QUERY que liste os álbuns produzidos por cada pessoa artista, ordenados pela quantidade de seguidores que eles possuem.
   - A QUERY deve exibir o nome do artista, o nome do álbum e o número de seguidores. Ordene os resultados em ordem decrescente pelo número de seguidores. Em caso de empate, ordene pelo nome do artista e, se necessário, pelo nome do álbum.

8. **Álbuns de "Elis Regina"**

   - Crie uma QUERY que mostre os álbuns produzidos pela pessoa artista "Elis Regina", ordenados pelo nome do álbum em ordem alfabética.

9. **Músicas no Histórico de Reprodução**

   - Crie uma QUERY que retorne a quantidade de músicas no histórico de reprodução da pessoa usuária "Barbara Liskov".

10. **Normalização da Tabela de Canções Favoritadas**

    - Normalize a tabela da planilha "SpotifyClone-fav-songs".
    - Crie uma tabela no banco de dados.
    - Forneça as queries para popular a tabela e ajuste o arquivo de configurações "desafio10.json".

11. **Álbuns com Mais Músicas Favoritadas**

    - Crie uma QUERY que exiba o top 3 de álbuns com mais músicas favoritadas.
    - A QUERY deve mostrar o nome do álbum e quantas vezes as músicas do álbum foram favoritadas.

12. **Ranking de Artistas por Favoritadas**

    - Crie uma QUERY que classifique os artistas com base na quantidade de favoritadas em suas músicas.
    - A classificação deve ser definida com base na quantidade de favoritadas, usando as categorias A, B, C e "-" (zero favoritadas).

13. **Relação de Pessoas Usuárias e Favoritadas por Faixa Etária**

    - Crie uma QUERY que mostre a quantidade total de pessoas usuárias e favoritadas por faixa etária.
    - A QUERY deve exibir a faixa etária, o total de pessoas usuárias na respectiva faixa etária e o total de favoritadas realizadas pelas pessoas usuárias na mesma faixa etária.


## Contribuição

Este projeto foi desenvolvido durante meu curso na [Trybe](https://www.betrybe.com/) com base no projeto 'One for All'. A Trybe é uma escola de programação que tem compromisso com o sucesso profissional. O projeto 'One for All' é parte do módulo de Back-End e envolve a criação de um banco de dados a partir de um arquivo SQL.

## Licença

Código Aberto (Open Source)

Este projeto é de código aberto e está disponível para toda a comunidade. Fique à vontade para explorar, clonar e contribuir para o projeto.

## Contato

Elielton Ramos

[![Envie-me um e-mail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:elieltonramos14@gmail.com)
[![Linkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/elielton-ramos/)

## Agradecimentos

Sou grato à [Trybe](https://www.betrybe.com/) por proporcionar esse desafio enriquecedor e pela oportunidade de aprimorar minhas habilidades como desenvolvedor. Estou empolgado para aplicar os conhecimentos adquiridos em projetos futuros e continuar minha jornada de desenvolvedor web.
