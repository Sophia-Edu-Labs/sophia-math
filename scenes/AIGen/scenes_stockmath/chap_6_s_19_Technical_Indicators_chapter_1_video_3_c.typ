#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[RSI Interpretation]
#v(40pt)
If an RSI value is above 70, the stock is generally considered:
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Undervalued]#only("2-")[#text(fill:red)[a) Undervalued]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Overvalued]#only("3-")[#text(fill:green)[b) Overvalued]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Stable]#only("4-")[#text(fill:red)[c) Stable]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]

#only("1")[#voiceover("Incorrect answer. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) Undervalued is incorrect. A high RSI above 70 does not indicate an undervalued stock, quite the opposite in fact.")]
#only("3")[#voiceover("Option b) Overvalued is the correct answer. An RSI above 70 is generally considered to indicate an overbought or overvalued condition.")]
#only("4")[#voiceover("Option c) Stable is also incorrect. A high RSI suggests a potentially unstable, overvalued state, not a stable one.")]
#only("5")[#voiceover("And option d) None of the above is incorrect, since one of the provided answers (Overvalued) is correct.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[RSI Basics]
#v(40pt)
#only("1-")[- RSI = Relative Strength Index 📈]
#v(20pt)
#only("2-")[- Momentum oscillator ranging from 0 to 100]
#v(20pt)
#only("3-")[- Measures speed and change of price movements]
#v(20pt)
#only("4-")[- Helps identify overbought or oversold conditions]

#only("1")[#voiceover("Let's review some basics about the Relative Strength Index, or RSI.")]
#only("2")[#voiceover("The RSI is a momentum oscillator that ranges from 0 to 100.")]
#only("3")[#voiceover("It measures the speed and change of price movements.")]
#only("4")[#voiceover("Traders use it to identify overbought or oversold conditions in the market.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[RSI Interpretation]
#v(40pt)
#only("1-")[- RSI > 70: Overbought 🔥]
#v(20pt)
#only("2-")[- RSI < 30: Oversold 🧊]
#v(20pt)
#only("3-")[- 30 ≤ RSI ≤ 70: Neutral 🟡]

#only("1")[#voiceover("An RSI above 70 is generally considered overbought. This suggests the stock may be overvalued and due for a pullback.")]
#only("2")[#voiceover("Conversely, an RSI below 30 indicates an oversold condition, suggesting the stock may be undervalued and due for a bounce.")]
#only("3")[#voiceover("An RSI between 30 and 70 is considered neutral, neither overbought nor oversold.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example RSI Chart]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import yfinance as yf
import pandas as pd
import matplotlib.pyplot as plt

stock = yf.download('AAPL', '2020-01-01', '2021-12-31')
delta = stock['Close'].diff()
up = delta.clip(lower=0)
down = -delta.clip(upper=0)
ema_up = up.ewm(com=13, adjust=False).mean()
ema_down = down.ewm(com=13, adjust=False).mean()
rs = ema_up/ema_down
rsi = 100 - (100/(1 + rs))

fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(15, 8), gridspec_kw={'height_ratios': [3, 1]})
ax1.plot(stock['Close'])
ax1.set_ylabel('Price')
ax1.grid(True)
ax1.set_title('Apple Stock Price')

ax2.plot(rsi, color='purple')
ax2.axhline(30, color='red', linestyle='--')
ax2.axhline(70, color='red', linestyle='--')
ax2.set_ylabel('RSI')
ax2.set_xlabel('Date')
ax2.grid(True)
ax2.set_title('RSI')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's an example RSI chart for Apple stock. The upper chart shows the stock price, and the lower chart shows the RSI.")]
#only("2")[#voiceover("Notice how when the RSI crosses above 70, marked by the upper red line, it often coincides with a peak in the stock price.")]
#only("3")[#voiceover("And when the RSI dips below 30, the lower red line, it frequently aligns with a trough in the stock price.")]
#only("4")[#voiceover("This illustrates how an RSI above 70 can indicate an overbought or overvalued condition, while an RSI below 30 can signal an oversold or undervalued state.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- RSI > 70 ⇒ Overbought/Overvalued 📈🔥]
#v(20pt)
#only("2-")[- RSI < 30 ⇒ Oversold/Undervalued 📉🧊]
#v(20pt)
#only("3-")[- 30 ≤ RSI ≤ 70 ⇒ Neutral 🟡]
#v(20pt)
#only("4-")[- Helps identify potential turning points 🔄]

#only("1")[#voiceover("To recap, an RSI above 70 suggests an overbought or overvalued condition.")]
#only("2")[#voiceover("An RSI below 30 indicates an oversold or undervalued state.")]
#only("3")[#voiceover("An RSI between 30 and 70 is considered neutral.")]
#only("4")[#voiceover("The RSI is a valuable tool to help identify potential turning points in a stock's price. But remember, it's just one indicator and should be used in conjunction with other forms of analysis.")]
]