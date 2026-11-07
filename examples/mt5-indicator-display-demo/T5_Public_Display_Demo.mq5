#property strict
#property indicator_chart_window
#property indicator_buffers 1
#property indicator_plots   1
#property indicator_label1  "Close display demo"
#property indicator_type1   DRAW_LINE
#property indicator_color1  clrDeepSkyBlue
#property indicator_width1  1

double CloseBuffer[];

int OnInit()
  {
   SetIndexBuffer(0,CloseBuffer,INDICATOR_DATA);
   ArraySetAsSeries(CloseBuffer,true);
   IndicatorSetString(INDICATOR_SHORTNAME,"Public display demo");
   return(INIT_SUCCEEDED);
  }

int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
   for(int i=0;i<rates_total;i++) CloseBuffer[i]=close[i];
   return(rates_total);
  }
