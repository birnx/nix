found a decent top and bottom finder, works ace on 15m and 1hr timeframes. i changed a bit of the code and added in \n inbetween the bomb and hammer icons and ignore level one signals mostly
https://www.tradingview.com/script/F2XSHmsU-Leledc-Exhaustion-Bar-V4-PLUS/

code changes..
plotshape(sell == 1 , text='🔨', style=shape.arrowdown, location=location.abovebar, color=#FF0000, textcolor=color.white, offset=0, transp=0)

plotshape(sell == 2 , text='🔨\n🔨', style=shape.arrowdown, location=location.abovebar, color=#FF0000, textcolor=color.white, offset=0, transp=0)

plotshape(sell == 3 , text='🔨\n🔨\n🔨', style=shape.arrowdown, location=location.abovebar, color=#FF0000, textcolor=color.white, offset=0, transp=0)

plotshape(buy == 1 , text='💣', style=shape.arrowup, location=location.belowbar, color=#32CD32, textcolor=color.white, offset=0, transp=0)

plotshape(buy == 2 , text='💣\n💣\n', style=shape.arrowup, location=location.belowbar, color=#32CD32, textcolor=color.white, offset=0, transp=0)

plotshape(buy == 3 , text='💣\n💣\n💣', style=shape.arrowup, location=location.belowbar, color=#32CD32, textcolor=color.white, offset=0, transp=0)