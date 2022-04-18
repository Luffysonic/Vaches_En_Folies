===============
Vaches en folie
===============
----------------------------------------------------
Projet d\'Introduction aux Systèmes d\'Exploitations
----------------------------------------------------

:Auteurs: *Y.Marcigny et R.Khao*
:Généré par: *rkhao*

Ce document a été généré  à partir du fichier ``vaches_en_folie.rst`` au
format `reStructuredText`_ lui-même créé par le script
``vaches_en_folie.sh``. Ce fichier  rst a  ensuite  été  converti en
HTML  et  PDF avec  les commandes ``rst2html`` et ``rst2pdf``.

.. _reStructuredText: https://aful.org/wikis/interop/ReStructuredText

.. sidebar:: Références

   Les directives du format RST sont disponibles `ici`_.

.. _ici: http://docutils.sourceforge.net/docs/ref/rst/directives.html

L\'objectif est de compléter le script ``vaches_en_folie.sh`` afin que les
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

  _____________________________     :  ~~~~~~~~~~~~~~~~                  
 < Je suis une vache originale >    : < On m'a filtrée >                 
  -----------------------------     :  ~~~~~~~~~~~~~~~~                  
         \   ^__^                   :         \   o~~o                   
          \  (oo)\_______           :          \  {^^}\~~~~~~~           
             (__)\       )\/\       :             {~~}\       }\/\       
                 ||----w |          :                 ll~~~~w l          
                 ||     ||          :                 ll     ll          
 ........................................................................
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  :  ~~~~~~~~~~~~~~~~~~~~~~~           
 < À moi les nouvelles mamelles ! > : { Une queue de lapin ?! }          
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  :  ~~~~~~~~~~~~~~~~~~~~~~~           
         \   n~~n                   :         o   ^~~^                   
          \  {**}\~~~~~~~           :          o  {oO}\~~~~~~~           
             {~~}\       }\/\       :             {~~}\       }@       
                 ll~~~uu l          :                 ll~~~~w l          
                 ll     ll          :                 ll     ll          

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

  _________________________________________
 (  _____________________________________  )
 ( < Je suis le plus gros des crapauds ! > )
 (  -------------------------------------  )
 (         \   ^__^                        )
 (          \  (oo)\_______                )
 (             (__)\       )\/\            )
 (                 ||----w |               )
 (                 ||     ||               )
  -----------------------------------------
      o                             
       o                            
           oO)-.                       .-(Oo
          /__  _\                     /_  __\
          \  \(  |     ()~()         |  )/  /
           \__|\ |    (-___-)        | /|__/
           '  '--'    ==`-'==        '--'  '

**Notez** que le message est lui-même ce que dit la vache !



Tableau de famille
===================
Voici quelques membres de la famille insérés dans un tableau RST



+-------------------------------------------------+-------------------------------------------------+
| ::                                              | ::                                              |
|                                                 |                                                 |
|         \   ^__^                                |         \   ^__^                                |
|          \  (oo)\_______                        |          \  (oo)\_______                        |
|             (__)\       )\/\                    |             (__)\       )\/\                    |
|                 ||----w |                       |                 ||--WWW |                       |
|                 ||     ||                       |                 ||     ||                       |
|                                                 |                                                 |
| La Maman                                        | La Tatie Web                                    |
+-------------------------------------------------+-------------------------------------------------+
| ::                                              | ::                                              |
|                                                 |                                                 |
|        \                                        |     \   \_\_    _/_/                            |
|         \  ^___^                                |      \      \__/                                |
|          \ (ooo)\_______                        |             (oo)\_______                        |
|            (___)\       )\/\                    |             (__)\       )\/\                    |
|                 ||----w |                       |                 ||----w |                       |
|                 ||     ||                       |                 ||     ||                       |
|                                                 |                                                 |
| La Mamie qui voit tout                          | La soeur (qui a eu des problèmes avec son Mari) |
+-------------------------------------------------+-------------------------------------------------+

Mascotte personnelle
====================
Voici la mascotte que nous avons dessinée en ascii art et sauvegardée dans le fichier mascotte.cow
en prenant exemple sur les fichiers disponibles dans le dossier /usr/share/cowsay/cows/


::

  ______________________________________ 
 / Je suis la mascotte de Y.Marcigny et \
 \ R.Khao                               /
  -------------------------------------- 
   \                                     
     \                                   
                                         
                 /\___/\.                
                | ^ . ^ |                
                \   ^   /                
                 |     |                 
                /       \.               
               / /|   |\ \.              
              (_) |   | (_)              
                  /   \.                 
                 / / \ \.                
                / /   \ \.               
               (__)   (__)               
                                         
