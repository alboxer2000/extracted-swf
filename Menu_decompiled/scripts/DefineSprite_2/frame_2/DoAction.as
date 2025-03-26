LoadFine = 0;
if(_framesloaded >= _totalframes)
{
   LoadFine = 1;
}
if(Number(LoadFine) == 1)
{
   gotoAndStop("Blocco");
}
else
{
   gotoAndPlay(1);
}
