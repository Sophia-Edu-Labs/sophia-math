#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Key Behavioral Biases in Trading]
#v(40pt)
#only("1-")[- Overconfidence 🤠]
#only("1")[#voiceover("Two key behavioral biases that affect trading are overconfidence and loss aversion.")]
#v(20pt)
#only("2-")[    - Can lead to excessive trading 📈]
#only("2")[#voiceover("Overconfidence can lead traders to engage in excessive trading, believing they have an edge over the market.")]
#v(40pt)
#only("3-")[- Loss Aversion 😰]
#only("3")[#voiceover("On the other hand, loss aversion is the tendency to feel the pain of losses more acutely than the pleasure of gains.")]
#v(20pt)
#only("4-")[    - Can cause traders to hold losing stocks too long 📉]
#only("4")[#voiceover("This can cause traders to hold onto losing stocks longer than they should, hoping to avoid realizing a loss.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Trading Strategies]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Simulated trading data
trades = np.random.normal(0, 1, 1000).cumsum()

# Overconfident trader
overconfident_trades = trades + np.random.normal(0, 0.5, 1000).cumsum()

# Loss-averse trader
loss_averse_trades = trades.copy()
loss_averse_trades[loss_averse_trades < 0] *= 0.5

# Plot the trading strategies
plt.figure(figsize=(10, 6))
plt.plot(trades, label='Rational Trader', alpha=0.7)
plt.plot(overconfident_trades, label='Overconfident Trader', alpha=0.7)
plt.plot(loss_averse_trades, label='Loss-Averse Trader', alpha=0.7)

plt.xlabel('Time')
plt.ylabel('Cumulative Returns')
plt.title('Impact of Behavioral Biases on Trading Strategies')
plt.legend()
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("These biases can significantly impact trading strategies, as illustrated in this graph.")]
#v(20pt)
#only("2-")[- Overconfident trader: Excessive trading, high volatility 📊]
#only("2")[#voiceover("The overconfident trader, shown in orange, engages in excessive trading, leading to higher volatility in returns.")]
#v(20pt)
#only("3-")[- Loss-averse trader: Holds losing positions, misses opportunities 📉]
#only("3")[#voiceover("The loss-averse trader, in green, holds onto losing positions longer, potentially missing out on other opportunities.")]
#v(20pt)
#only("4-")[- Rational trader: Follows strategy, less affected by biases 📈]
#only("4")[#voiceover("In contrast, the rational trader, in blue, follows a more consistent strategy and is less affected by these biases.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Behavioral Biases]
#v(40pt)
#only("1-")[- Awareness of biases 🧠]
#only("1")[#voiceover("To mitigate the impact of behavioral biases, traders should first be aware of their existence and potential influence on decision-making.")]
#v(20pt)
#only("2-")[- Develop and stick to a trading plan 📝]
#only("2")[#voiceover("Developing and adhering to a well-defined trading plan can help reduce the impact of emotions and biases.")]
#v(20pt)
#only("3-")[- Set clear entry and exit rules 📊]
#only("3")[#voiceover("Setting clear entry and exit rules for trades can help prevent overconfidence and loss aversion from affecting decisions.")]
#v(20pt)
#only("4-")[- Regularly review and adjust strategies 🔍]
#only("4")[#voiceover("Regularly reviewing and adjusting trading strategies based on performance and market conditions can help identify and correct bias-driven mistakes.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Overconfidence and loss aversion are common behavioral biases in trading 🧠📉]
#only("1")[#voiceover("In summary, overconfidence and loss aversion are two common behavioral biases that can significantly impact trading strategies and outcomes.")]
#v(20pt)
#only("2-")[- These biases can lead to suboptimal decisions and performance 📊❌]
#only("2")[#voiceover("These biases can lead to suboptimal decisions and negatively affect trading performance.")]
#v(20pt)
#only("3-")[- Awareness, planning, and regular review can help mitigate their impact 📝🔍]
#only("3")[#voiceover("By being aware of these biases, developing a clear trading plan, and regularly reviewing and adjusting strategies, traders can work to mitigate their impact and improve their overall trading performance.")]
]