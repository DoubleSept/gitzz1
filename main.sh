#!/bin/bash

# Jeu du Plus ou moins

# TODO: Ask user for max input
max=100
target=$((RANDOM % $max + 1))

# Fonction qui va écrire plus ou moins, deux arguments: la cible et la proposition
print_more_or_less() {
  if [[ $2 -lt $1 ]]; then
    echo "C'est plus"
  elif [[ $2 -gt $1 ]]; then
    echo "C'est moins"
  else
    echo "Bravo champion ! La réponse était $target."
  fi
}

echo "Devine le nombre (entre 1 et $max):"

# Current guess
guess=0
# Guess number
guess_nb=0

# Boucle principale (on demande un chiffre à chaque itération)
while [[ $guess -ne $target ]]; do
  read -p "Votre proposition: " guess
  print_more_or_less $target $guess
  guess_nb=$((guess_nb+1))
done

# Victoire !
echo "Vous avez trouvé en $guess_nb coups !"
