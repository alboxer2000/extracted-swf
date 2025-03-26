function impostaLingua()
{
   sCosaFare = datiLinguaG.sCosaFare;
   sGioca = datiLinguaG.sGioca;
   sTorna = datiLinguaG.sTorna;
   sBravo = datiLinguaG.sBravo;
   sFinale = datiLinguaG.sFinale;
   sRisultati = datiLinguaG.sRisultati;
   sLivello = datiLinguaG.sLivello;
   sRiprova = datiLinguaG.sRiprova;
}
_root.carica._visible = false;
stop();
datiLinguaG = new LoadVars();
fileGioco = "orto";
fileG = fileGioco + "_lingue.txt";
datiLinguaG.load(fileG);
datiLinguaG.onLoad = function(success)
{
   var _loc2_ = undefined;
   _loc2_ = datiLinguaG.language;
   var _loc1_ = 0;
   while(_loc1_ < _loc2_.length)
   {
      if(!isDigit(_loc2_.substr(_loc1_,1)))
      {
         linguaG.insLanguage(0);
      }
      _loc1_ = _loc1_ + 1;
   }
   if(linguaG.language > 0)
   {
      impostaLingua();
   }
};
sGioca = "GIOCA";
sTorna = "TORNA";
sLivello = "livello";
sRiprova = "riprova";
sBravo = "Bravo!!!";
sFinale = "Complimenti! Hai vinto!";
sRisultati = "Risultati";
getUrl("FSCommand:fullscreen", "false");
getUrl("FSCommand:allowscale", "false");
getUrl("FSCommand:showmenu", "false");
stop();
sCosaFare = "Devi piantare i cavoli nelle posizioni giuste definite dalle coordinate. Attenzione se sbagli la tua verdura sarà mangiata.";
sDiff = "Difficoltà";
aDiff = new Array("facile","difficile");
defDiff = 0;
sTentativi = "Esercizi";
aTentativi = new Array("10","16","18","22","26");
defTentativi = 0;
xmlLoadFinito = true;
