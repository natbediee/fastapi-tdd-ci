@donnees @csv
Fonctionnalité: Chargement des données depuis un fichier CSV
  En tant que système
  Je veux charger les données depuis un fichier CSV
  Afin d'alimenter le dashboard

  Scénario: Les données proviennent d'un fichier CSV
    Étant donné qu'un fichier de données au format CSV est configuré
    Quand l'application charge les données
    Alors les données sont chargées depuis le fichier CSV

  Scénario: Charger exactement 2000 titres
    Étant donné qu'un fichier CSV valide est disponible
    Quand l'application charge les données
    Alors le nombre total de titres chargés est 2000

  Scénario: Aucune information manquante dans les données
    Étant donné qu'un fichier CSV valide est disponible
    Quand l'application charge les données
    Alors aucune information n'est manquante dans les titres chargés
    Et aucun champ attendu n'est vide