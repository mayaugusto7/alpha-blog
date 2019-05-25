### Aplha Blog

`rails generate migration create_articles` gera uma migração

`rake db:migrate` executa a migração

`rake db:rollback` desfaz uma migração

_Quando esquecer algo criar migration para adicionar novas colunas_

`rails g migration add_description_to_articles` add nova coluna description

_Para testar o ActiveRecord entrar no **rails console** e fazer consultas_

`Article.all, Article, article = Article.new, article.save`

_Gerar dados em massa_

`article = Article.new(title: "This is my second article", description: "This is my second description")`

Metodo **create** realiza uma transação completa  com o banco de dados

`Article.create(title: "This is my third title", description: "This is my third description")`