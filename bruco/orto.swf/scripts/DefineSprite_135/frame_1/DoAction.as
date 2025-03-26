function preparaCoordinate()
{
   butRiprova._visible = false;
   Control._visible = false;
   initO();
   this.createEmptyMovieClip("line",-1);
   aInxKletki = casuale(numPostiRandom,numKletki);
   trace("aInxKletki=" + aInxKletki.join());
   i = 0;
   while(i < numPostiRandom)
   {
      k = aInxKletki[i];
      this["XY" + i].x = Pole["Kletka" + k].valX;
      this["XY" + i].y = Pole["Kletka" + k].valY;
      Pole["Kletka" + k].oggetto = i;
      trace("k=" + k);
      trace("._name=" + Pole["Kletka" + k]._name);
      trace(".valX=" + Pole["Kletka" + k].valX);
      i++;
   }
}
function initO()
{
   i = 0;
   while(i < numPostiRandom)
   {
      this["O" + i]._x = this["O" + i].xo;
      this["O" + i]._y = this["O" + i].yo;
      this["O" + i].gotoAndStop(1);
      this["O" + ogg].si = "";
      i++;
   }
}
function initKletki()
{
   i = 0;
   while(i < numKletki)
   {
      Pole["Kletka" + i].oggetto = "";
      i++;
   }
}
function casuale(n, m)
{
   var _loc1_ = undefined;
   var _loc3_ = undefined;
   var _loc4_ = new Array();
   var _loc2_ = new Array();
   _loc1_ = 0;
   while(_loc1_ < m)
   {
      _loc2_[_loc1_] = _loc1_;
      _loc1_ = _loc1_ + 1;
   }
   _loc1_ = 0;
   while(_loc1_ < n)
   {
      _loc3_ = random(_loc2_.length);
      _loc4_[_loc1_] = _loc2_[_loc3_];
      _loc2_.splice(_loc3_,1);
      _loc1_ = _loc1_ + 1;
   }
   return _loc4_;
}
function swapDogg(ogg)
{
}
function checkOgg(ogg)
{
   var _loc3_ = -1;
   i = 0;
   while(i < numKletki)
   {
      if(this["O" + ogg].hitTest(Pole["Kletka" + i].Targ) == true)
      {
         _loc3_ = i;
         break;
      }
      i++;
   }
   if(_loc3_ != -1)
   {
      this["O" + ogg]._x = Pole["Kletka" + _loc3_]._x;
      this["O" + ogg]._y = Pole["Kletka" + _loc3_]._y;
      this["O" + ogg].gotoAndStop("disabilitato");
      this["O" + ogg].si = aInxKletki[ogg] == _loc3_;
      collega(Pole["Kletka" + _loc3_]._x,Pole["Kletka" + _loc3_]._y,this["XY" + ogg]._x - 25,this["XY" + ogg]._y + 25,aColori[ogg],"line");
      if(isFinal())
      {
         Control._visible = true;
      }
   }
   else
   {
      this["O" + ogg]._x = this["O" + ogg].xo;
      this["O" + ogg]._y = this["O" + ogg].yo;
   }
}
function isFinal()
{
   var _loc3_ = true;
   var _loc2_ = 0;
   while(_loc2_ < numPostiRandom)
   {
      if(this["O" + _loc2_]._x == this["O" + _loc2_].xo)
      {
         _loc3_ = false;
         break;
      }
      _loc2_ = _loc2_ + 1;
   }
   return _loc3_;
}
function Prova()
{
   Control._visible = false;
   butRiprova._visible = true;
   vinti = 0;
   var _loc3_ = 0;
   while(_loc3_ < numPostiRandom)
   {
      vinti = !this["O" + _loc3_].si?vinti:vinti + 1;
      this["O" + _loc3_].gotoAndStop(!this["O" + _loc3_].si?"rosso":"verde");
      _loc3_ = _loc3_ + 1;
   }
   _parent.eseguiPasso(vinti,numPostiRandom - vinti);
}
function collega(x0, y0, x1, y1, colore, nomeEmtyClip)
{
   with(this[nomeEmtyClip])
   {
      lineStyle(2,16777215,50)
      moveTo(x0,y0)
      lineTo(x1,y1)
      
   };
}
stop();
numPostiRandom = 3;
numKletki = 121;
numOgg = 0;
oggSu = 0;
slovo = "";
depthMin = 0;
i = 0;
while(i < numPostiRandom)
{
   this["O" + i].xo = this["O" + i]._x;
   this["O" + i].yo = this["O" + i]._y;
   i++;
}
