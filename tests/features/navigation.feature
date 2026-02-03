@navigation @menu
Fonctionnalité: Navigation via le menu
  En tant qu'utilisateur
  Je veux utiliser le menu
  Afin d'accéder au Dashboard et à la page Performances

  Contexte:
    Étant donné que l'application web est démarrée
    Et que je suis sur la page d'accueil

  Scénario: Le menu contient exactement deux liens
    Alors le menu principal est visible
    Et le menu contient exactement 2 liens
    Et un lien est libellé "Dashboard"
    Et un lien est libellé "Performances"

  Scénario: Accéder au Dashboard depuis le menu
    Quand je clique sur le lien "Dashboard"
    Alors la page "Dashboard" est affichée
    Et le dashboard est visible

  Scénario: Accéder à la page Performances depuis le menu
    Quand je clique sur le lien "Performances"
    Alors la page "Performances" est affichée