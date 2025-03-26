function setLinguaG(game)
{
   var _loc1_ = _root;
   if(game)
   {
      _loc1_.help2.aiuto_titolo_txt = linguaG.t_title;
      _loc1_.help2.aiuto_txt = linguaG.T_help;
      _loc1_.titoloSopra.text = linguaG.t_title;
      _loc1_.ex_txt = linguaG.p_exit;
      _loc1_.diritti_txt = linguaG.p_copyright;
      _loc1_.info_txt = linguaG.p_information;
      _loc1_.helpbut_txt = linguaG.p_help;
      _loc1_.uscita.exit_txt = linguaG.t_exit;
      _loc1_.torna_txt = linguaG.p_return;
      _level0.istruzioni_iniziali = linguaG.t_instruction;
      _level0.istruzioni_iniziali_title = linguaG.t_title;
      about.sTitolo = "Orto cartesiano";
      about.sAutore = "Vladimir Lapin";
   }
   else
   {
      _loc1_.help2.aiuto_titolo_txt = lingua.t_title;
      _loc1_.help2.aiuto_txt = lingua.T_help;
      _loc1_.titoloSopra.text = lingua.t_title;
      _loc1_.ex_txt = lingua.p_exit;
      _loc1_.diritti_txt = lingua.p_copyright;
      _loc1_.info_txt = lingua.p_information;
      _loc1_.guida_txt = lingua.p_help;
      _loc1_.uscita.exit_txt = lingua.t_exit;
      _loc1_.torna_txt = lingua.p_return;
      _loc1_.istruzioni_iniziali.text = lingua.t_instruction;
   }
}
function torna()
{
   _level0.gotoAndStop("Games");
   torna_btn._visible = false;
}
function exit()
{
   chiudi_finestre();
   uscita._visible = true;
}
function aiuto()
{
   chiudi_finestre();
   help2._visible = true;
}
function info()
{
   chiudi_finestre();
   about._visible = true;
}
function chiudi_finestre()
{
   help2._visible = false;
   info._visible = false;
   about._visible = false;
   uscita._visible = false;
}
stop();
