# DiaryGenerator
In questa cartella sono contenuti i file per generare automaticamente l'update del diario specifico per ogni documento.

##Requisiti
1. Perl
2. Modulo libXML di Perl
3. Deve essere presente il file diaryGenerator.perl
4. In ogni cartella dei vari documenti dev'essere presente il file **_diarioModificheXX.tex_**
  (dove XX è la sigla di un documento in maiuscolo)

##Che cosa fa
1. Chiede in output:
    * Sigla del nome tra i componenti del team
    * Di che revisione si tratta
    * Che documento è stato modificato con il commit
    * Quale ruolo si ha all'interno del gruppo
    * Descrizione dell'update del documento
    * Se si vuole fare l'upgrade della versione
    
2. Vengono cercati i file da modificare e vengono passati tutti i dati allo script Perl **_diaryGenerator.pl_** .
3. Lo script Perl:

    * Crea o aggiorna il file .registroModifche.xml
    * Da .registroModicheXX.xml viene generato il nuovo file **_diarioModificheXX.tex_** .
    
4. Viene ricompilato il documento che è stato modificato 2 volte, in modo da evitare problemi con gli indici
5. Viene generato un commit automatico che contiene i file appena modificati.
6. Il documento adesso è aggiornato e il file PDF contiene il diario aggiornato con il messaggio dell'ultimo commit.
