#!/bin/bash
for CHOIX_THEME in classic #casual oldstyle ## banking
do
    for CHOIX_COUL in red # blue orange green purple grey black 
    do
        sed 's/STYLE/'${CHOIX_THEME}'/;s/COULEUR/'${CHOIX_COUL}'/' CV-Modele.tex > CV_${CHOIX_THEME}-${CHOIX_COUL}.tex
        /usr/bin/pdflatex CV_${CHOIX_THEME}-${CHOIX_COUL}.tex
        /usr/bin/pdflatex CV_${CHOIX_THEME}-${CHOIX_COUL}.tex
        mv CV_${CHOIX_THEME}-${CHOIX_COUL}.tex LaTex/
        rm CV_${CHOIX_THEME}-${CHOIX_COUL}.out
        rm CV_${CHOIX_THEME}-${CHOIX_COUL}.log
        rm CV_${CHOIX_THEME}-${CHOIX_COUL}.aux
    done
done
