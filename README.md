#Mes p'tits programmes
====================


## But du projet :

Découvrir Sinatra en créant une application permettant d'avoir une interface pour plusieurs programmes développés pendant les Katas que nous faisons à Simplon :

- fizzbuzz
- Roman to Number

Le tout en TDD et en utilisant rspec.


## Comment récupérer cette appli :

- faire un git clone
- ouvrir le répertoire
- lancer `bundle install`
- lancer les tests avec la commande `rspec`

- lancer le serveur avec la commande `ruby index.rb` ou en utilisant le serveur `puma`

## Déployement :

- l'appli est visible en ligne à l'adresse [https://simplon2015exercices.herokuapp.com/](https://simplon2015exercices.herokuapp.com/)
- déployer en lançant la commande `$ git push heroku master`
`heroku rake -T `

- `heroku run rake db:schema:load`


# To Do

- for the contact page https://addons.heroku.com/sendgrid /
https://support.sendgrid.com/hc/en-us/articles/200181998-Heroku-Users-Find-your-Sendgrid-Credentials

# settings pg & heroku
 see https://devcenter.heroku.com/articles/getting-started-with-ruby#use-a-database

 lancer un rake db:migrate sur heroku https://devcenter.heroku.com/articles/rake
 ```bash
 heroku run rake db:migrate
 ```

## Install POSTGRES

Configurer le compte utilisateur dans PostgreSQL :

sudo su postgres

puis

psql

puis

create role USER with createdb login password 'PASSWORD';

Pour vérifier que le changement est OK :

\dgh

Pour voir l’aide de Postgres : \?

Pour sortir de la console PSQL et revenir à la ligne de commande du terminal Ctrl D (deux fois !).

- -- - -- - - -  -- To do on 4 february - - -- -

Try to deploy on heroku and get the message

```bash
-----> Writing config/database.yml to read from DATABASE_URL
       Could not detect rake tasks
       ensure you can run `$ bundle exec rake -P` against your app with no environment variables present
       and using the production group of your Gemfile.
       This may be intentional, if you expected rake tasks to be run
       cancel the build (CTRL+C) and fix the error then commit the fix:
       rake aborted!
       Invalid DATABASE_URL
```
