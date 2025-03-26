function educa()
{
   var _loc1_ = this;
   _loc1_.totalQuestion = 0;
   _loc1_.positiveEnd = 0;
   _loc1_.negativeEnd = 0;
   _loc1_.speed = 0;
   _loc1_.esatte = 0;
   _loc1_.errate = 0;
   _loc1_.internet = false;
   _loc1_.versione = "local";
   _loc1_.insEsatte = function()
   {
      this.esatte = this.esatte + 1;
   };
   _loc1_.insErrate = function()
   {
      this.errate = this.errate + 1;
   };
   _loc1_.insInternet = function(internet)
   {
      this.internet = internet;
   };
   _loc1_.insVersione = function(versione)
   {
      this.versione = versione;
   };
   _loc1_.InsTotalQuestion = function(totalQuestion)
   {
      this.totalQuestion = Number(totalQuestion);
   };
   _loc1_.InsPositiveEnd = function(positiveEnd)
   {
      this.positiveEnd = Number(positiveEnd);
   };
   _loc1_.InsNegativeEnd = function(negativeEnd)
   {
      this.negativeEnd = Number(negativeEnd);
   };
   _loc1_.InsSpeed = function(speed)
   {
      this.speed = Number(speed);
   };
}
function lingue()
{
   var _loc1_ = this;
   _loc1_.language = 0;
   _loc1_.t_title = null;
   _loc1_.t_instruction = null;
   _loc1_.t_help = null;
   _loc1_.p_exit = null;
   _loc1_.p_copyright = null;
   _loc1_.p_information = null;
   _loc1_.p_help = null;
   _loc1_.t_exit = null;
   _loc1_.p_return = null;
   _loc1_.inslanguage = function(lingua)
   {
      this.language = lingua;
   };
   _loc1_.insT_title = function(titolo)
   {
      this.t_title = titolo;
   };
   _loc1_.insT_instruction = function(istruzioni)
   {
      this.t_instruction = istruzioni;
   };
   _loc1_.insT_help = function(aiuto)
   {
      this.t_help = aiuto;
   };
   _loc1_.insP_exit = function(exit)
   {
      this.p_exit = exit;
   };
   _loc1_.insp_Copyright = function(copyright)
   {
      this.p_copyright = copyright;
   };
   _loc1_.insp_Information = function(information)
   {
      this.p_information = information;
   };
   _loc1_.insP_Help = function(help)
   {
      this.p_help = help;
   };
   _loc1_.insT_exit = function(testo)
   {
      this.t_exit = testo;
   };
   _loc1_.insP_return = function(testo)
   {
      this.p_return = testo;
   };
}
function chiudi_finestre()
{
   var _loc1_ = _root;
   _loc1_.help2._visible = false;
   _loc1_.info._visible = false;
   _loc1_.uscita._visible = false;
}
function isDigit(ch)
{
   return !isNaN(ch);
}
function getLinguaG()
{
   _global.linguaG = new lingue();
   linguaG.insT_title(_level2.titolo);
   linguaG.insT_instruction(_level2.istruzioni);
   linguaG.inst_help(_level2.aiuto);
   linguaG.insp_exit(_level2.exit);
   linguaG.insp_copyright(_level2.copyright);
   linguaG.insp_information(_level2.information);
   linguaG.insp_help(_level2.help);
   linguaG.inst_exit(_level2.t_exit);
   linguaG.insp_return(_level2.torna);
   datiLinguaG = new LoadVars();
   fileG = _level0.fileGioco + "_lingue.txt";
   datiLinguaG.load(fileG);
   datiLinguaG.onLoad = function(success)
   {
      linguaG.insLanguage(datiLinguaG.language);
      var _loc2_ = undefined;
      _loc2_ = linguaG.language;
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
         linguaG.insT_title(datiLinguaG.t_title);
         linguaG.inst_instruction(datiLinguaG.t_instruction);
         linguaG.inst_help(datiLinguaG.t_help);
         linguaG.insp_exit(datiLinguaG.p_exit);
         linguaG.insp_copyright(datiLinguaG.p_copyright);
         linguaG.insp_information(datiLinguaG.p_information);
         linguaG.insp_help(datiLinguaG.p_help);
         linguaG.inst_exit(datiLinguaG.t_exit);
         linguaG.insp_return(datiLinguaG.p_return);
         _level2.impostaLingua();
      }
      _root.setLinguaG(true);
   };
}
stop();
getUrl("FSCommand:fullscreen", "true");
getUrl("FSCommand:allowscale", "true");
getUrl("FSCommand:showmenu", "false");
_root.nomeFile = "orto";
_root.URL = "http://www.iprase.tn.it/documentazione/giochi/datiFlash.asp";
_root.modificaEduSetting = true;
_root.maxTotalQuestion = 10;
_root.maxPositiveEnd = 10;
_root.maxNegativeEnd = 9;
_root.maxSpeed = 0;
_root.internet_On = false;
_root.version = "local";
_root.titolo = "Giochi di matematica scuola media";
_root.istruzioni = "elenco:";
_root.aiuto = "AIUTO DI PARTE COMUNE ________________________ Devi disporre in ordine crescente i segmenti del bruco trascinandoli al loro posto. Vicino alla testa il segmento corrispondente al più grande e dalla parte opposta il più piccolo. Alla fine verifica l\'esercizio utilizzando l\'apposito pulsante che apparirà in basso a destra. Premi ALL\'INIZIO per iniziare da capo.";
_root.exit = "Uscita";
_root.copyright = "Diritti";
_root.information = "Informazioni";
_root.help = "Aiuto";
_root.t_exit = "Vuoi uscire?";
_root.torna = "Ritorna all\'inizio";
_global.datiEd = new educa();
datiEducational = new LoadVars();
file = _root.nomeFile + "_edu_setting" + ".txt";
datiEducational.load(file);
datiEducational.onLoad = function(success)
{
   var _loc2_ = _root;
   if(_loc2_.modificaEduSetting == true)
   {
      stringaConcatenata = datiEducational.total_Question + datiEducational.positive_End + datiEducational.Negative_End + datiEducational.speed;
      var _loc1_ = 0;
      while(_loc1_ < stringaConcatenata.length)
      {
         if(!isDigit(stringaConcatenata.substr(_loc1_,1)))
         {
            _loc2_.modificaEduSetting = false;
         }
         _loc1_ = _loc1_ + 1;
      }
   }
   if(_loc2_.modificaEduSetting == true)
   {
      if(Number(datiEducational.total_Question) == 0 or Number(datiEducational.positive_End) == 0 or Number(datiEducational.Negative_End) == 0)
      {
         _loc2_.modificaEduSetting = false;
      }
   }
   if(_loc2_.modificaEduSetting == true)
   {
      if(Number(datiEducational.total_Question) > Number(_loc2_.maxTotalQuestion))
      {
         datiEd.InsTotalQuestion(_loc2_.maxTotalQuestion);
      }
      else
      {
         datiEd.InsTotalQuestion(datiEducational.total_Question);
      }
      if(Number(datiEducational.positive_End) > Number(_loc2_.maxPositiveEnd))
      {
         if(Number(datiEducational.positive_End) > datiEd.totalQuestion)
         {
            datiEd.InsPositiveEnd(String(datiEd.totalQuestion));
         }
         else
         {
            datiEd.InsPositiveEnd(_loc2_.maxPositiveEnd);
         }
      }
      else if(Number(datiEducational.positive_End) > datiEd.totalQuestion)
      {
         datiEd.InsPositiveEnd(String(datiEd.totalQuestion));
      }
      else
      {
         datiEd.InsPositiveEnd(datiEducational.positive_End);
      }
      if(Number(datiEducational.Negative_End) > Number(_loc2_.maxNegativeEnd))
      {
         if(Number(datiEducational.Negative_End) > datiEd.positiveEnd)
         {
            datiEd.InsNegativeEnd(String(datiEd.positiveEnd - 1));
         }
         else
         {
            datiEd.InsNegativeEnd(_loc2_.MaxPositiveEnd);
         }
      }
      else if(Number(datiEducational.Negative_End) > datiEd.positiveEnd)
      {
         datiEd.InsNegativeEnd(String(datiEd.positiveEnd - 1));
      }
      else
      {
         datiEd.InsNegativeEnd(datiEducational.Negative_End);
      }
      if(Number(datiEducational.speed) > Number(_loc2_.maxSpeed))
      {
         datiEd.InsSpeed(_loc2_.maxSpeed);
      }
      else
      {
         datiEd.InsSpeed(datiEducational.speed);
      }
      datiEd.insInternet(datiEducational.internet_On);
      datiEd.insVersione(datiEducational.version);
   }
   else
   {
      datiEd.InsTotalQuestion(_loc2_.maxTotalQuestion);
      datiEd.InsPositiveEnd(_loc2_.maxPositiveEnd);
      datiEd.InsNegativeEnd(_loc2_.maxNegativeEnd);
      datiEd.InsSpeed(_loc2_.maxSpeed);
      datiEd.insInternet(_loc2_.internet_On);
      datiEd.insVersione(_loc2_.version);
   }
};
datiList = new LoadVars();
var file;
file = "giochi_setting.txt";
datiList.load(file);
datiList.onLoad = function(success)
{
   getURL("FSCommand:fullscreen",datiLIst.full_screen);
   getURL("FSCommand:allowscale",datiLIst.allow_scale);
   getURL("FSCommand:showmenu",datiLIst.menu);
};
