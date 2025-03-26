function getCasual(parN, parArr)
{
   var _loc3_ = undefined;
   var _loc2_ = new Array();
   var _loc4_ = new Array();
   _loc2_ = parArr;
   var _loc1_ = 0;
   while(_loc1_ < parN)
   {
      _loc3_ = random(_loc2_.length);
      _loc4_[_loc1_] = _loc2_[_loc3_];
      _loc2_.splice(_loc3_,1);
      _loc1_ = _loc1_ + 1;
   }
   return _loc4_;
}
Tentativi._visible = true;
Diff._visible = true;
Info._visible = false;
