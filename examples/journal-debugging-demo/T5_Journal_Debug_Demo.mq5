#property strict

int OnInit()
  {
   Print("Public Journal debug demo initialized");
   return(INIT_SUCCEEDED);
  }

void OnTick()
  {
   static datetime last_bar=0;
   datetime current_bar=iTime(_Symbol,PERIOD_CURRENT,0);
   if(current_bar!=last_bar)
     {
      last_bar=current_bar;
      PrintFormat("New bar: symbol=%s timeframe=%s",_Symbol,EnumToString((ENUM_TIMEFRAMES)_Period));
     }
  }
