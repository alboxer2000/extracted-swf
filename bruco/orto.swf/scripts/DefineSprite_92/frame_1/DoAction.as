function pars(k, y)
{
   this.valX = k;
   this.valY = y;
}
function preparaPole()
{
   k = 0;
   i = 0;
   while(i < numKletki)
   {
      Kletka.duplicateMovieClip("Kletka" + i,i,new pars(k,10 - y1));
      this["Kletka" + i]._visible = true;
      this["Kletka" + i]._x = xo + k * W;
      this["Kletka" + i]._y = yo;
      k++;
      if(k > 10)
      {
         k = 0;
         yo = yo + H;
         y1++;
      }
      i++;
   }
   _parent.preparaCoordinate();
}
stop();
Kletka._visible = false;
numKletki = 121;
W = 40;
H = 40;
yo = 0;
xo = 0;
y1 = 0;
preparaPole();
