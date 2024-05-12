#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Candlestick Charts]
#v(40pt)
In a candlestick chart, a candlestick with a long upper shadow and short lower shadow generally indicates what market sentiment?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) Bullish]#only("2-")[#text(fill:red)[a) Bullish]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Bearish]#only("3-")[#text(fill:green)[b) Bearish]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) Neutral]#only("4-")[#text(fill:red)[c) Neutral]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) Volatile]#only("5-")[#text(fill:red)[d) Volatile]]

#only("1")[#voiceover("That's right, great job! Let's understand why that's the correct answer.")]
#only("2")[#voiceover("Option a, Bullish, is incorrect. A candlestick with a long upper shadow and short lower shadow actually indicates a bearish sentiment, not bullish.")]
#only("3")[#voiceover("Option b, Bearish, is the correct answer. This type of candlestick suggests that the price opened near the low, rallied significantly, but then closed near the open. This indicates selling pressure and a bearish sentiment.")]
#only("4")[#voiceover("Option c, Neutral, is incorrect. The candlestick described does not suggest a neutral market sentiment, but rather a bearish one.")]
#only("5")[#voiceover("Option d, Volatile, is also incorrect. While the long upper shadow does suggest some volatility during the period, the primary sentiment indicated is bearish, not simply volatile.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Candlestick Anatomy]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import mplfinance as mpf

data = [['2023-05-01', 100, 120, 90, 95],
        ['2023-05-02', 95, 100, 80, 98]]

fig, ax = mpf.plot(data, type='candle', returnfig=True,
                   ylim=(0, 130), figsize=(6, 4))
ax.annotate('Upper Shadow', xy=(1, 110), xytext=(1.1, 110),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Lower Shadow', xy=(1, 85), xytext=(1.1, 85),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Real Body', xy=(1, 96.5), xytext=(0.7, 96.5),
            arrowprops=dict(facecolor='black', shrink=0.05))
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[A candlestick consists of:]
#v(20pt)
#only("2-")[- Real Body: Open to Close]
#v(10pt)
#only("3-")[- Upper Shadow: High to Real Body]
#v(10pt)
#only("4-")[- Lower Shadow: Low to Real Body]

#only("1")[#voiceover("To understand why a long upper shadow and short lower shadow indicates a bearish sentiment, let's review the anatomy of a candlestick.")]
#only("2")[#voiceover("The real body represents the range between the opening and closing prices. If the close is above the open, the body is usually white or green. If the close is below the open, the body is usually black or red.")]
#only("3")[#voiceover("The upper shadow, or wick, represents the high of the period minus the real body.")]
#only("4")[#voiceover("The lower shadow represents the low of the period minus the real body.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Long Upper Shadow, Short Lower Shadow]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import mplfinance as mpf
import pandas as pd

data = {'Date': ['2023-05-01'], 'Open': [100], 'High': [120], 'Low': [95], 'Close': [98]}
df = pd.DataFrame(data)
df['Date'] = pd.to_datetime(df['Date'])
df.set_index('Date', inplace=True)

fig, ax = mpf.plot(df, type='candle', returnfig=True,
                   ylim=(0, 130), figsize=(2, 4))
plt.show()
```,
width: 120pt),
)
]
]
#v(40pt)
#only("1-")[This candlestick pattern suggests:]
#v(20pt)
#only("2-")[- 🔼 Prices pushed higher after open]
#v(10pt)
#only("3-")[- 📉 But then fell back down]
#v(10pt)
#only("4-")[- 🐻 Indicating selling pressure and bearish sentiment]

#only("1")[#voiceover("Now, let's consider what a candlestick with a long upper shadow and short lower shadow tells us about market sentiment.")]
#only("2")[#voiceover("The long upper shadow suggests that prices pushed significantly higher after the open.")]
#only("3")[#voiceover("However, the fact that the candlestick closed near the open, leaving a short lower shadow, tells us that prices then fell back down over the course of the period.")]
#only("4")[#voiceover("This pattern of a strong push higher followed by a decline back to near the open is a sign of selling pressure and suggests a bearish sentiment in the market.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Candlestick with long upper shadow, short lower shadow 📊]
#v(20pt)
#only("2-")[- Prices pushed higher after open 📈]
#v(20pt)
#only("3-")[- But then fell back down 📉]
#v(20pt)
#only("4-")[- Indicates selling pressure and bearish sentiment 🐻]

#only("1")[#voiceover("To summarize, a candlestick with a long upper shadow and short lower shadow is a bearish pattern.")]
#only("2")[#voiceover("It suggests that prices pushed significantly higher after the open.")]
#only("3")[#voiceover("But then fell back down, closing near the open.")]
#only("4")[#voiceover("This is a sign of selling pressure and indicates a bearish market sentiment.")]
]