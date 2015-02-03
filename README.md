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

# To Do

- for the contact page https://addons.heroku.com/sendgrid / see the account https://github.com/craftninja/actionmailer_basics

#Install POSTGRES

Configurer le compte utilisateur dans PostgreSQL :

sudo su postgres

puis

psql

puis

create role sensei with createdb login password 'something';

Pour vérifier que le changement est OK :

\dgh

Pour voir l’aide de Postgres : \?

Pour sortir de la console PSQL et revenir à la ligne de commande du terminal Ctrl D (deux fois !).

- -- - -- - - -  -- 

# create databases (tutorial : http://emily-platzer-makes-things.herokuapp.com/2014/05/05/sinatra-postgres-app.html)

CD into project directory and run the following in the command line:
    $ psql -d postgres -U <username> -f scripts/create_database_issues.sql

    needs gem ruby-sequel-pg & gem ruby-sequel


# create tables

    $ sequel -m migrations postgres://<username>:<password>@localhost/issues_development
    $ sequel -m migrations postgres://<username>:<password>@localhost/issues_test

et là, ça ne fonctionne pas...