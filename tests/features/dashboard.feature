
# language: fr
@dashboard
Fonctionnalité: Affichage du dashboard Netflix
  En tant qu'utilisateur
  Je veux consulter un dashboard
  Afin de visualiser des données et des graphiques

  Contexte:
    Étant donné qu'un fichier CSV valide est disponible
    Et que les données sont chargées
    Quand j'ouvre la page "Dashboard"

  Scénario: Le dashboard affiche le tableau, l'histogramme et le camembert
    Alors un tableau de données est affiché
    Et un histogramme est affiché
    Et un graphique en camembert est affiché

  @tableau
  Scénario: Le tableau affiche 5 titres tirés du fichier
    Alors le tableau contient exactement 5 titres
    Et ces titres proviennent du fichier CSV

  @tableau
  Scénario: Les 5 titres affichés ont des données complètes
    Alors chaque titre affiche toutes ses informations disponibles
    Et aucune cellule du tableau n'est vide

  @histogramme
  Scénario: L'histogramme présente le nombre de films par année de production
    Alors l'histogramme présente le nombre de films par année de production

  @histogramme @coherence-donnees
  Scénario: Les barres de l'histogramme correspondent aux données du CSV
    Quand je calcule le nombre de films par année à partir du CSV
    Alors les valeurs de l'histogramme correspondent au calcul

  @camembert
  Scénario: Le camembert présente la proportion de films par classification
    Alors le camembert regroupe la proportion de films par classification

  @camembert @coherence-donnees
  Scénario: Les proportions du camembert correspondent aux données du CSV
    Quand je calcule la répartition des films par classification à partir du CSV
    Alors les proportions du camembert correspondent au calcul