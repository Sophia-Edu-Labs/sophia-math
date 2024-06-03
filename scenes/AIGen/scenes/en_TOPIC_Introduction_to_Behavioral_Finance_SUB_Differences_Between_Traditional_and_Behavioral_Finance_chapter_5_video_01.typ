#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
#v(40pt)
#only("1-")[- Investors overestimate their knowledge or ability 🧠💪]
#v(20pt)
#only("2-")[- Believe they can predict market movements 📈🔮]
#only("1")[
#voiceover("Overconfidence bias occurs when investors overestimate their knowledge or ability. They believe they know more than they actually do.")
]
#only("2")[
#voiceover("This leads them to think they can predict market movements better than is realistically possible.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples]
#v(40pt)
#only("1-")[- Overtrading 💸]
#v(20pt)
#only("2-")[- Underdiversification 🧺]
#v(20pt)
#only("3-")[- Ignoring risks ⚠]
#only("1")[
#voiceover("Overconfident investors may trade excessively, believing they can time the market. This often leads to poor returns due to transaction costs.")
]
#only("2")[
#voiceover("They may also underdiversify their portfolios, thinking they can pick the best stocks. This increases their risk if those picks don't perform well.")
]
#only("3")[
#voiceover("Overconfident investors may ignore risks, assuming their abilities will allow them to avoid losses. But no one can predict the market perfectly.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Illustration]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Actual market data
actual_returns = np.random.normal(0, 1, 100).cumsum()

# Overconfident investor's predictions
predicted_returns = actual_returns + np.random.normal(0, 1, 100).cumsum() * 0.5

plt.figure(figsize=(8, 6))
plt.plot(actual_returns, label='Actual Market', color='blue')
plt.plot(predicted_returns, label='Overconfident Prediction', color='red')
plt.xlabel('Time')
plt.ylabel('Cumulative Return')
plt.title("Overconfidence Bias: Predicted vs Actual Returns")
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph illustrates overconfidence bias. The blue line shows actual market returns over time. The red line shows an overconfident investor's predictions. They believe they can predict returns better than the market, but their predictions deviate significantly from reality.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Overconfidence bias: overestimating knowledge and abilities 🎓]
#v(20pt)
#only("2-")[- Leads to excessive trading, underdiversification, risk-taking 🎲]
#v(20pt)
#only("3-")[- Can result in poor investment outcomes 📉]
#only("1")[
#voiceover("In summary, overconfidence bias is the tendency for investors to overestimate their knowledge and abilities.")
]
#only("2")[
#voiceover("This can lead to excessive trading, underdiversification, and ignoring risks.")
]
#only("3")[
#voiceover("As a result, overconfident investors may experience poor investment outcomes compared to the market. It's important to be aware of this bias and to make investment decisions based on objective analysis rather than overconfidence.")
]
]