#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Technical Indicators]
#v(40pt)
Which element is not directly used in calculating most technical indicators?
#v(40pt)

#only("-1")[a) Stock prices]#only("2-")[#text(fill:green)[a) Stock prices]]
#v(10pt)
#only("-2")[b) Trade volume]#only("3-")[#text(fill:green)[b) Trade volume]]
#v(10pt)  
#only("-3")[c) Company earnings]#only("4-")[#text(fill:red)[c) Company earnings]]
#v(10pt)
#only("-4")[d) Time periods]#only("5-")[#text(fill:green)[d) Time periods]]

#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Stock prices are indeed a key input for most technical indicators.")]
#only("3")[#voiceover("Trade volume is also commonly used in many technical indicators.")]
#only("4")[#voiceover("However, company earnings, which you correctly identified, are not directly used in most technical indicator calculations. Earnings are more of a fundamental data point.")]
#only("5")[#voiceover("Lastly, time periods, such as the lookback period for a moving average, are often a parameter in technical indicators.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)

#only("1-")[Most technical indicators rely on:]
#v(20pt)
#only("2-")[- Price data (open, high, low, close) 📈]
#v(10pt)
#only("3-")[- Trading volume 📊]
#v(10pt)  
#only("4-")[- Time periods (e.g., 20-day, 50-day) ⏰]

#v(40pt)
#only("5-")[Company earnings are a fundamental metric, not a technical one. 💰]

#only("1")[#voiceover("Let's break this down further. Most technical indicators are computed using:")]
#only("2")[#voiceover("Price data, including the open, high, low, and closing prices for each period.")]
#only("3")[#voiceover("Trading volume, which measures how many shares were traded.")]
#only("4")[#voiceover("And time periods, like the number of days used in a moving average calculation.")]
#only("5")[#voiceover("On the other hand, company earnings are a fundamental metric that comes from the company's financial statements. While earnings can certainly impact a stock's price, they are not directly plugged into most technical indicator formulas.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples]
#v(40pt)

#only("1-")[Technical indicators that use price and volume data:]
#v(20pt)
#only("2-")[- Moving Averages (SMA, EMA) 📈]
#v(10pt)
#only("3-")[- Relative Strength Index (RSI) 💪]
#v(10pt)  
#only("4-")[- Moving Average Convergence Divergence (MACD) 📉📈]
#v(10pt)
#only("5-")[- On-Balance Volume (OBV) 📊]

#only("1")[#voiceover("To illustrate, here are some popular technical indicators that rely on price and volume data:")]
#only("2")[#voiceover("Moving averages, like the Simple Moving Average (SMA) and Exponential Moving Average (EMA), smooth out price action.")]
#only("3")[#voiceover("The Relative Strength Index, or RSI, measures momentum by comparing the magnitude of recent gains and losses.")]
#only("4")[#voiceover("MACD, or Moving Average Convergence Divergence, uses moving averages to identify trend changes.")]
#only("5")[#voiceover("And On-Balance Volume, or OBV, uses volume flow to predict changes in stock price.")]
#only("6")[#voiceover("All of these rely on price and volume, not fundamental data like earnings. Fantastic work identifying that distinction!")]
]