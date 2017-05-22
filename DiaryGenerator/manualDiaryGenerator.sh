#!/bin/sh

#regole d'uso
#Ricordarsi di settare i permessi lettura e scrittura
#chmod 755 -R *

#per Windows bisogna mettere:
#PERL=/c/Perl64/bin/perl.exe


# Allows us to read user input below, assigns stdin to keyboard
exec < /dev/tty
    AUTHOR=""
    while [ "$AUTHOR" != "am" ] && [ "$AUTHOR" != "gz" ] && [ "$AUTHOR" != "ff" ] && [ "$AUTHOR" != "df" ] && [ "$AUTHOR" != "mf" ] && [ "$AUTHOR" != "ez" ] && [ "$AUTHOR" != "fb" ]  ; do
        exec < /dev/tty; read -p "Who are you? (am/gz/ff/df/mf/ez/fb) " AUTHOR;
    done;
    if [ "$AUTHOR" = "am" ]; then
        AUTHOR="Antonino Macrì"
    elif [ "$AUTHOR" = "gz" ]; then
        AUTHOR="Giacomo Zecchin"
    elif [ "$AUTHOR" = "ff" ]; then
        AUTHOR="Francesco Fasolato"
    elif [ "$AUTHOR" = "df" ]; then
        AUTHOR="Daniele Favaro"
    elif [ "$AUTHOR" = "mf" ]; then
        AUTHOR="Marco Franceschini"
    elif [ "$AUTHOR" = "ez" ]; then
        AUTHOR="Edoardo Zanon"
    elif [ "$AUTHOR" = "fb" ]; then
        AUTHOR="Filippo Berto"
    fi

    MESSAGE=""
    exec < /dev/tty; read -p "Write the modify message: " MESSAGE;
	DATE=`date +%Y-%m-%d` #retrieve the date of modify
	revs=""
    doc=""
    role=""
    currPath="$(pwd)"

    #set which revision
    while [ "$revs" != "rr" ] && [ "$revs" != "rp" ] && [ "$revs" != "rq" ] && [ "$revs" != "ra" ] ; do
        exec < /dev/tty; read -p "Which revision? (rr/rp/rq/ra) " revs;
    done;

    #set which document
    while [ "$doc" != "ar" ] && [ "$doc" != "gl" ] && [ "$doc" != "np" ] && [ "$doc" != "pp" ] && [ "$doc" != "pq" ] && [ "$doc" != "sf" ] && [ "$doc" != "st" ] && [ "$doc" != "dp" ] ; do
        exec < /dev/tty; read -p "Which document? (ar/gl/np/pp/pq/sf/st/dp) " doc;
    done;
    #Domando il ruolo per poterlo inserire nel diario
    while [ "$role" != "amm" ] && [ "$role" != "rp" ] && [ "$role" != "ver" ] && [ "$role" != "pr" ] && [ "$role" != "anal" ] && [ "$doc" != "cod" ] ; do
        exec < /dev/tty; read -p "Which role do you have? (amm/rp/ver/pr/anal/cod) " role;
    done;

    #Sistemo il nome delle cartelle con le maiuscole
    if [ "$revs" = "rr" ]; then
    	revs="RR"
    elif [ "$revs" = "rp" ]; then
    	revs="RP"
    elif [ "$revs" = "rq" ]; then
    	revs="RQ"
    elif [ "$revs" = "ra" ]; then
    	revs="RA"
    fi

    #Cerco il percorso dei file da modificare per le NORME
    if [ "$doc" = "np" ]; then
        doc="NP"
        docTexName="NormeDiProgetto.tex"
        docPDFName="NormeDiProgetto.pdf"
        documento="NormeDiProgetto"
    #Cerco il percorso dei file da modificare per l'analisi
    elif [ "$doc" = "ar" ]; then
        doc="AR"
        docTexName="AnalisiDeiRequisiti.tex"
        docPDFName="AnalisiDeiRequisiti.pdf"
        documento="AnalisiDeiRequisiti"
    #Cerco il percorso dei file da modificare per il glossario
    elif [ "$doc" = "gl" ]; then
        doc="GLO"
        docTexName="Glossario.tex"
        docPDFName="Glossario.pdf"
        documento="Glossario"
    elif [ "$doc" = "pp" ]; then
        doc="PP"
        docTexName="PianoDiProgetto.tex"
        docPDFName="PianoDiProgetto.pdf"
        documento="PianoDiProgetto"
    elif [ "$doc" = "pq" ]; then
        doc="PQ"
        docTexName="PianoDiQualifica.tex"
        docPDFName="PianoDiQualifica.pdf"
        documento="PianoDiQualifica"
    elif [ "$doc" = "sf" ]; then
        doc="SF"
        docTexName="StudioDiFattibilita.tex"
        docPDFName="StudioDiFattibilita.pdf"
        documento="StudioDiFattibilita"
    elif [ "$doc" = "st" ]; then
        doc="ST"
        docTexName="SpecificaTecnica.tex"
        docPDFName="SpecificaTecnica.pdf"
        documento="SpecificaTecnica"
    elif [ "$doc" = "dp" ]; then
        doc="DP"
        docTexName="DefinizioneDiProdotto.tex"
        docPDFName="DefinizioneDiProdotto.pdf"
        documento="DefinizioneDiProdotto"
    fi

    tipo=""
    if [ "$doc" = "AR" ] || [ "$doc" = "GL" ] || [ "$doc" = "PQ" ] || [ "$doc" = "PP" ] || [ "$doc" = "ST" ] || [ "$doc" = "DP" ] ; then
        tipo="Esterni"
    elif [ "$doc" = "NP" ] || [ "$doc" = "SF" ]; then
		tipo="Interni" 		
    fi;

    diaryTexPath=$(find ../$revs/$tipo/$documento -name "DiarioModifiche$doc.tex") #Percorso del diario in latex
    docTexPath=$(find ../$revs/$tipo/$documento -name "$docTexName") #Percorso del file latex da compilare
    docPDFPath=$(find ../$revs/$tipo/$documento -name "$docPDFName") #Percorso norme db
    path=$(dirname "${docTexPath}") #Percorso della cartella

    #Se il file del diario non esiste lo inizializzo
    if [ ! -f "$path/registroModifiche$doc.xml" ]; then #file initialization if it doesnt exists
        echo "<registry></registry>" >> "$path/registroModifiche$doc.xml"
    fi

    version=""
    while [ "$version" != "y" ] && [ "$version" != "Y" ] && [ "$version" != "N" ] && [ "$version" != "n" ]; do
        exec < /dev/tty; read -p "Increment version? (y/n) " version;
    done; #ask if augment version->usefull for trasformation to latex

    if [ "$version" = "y" ] || [ "$version" = "Y" ]; then
        version="1"
    else
        version="0"
    fi

    #write on file
    #Generate latex diary
    echo "Updating xml diary and generating new TeX diary..";

    if [ "$version" = 1 ]; then
        perl ./diaryGenerator.pl "$diaryTexPath" "$path/registroModifiche$doc.xml" "$AUTHOR" "$role" "$MESSAGE" "$DATE" "$version";
    fi

    echo "Generation diary done.";
    #Turn up and compile the new diary
    cd $path;
    echo "Compiling $docTexName..";
    pdflatex -interaction=nonstopmode $docTexName > /dev/null;
    pdflatex -interaction=nonstopmode $docTexName > /dev/null;
    echo "Compilation done.";
    
    echo "Deleting temp files from compilation..";
    find . -name "*.gz"  -type f -delete
    find . -name "*.dvi" -type f -delete
    find . -name "*.log" -type f -delete
    find . -name "*.sta" -type f -delete
    find . -name "*.aux" -type f -delete
    find . -name "*.lof" -type f -delete
    find . -name "*.toc" -type f -delete
    find . -name "*.out" -type f -delete
    find . -name "*.gz(busy)" -type f -delete
    echo "Deleted.";
    cd $currPath;
    
    #automatic pull, add and commit for registry file
    #git pull;
    #git status;
#   while [ "$version" != "y" ] && [ "$version" != "Y" ] && [ "$version" != "N" ] && [ "$version" != "n" ]; do
#       exec < /dev/tty; read -p "Increment version? (y/n) " version;
#	    if [ "$version" = "y" ] || [ "$version" = "Y" ]; then
#	    	git add "$diaryTexPath";
#   		git commit -m "Automatic commit for diary update";
#    		git push;
#	    fi
#   done; #ask if commit have no error