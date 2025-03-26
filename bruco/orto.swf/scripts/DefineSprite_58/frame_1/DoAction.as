function setValore(sign)
{
   if(Val > 0 && sign < 0)
   {
      Val = Val + parUnita * sign;
   }
   if(sign > 0 && Val < ValMax)
   {
      Val = Val + parUnita * sign;
   }
   ValEtt = _root[nameArray][Val];
   _root["def" + myName] = Val;
}
function setValoreTimer()
{
   if(To != 0)
   {
      setValore(curSign);
   }
}
stop();
myName = this._name;
Val = _root["def" + myName];
nameArray = "a" + myName;
ValMax = _root[nameArray].length - 1;
ValEtt = _root[nameArray][Val];
parUnita = 1;
curSign = 0;
