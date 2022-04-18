#!/bin/bash

#------------------------------------------------------
# Projet L1 - Introduction aux Systèmes d'Exploitations
#------------------------------------------------------

# Remplacer les noms par les vôtres
auteurs="Y.Marcigny et R.Khao"


# Les fichiers générés par le script
fichier_rst="vaches_en_folie.rst"
fichier_html="vaches_en_folie.html"
fichier_pdf="vaches_en_folie.pdf"

echo "Génération de ${fichier_rst}"

#Téléchargement des images
echo "-- Téléchargement des images --"
wget -O les_vaches.jpg   https://i.imgur.com/yIBMMzL.jpg
wget -O la_lourdaise.jpg https://i.imgur.com/rsgjo74.jpg
wget -O la_normande.jpg  https://i.imgur.com/2y9VGy8.jpg


# Insertion d'un bloc de texte dans fichier_rst.
# Le texte concerné est compris entre les deux mots BLOC.
cat > ${fichier_rst}  << BLOC
===============
Vaches en folie
===============
----------------------------------------------------
Projet d\'Introduction aux Systèmes d\'Exploitations
----------------------------------------------------

:Auteurs: *${auteurs}*
:Généré par: *$(whoami)*

Ce document a été généré  à partir du fichier \`\`vaches_en_folie.rst\`\` au
format \`reStructuredText\`_ lui-même créé par le script
\`\`vaches_en_folie.sh\`\`. Ce fichier  rst a  ensuite  été  converti en
HTML  et  PDF avec  les commandes \`\`rst2html\`\` et \`\`rst2pdf\`\`.

.. _reStructuredText: https://aful.org/wikis/interop/ReStructuredText

.. sidebar:: Références

   Les directives du format RST sont disponibles \`ici\`_.

.. _ici: http://docutils.sourceforge.net/docs/ref/rst/directives.html

L\'objectif est de compléter le script \`\`vaches_en_folie.sh\`\` afin que les
documents générés ressemblent le plus fidèlement possible au modèle fourni.

Une vache : Définition
======================

**Vache** est le nom vernaculaire donné à la femelle du **taureau** et à la mère du **veau** des bovins.
C'est un ruminant appartenant à la famille des bovidés, généralement porteur de cornes sur le front.
Une **génisse** ou **vachette** est une vache qui n'a pas vêlé.
La vache *beugle*, *meugle* ou *mugit* tout en produisant du lait et des bouses.
Vache se dit *cow* in English.


.. figure:: les_vaches.jpg
   :scale: 160 %

   **Figure** : Trois normandes devisent du sens de la vie sous les poiriers en fleurs.





Quelques races bovines
----------------------
+----------------------------------+------------------------------+
| **Races et liens vers site web** | **Images**                   |
+==================================+==============================+
| La Lourdaise_                    | .. image:: ./la_lourdaise.jpg|
+----------------------------------+------------------------------+
| La Normande_                     | .. image:: ./la_normande.jpg |
+----------------------------------+------------------------------+

.. _Lourdaise: https://fr.wikipedia.org/wiki/Lourdaise_(race_bovine)
.. _Normande: https://fr.wikipedia.org/wiki/Normande

Vaches et systèmes d'exploitation
---------------------------------
Sous GNU/Linux, les vaches peuvent s'exprimer avec les commandes cowthink et cowsay.

Transformation bovine
=====================
**Les vaches sont coquettes !**

.. sidebar:: Indications

   Les quatre vignettes utilisent la vache par défaut de la commande cowsay. Les différences sont obtenues en filtrant le flux de sortie pour remplacer des caractères par d'autres. Votre mission consiste à élaborer une succession de filtres qui reproduise les vignettes au caractère près.


::

BLOC
cowsay "Je suis une vache originale" | awk '{printf " %-35s\n", $0}' > vache0.txt
cowsay "On m'a filtrée" |awk '{printf " %-35s\n", $0}' | tr '_' '~' | tr '^' 'o' | sed 's/oo/^^/' | tr '-' '~' |tr '()' '{}' | tr '|' 'l'  > vache1.txt
paste -d': ' vache0.txt vache1.txt >> ${fichier_rst}

echo ........................................................................|awk '{printf " %-35s\n", $0}' > separation.txt
paste -d '. ' separation.txt >> ${fichier_rst}

cowsay "À moi les nouvelles mamelles !" |awk '{printf " %-35s\n", $0}' | tr '_' '~' | tr '-' '~' | tr '^' 'n' | sed 's/oo/**/'| sed 's/~w/uu/' | tr '()' '{}' | tr '|' 'l'  >  vache2.txt
cowthink "Une queue de lapin ?!" |awk '{printf " %-35s\n", $0}' | tr '_' '~' | tr '-' '~' | tr '|' 'l' | tr '()' '{}' | sed 's/oo/oO/' | sed 's/\/\\/@/' | sed 's/}\\@/}@/' > vache3.txt

paste -d': ' vache2.txt vache3.txt >> ${fichier_rst}


rm -f vache*.txt
rm -fr separation.txt


cat >> ${fichier_rst}  << BLOC

.. note::
  **Attention !**

  Veuillez noter que chaque ligne de chaque vignette doit commencer par un espace.

Ambition batracienne
====================

C'est l'histoire du crapaud qui rêvait de devenir aussi gros qu'un **boeuf**...

.. sidebar:: Indications

    L'option -f permet de choisir le personnage qui parle ou pense. Tous les fichiers sont
    disponibles dans le dossier /usr/share/cowsay/cows/.






::

BLOC
cowsay "Je suis le plus gros des crapauds !" | cowthink -n -f bud-frogs  | awk '{printf " %-35s\n", $0}' > vache0.txt
paste -d':' vache0.txt >> ${fichier_rst}


rm -f vache0*.txt


cat >> ${fichier_rst}  << BLOC

**Notez** que le message est lui-même ce que dit la vache !



Tableau de famille
===================
Voici quelques membres de la famille insérés dans un tableau RST



BLOC

echo +-------------------------------------------------+-------------------------------------------------+ > ligne.txt
echo "" > vide.txt


paste -d '' ligne.txt >> ${fichier_rst}

echo -e "::\n" | awk '{printf " %-48s\n", $0}'  > vache1.txt
cowsay "123" | sed '1d'| sed '1d'| sed '1d'| awk '{printf " %-48s\n", $0}'  >> vache1.txt
echo "" | awk '{printf " %-48s\n", $0}' >> vache1.txt
echo "La Maman  " | awk '{printf " %-48s\n", $0}' >> vache1.txt

echo -e "::\n" | awk '{printf " %-48s\n", $0}'  > Tatie.txt
cowsay -f www.cow " " | sed '1d'| sed '1d'| sed '1d' | awk '{printf " %-48s\n", $0}' >> Tatie.txt
echo "" | awk '{printf " %-48s\n", $0}' >> Tatie.txt
echo "La Tatie Web" | awk '{printf " %-48s\n", $0}' >> Tatie.txt

paste -d '|' vide.txt vache1.txt Tatie.txt vide.txt >> ${fichier_rst}
paste -d ' ' ligne.txt >> ${fichier_rst}

echo -e "::\n" | awk '{printf " %-48s\n", $0}' > Mamie.txt
echo "       \   " | awk '{printf " %-48s\n", $0}' >> Mamie.txt
cowsay -f three-eyes.cow " " | sed '1d'| sed '1d'| sed '1d'| awk '{printf " %-48s\n", $0}' >> Mamie.txt
echo "" | awk '{printf " %-48s\n", $0}' >> Mamie.txt
echo "La Mamie qui voit tout " | awk '{printf " %-48s\n", $0}' >> Mamie.txt

echo -e "::\n" | awk '{printf " %-48s\n", $0}' > Soeur.txt
cowsay -f moose " " | sed '1d'| sed '1d'| sed '1d'| sed '1d'| awk '{printf " %-47s\n", $0}' | awk '{printf " %-48s\n", $0}' >> Soeur.txt
echo "" | awk '{printf " %-48s\n", $0}' >> Soeur.txt
echo "La soeur (qui a eu des problèmes avec son Mari) " | awk '{printf " %-48s\n", $0}' >> Soeur.txt

paste -d '|' vide.txt Mamie.txt Soeur.txt vide.txt >> ${fichier_rst}

paste -d ' ' ligne.txt >> ${fichier_rst}

rm -fr vache*.txt
rm -fr Tatie.txt
rm -fr Mamie.txt
rm -fr Soeur.txt
rm -fr ligne.txt
rm -fr texte*.txt
rm -fr vide.txt

cat >> ${fichier_rst}  << BLOC

Mascotte personnelle
====================
Voici la mascotte que nous avons dessinée en ascii art et sauvegardée dans le fichier mascotte.cow
en prenant exemple sur les fichiers disponibles dans le dossier /usr/share/cowsay/cows/


::

BLOC
echo "\$the_cow= <<EOC;
  \$thoughts
    \$thoughts

                /\\\___/\\\.
               | ^ . ^ |
               \\\   ^   /
                |     |
               /       \\\.
              / /|   |\\\ \\\.
             (_) |   | (_)
                 /   \\\.
                / / \\\ \\\.
               / /   \\\ \\\.
              (__)   (__)

EOC" > mascotte.cow
cowsay -f ./mascotte.cow "Je suis la mascotte de ${auteurs}" | awk '{printf " %-40s\n", $0}' >> ${fichier_rst}

rm -fr mascotte.cow
rm -fr mascotte.txt


# Génération des formats HTML et PDF

echo "Génération de ${fichier_html}"
rst2html -d -t -s ${fichier_rst} ${fichier_html}

echo "Génération de ${fichier_pdf}"
rst2pdf           ${fichier_rst} ${fichier_pdf}
