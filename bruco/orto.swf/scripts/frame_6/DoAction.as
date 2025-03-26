stop();
Tentativi._visible = false;
Diff._visible = false;
numTentativi = Number(aTentativi[defTentativi]);
curErrori = 0;
curGiusti = 0;
curTentativi = 1;
var prefissoFrame;
function casualeArray(parN, parArr)
{
   var _loc3_ = undefined;
   var _loc2_ = new Array();
   var _loc5_ = new Array();
   var _loc1_ = 0;
   while(_loc1_ < parArr.length)
   {
      _loc2_.push(parArr[_loc1_]);
      _loc1_ = _loc1_ + 1;
   }
   _loc1_ = 0;
   while(_loc1_ < parN)
   {
      _loc3_ = random(_loc2_.length);
      _loc5_[_loc1_] = _loc2_[_loc3_];
      _loc2_.splice(_loc3_,1);
      _loc1_ = _loc1_ + 1;
   }
   return _loc5_;
}
function eseguiPasso(vinti, persi)
{
   curErrori = curErrori + persi;
   curGiusti = curGiusti + vinti;
   curTentativi++;
   if(curTentativi > numTentativi)
   {
      this.Es2.butRiprova._visible = false;
      visualizzaFinale();
      return undefined;
   }
}
function eseguiPassoEnd()
{
   curRisposta = this.Recinto.Figure.risposta;
   trace("curNumInputs =" + curNumInputs + "  curRisposta = " + curRisposta);
   this.Recinto.inputUtente.text = "";
   this.Recinto.Figure.Fon.gotoAndStop("zemlia");
}
function verificaRisposta()
{
   if(!verificaPremuto)
   {
      verificaPremuto = true;
      var _loc2_ = trimString(this.Recinto.inputUtente.text);
      trace("sRispostaUtente =" + _loc2_);
      if(isNaN(_loc2_))
      {
         this.Recinto.inputUtente.text = "";
         verificaPremuto = false;
         return undefined;
      }
      if(Number(_loc2_) > Number(curRisposta))
      {
         this.Recinto.Pecore.risposta = curRisposta;
         this.Recinto.Pecore.inputUtente = _loc2_;
         this.Recinto.Figure.Fon.gotoAndStop("suhoi");
         curErrori++;
      }
      else if(Number(_loc2_) < Number(curRisposta))
      {
         this.Recinto.Pecore.risposta = curRisposta;
         this.Recinto.Pecore.inputUtente = _loc2_;
         this.Recinto.Figure.Fon.gotoAndStop("pusto");
         curErrori++;
      }
      else
      {
         this.Recinto.Figure.Fon.gotoAndStop("erba");
         curGiusti++;
      }
      this.Recinto.Pausa.play();
   }
}
function visualizzaFinale()
{
   if(curGiusti > curErrori)
   {
      vinto = true;
   }
   else
   {
      vinto = false;
   }
   Finale.play();
}
function trimString(str)
{
   var _loc3_ = str;
   var _loc2_ = undefined;
   var _loc5_ = "";
   if(_loc3_ != null && _loc3_.length > 0)
   {
      var _loc1_ = 0;
      while(_loc1_ < _loc3_.length)
      {
         if(_loc3_.charAt(_loc1_) != " ")
         {
            _loc2_ = _loc3_.substr(_loc1_);
            break;
         }
         _loc1_ = _loc1_ + 1;
      }
      _loc1_ = _loc2_.length - 1;
      while(_loc1_ >= 0)
      {
         if(_loc2_.charAt(_loc1_) != " ")
         {
            var _loc4_ = _loc1_ + 1;
            _loc5_ = _loc2_.substr(0,_loc4_);
            break;
         }
         _loc1_ = _loc1_ - 1;
      }
   }
   return _loc5_;
}
function riprovaGioco()
{
   gotoAndStop("Repeat");
   play();
}
function nuovoGioco()
{
   gotoAndStop("Start");
   play();
}
function generate(id)
{
   var _loc8_ = undefined;
   var _loc5_ = undefined;
   var _loc4_ = undefined;
   var _loc3_ = undefined;
   var _loc6_ = undefined;
   var _loc2_ = random(aLb.length);
   _loc6_ = aOper[_loc2_];
   _loc4_ = aO1[_loc2_];
   _loc3_ = aO2[_loc2_];
   Ball.res = aRes[_loc2_];
   _loc5_ = aLb[_loc2_];
   _loc8_ = aRes[_loc2_];
   _root["Tablo" + id].lb = _loc5_;
   aRes.splice(_loc2_,1);
   aLb.splice(_loc2_,1);
   aO1.splice(_loc2_,1);
   aO2.splice(_loc2_,1);
   aOper.splice(_loc2_,1);
   setOthers(_loc4_,_loc3_,_loc6_,id);
}
function setOthers(o1, o2, op, id)
{
   var _loc4_ = undefined;
   var _loc6_ = undefined;
   var _loc5_ = undefined;
   _loc4_ = new Array();
   _loc6_ = 0;
   var _loc2_ = 0;
   while(_loc2_ < sign.length)
   {
      if(_loc2_ != op)
      {
         _loc4_[_loc6_] = signLb[_loc2_];
         _loc6_ = _loc6_ + 1;
      }
      _loc2_ = _loc2_ + 1;
   }
   var _loc3_ = 0;
   while(_loc3_ < nSites)
   {
      if(_loc3_ != id)
      {
         _loc5_ = random(_loc4_.length);
         _root["Tablo" + _loc3_].lb = " " + o1 + _loc4_[_loc5_] + o2;
         _loc4_.splice(_loc5_,1);
      }
      _loc3_ = _loc3_ + 1;
   }
}
function setOthersV(ll, rr)
{
   var _loc6_ = undefined;
   var _loc5_ = undefined;
   var _loc4_ = undefined;
   _loc6_ = new Array();
   _loc5_ = new Array();
   _loc4_ = 0;
   var _loc2_ = 0;
   while(_loc2_ < aLb2.length)
   {
      if(aLb2[_loc2_] != ll)
      {
         if(aRes2[_loc2_] != rr)
         {
            _loc5_[_loc4_] = aLb2[_loc2_];
            _loc4_ = _loc4_ + 1;
         }
      }
      _loc2_ = _loc2_ + 1;
   }
   temp3 = _loc5_.join();
   _loc6_ = getCasual(nSites,_loc5_);
   temp4 = _loc6_.join();
   var _loc3_ = 0;
   while(_loc3_ < nSites)
   {
      if(_loc3_ != curId)
      {
         _root["Tablo" + _loc3_].lb = _loc6_[_loc3_];
      }
      else
      {
         s = 1;
      }
      _loc3_ = _loc3_ + 1;
   }
}
function onclick(id)
{
   var _loc2_ = 0;
   while(_loc2_ < nSites)
   {
      _root["Tablo" + _loc2_]._visible = false;
      _loc2_ = _loc2_ + 1;
   }
   Vivo = false;
   if("Tablo" + curId == id)
   {
      Ball.gotoAndPlay("Succ");
      Cerv.gotoAndPlay(2);
      _root.CervTarg.stop();
      _root.curSc2 = _root.curSc2 + 1;
   }
   else
   {
      Cerv._visible = false;
      Ball.gotoAndPlay("Fal");
      _root.curSc1 = _root.curSc1 + 1;
   }
   check();
}
function check()
{
   if(aLb.length == 0)
   {
      var _loc2_ = 0;
      while(_loc2_ < nSites)
      {
         _root["Tablo" + _loc2_]._visible = false;
         _loc2_ = _loc2_ + 1;
      }
      if(curSc2 >= curSc1)
      {
         gotoAndStop("T");
      }
      else
      {
         gotoAndStop("F");
      }
   }
   else
   {
      curId = random(nSites);
      generate(curId);
   }
}
function addScore(w)
{
   _root["Score" + w].grow();
}
if(Number(defDiff) == 0)
{
   prefissoFrame = "f";
   numFrames = 10;
}
else
{
   prefissoFrame = "d";
   numFrames = 10;
}
var aTemp = new Array();
var j = 0;
while(j < numFrames)
{
   aTemp.push(prefissoFrame + (j + 1));
   j++;
}
var aTemp2;
aTemp2 = casualeArray(numTentativi,aTemp);
var vinto;
sign = new Array("0","1","2","3");
signLb = new Array(" + "," - "," x "," : ");
aRes = new Array();
aLb = new Array();
aLb2 = new Array();
aRes2 = new Array();
aOper = new Array();
aO2 = new Array();
aO1 = new Array();
maxVal0 = maxVal;
var j = 0;
while(j < sign.length)
{
   s = sign[j];
   this["num" + s] = new Array();
   if(s == "2")
   {
      maxVal0 = Math.floor(maxVal * 0.5);
   }
   else
   {
      maxVal0 = maxVal;
   }
   var j1 = 0;
   while(j1 < Number(maxVal0) - 1)
   {
      this["num" + s][j1] = j1 + 2;
      j1++;
   }
   j++;
}
var j = 0;
while(j < numPart)
{
   m = random(sign.length);
   s = sign[m];
   m = random(this["num" + s].length);
   cisl1 = Number(this["num" + s][m]);
   if(s == "0")
   {
      max = Number(maxVal) - cisl1;
      cisl2 = random(max - 2) + 2;
      lb = " + ";
      res = cisl1 + cisl2;
   }
   if(s == "1")
   {
      max = cisl1;
      cisl2 = random(max - 2) + 2;
      lb = " - ";
      res = cisl1 - cisl2;
   }
   if(s == "2")
   {
      maxVal0 = Math.floor(maxVal * 0.5);
      max = Math.floor(Number(maxVal) / cisl1);
      cisl2 = random(max - 2) + 2;
      lb = " x ";
      res = cisl1 * cisl2;
   }
   if(s == "3")
   {
      max = Math.floor(cisl1 / 2);
      cisl2 = random(max - 2) + 2;
      lb = " : ";
      res = Math.floor(cisl1 / cisl2);
      cisl1 = cisl2 * res;
   }
   aOper[j] = s;
   aO1[j] = cisl1;
   aO2[j] = cisl2;
   aLb[j] = cisl1 + lb + cisl2;
   aLb2[j] = aLb[j];
   aRes[j] = res;
   aRes2[j] = res;
   j++;
}
temp3 = aLb2.join();
curId = random(nSites);
generate(curId);
