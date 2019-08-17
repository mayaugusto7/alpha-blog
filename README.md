### Aplha Blog

`rails generate migration create_articles` gera uma migração

`rake db:migrate` executa a migração

`rake db:rollback` desfaz uma migração

_Quando esquecer algo criar migration para adicionar novas colunas_

`rails g migration add_description_to_articles` add nova coluna description

`rails generate migration add_user_id_to_articles` add nova coluna user_id

`rails g migration add_password_digest_to_users` add nova coluna password 

_Para testar o ActiveRecord entrar no **rails console** e fazer consultas_

`Article.all, Article, article = Article.new, article.save`

_Gerar dados em massa_

`article = Article.new(title: "This is my second article", description: "This is my second description")`

Metodo **create** realiza uma transação completa  com o banco de dados

`Article.create(title: "This is my third title", description: "This is my third description")`

# _Console Rails_

rails console - entra no console irb

Article.all - lista todos os articles

article = Article.find(1) - consulta um article pelo id

article.save! - salva um novo article

article.create! - salva um novo article e ja faz o commit

article.update! - atualiza um novo article

article.destroy! - remove um article

reload! recarrega dados do console

article.errors.full_messages - lista os erros ao salvar o objeto article

render plain: params[:article].inspect

# _Debugger_

colocar a flag *debugger* no codigo, permite debugar aplicacao em
tempo real com byebug.

# _Heroku Commands_

git push heroku master

heroku run rake db:migrate

heroku run rails console