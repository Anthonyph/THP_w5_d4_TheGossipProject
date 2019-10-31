# README
The Hacking Projet Rails
Ruby: 2.5.1
Rails: 5.2.3

Pour ouvrir ce projet rails:

- Faire un bundle install à la racine du projet
- Créer la base de donnée Postgrès avec rails db:create
- Faire les migrations avec rails db:migrate
- lancer le seed avec rails db:seed
- lancer le serveur avec rails server,
et ouvrez l'URL suivante dans votre navigateur:http://localhost:3000/

Ce projet est une application Rails qui s'ouvre sur une page d'accueil 
( pouvant être personalisée : localhost/welcome/entrezvotrenom)affichant tout les gossips en base sous forme de card bootstrap.
pour chaque Gossip un lien permet d'afficher le gossip en détail, et dans cette page "detail" se trouve egalement un lien pour afficher le profil de l'auteur du Gossip.
 


