#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Common Behavioral Biases in Trading]
#v(40pt)
#only("1-")[- Overconfidence 🤠]
#v(20pt)
#only("2-")[- Loss Aversion 😱]
#only("1")[
#voiceover("Two common behavioral biases that traders often exhibit are overconfidence and loss aversion.")
]
#only("2")[
#voiceover("Let's explore each of these biases in more detail.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence]
#v(40pt)
#only("1-")[- Overestimating one's abilities 🏆]
#v(20pt)
#only("2-")[- Leads to excessive trading 📈]
#v(20pt)
#only("3-")[- Ignoring market data 📊]
#only("1")[
#voiceover("Overconfidence is the tendency for traders to overestimate their abilities and knowledge.")
]
#only("2")[
#voiceover("This can lead to excessive trading, as overconfident traders believe they can consistently beat the market.")
]
#only("3")[
#voiceover("Overconfident traders may also ignore important market data that contradicts their beliefs.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion]
#v(40pt)
#only("1-")[- Fear of losses > Desire for gains 😨]
#v(20pt)
#only("2-")[- Holding losing investments too long 📉]
#v(20pt)
#only("3-")[- Selling winning investments too soon 📈]
#only("1")[
#voiceover("Loss aversion is the tendency for people to feel the pain of losses more intensely than the pleasure of gains.")
]
#only("2")[
#voiceover("In trading, this can lead to holding onto losing investments for too long, hoping they will recover.")
]
#only("3")[
#voiceover("On the flip side, loss-averse traders may sell winning investments too soon to lock in gains and avoid potential future losses.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Trading]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
strategies = ['Overconfident', 'Loss Averse', 'Rational']
performance = [60, 70, 90]

# Create plot
fig, ax = plt.subplots()
ax.bar(strategies, performance, color=['red', 'orange', 'green'])
ax.set_ylabel('Performance (% of Optimal)')
ax.set_title('Impact of Behavioral Biases on Trading Performance')

# Add labels
for i, v in enumerate(performance):
    ax.text(i, v+1, str(v)+'%', ha='center')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("These biases can significantly impact trading performance. As we can see in this chart, overconfident and loss-averse traders tend to underperform compared to rational traders who are less influenced by these biases.")
]
]]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Biases]
#v(40pt)
#only("1-")[- Awareness of biases 🧠]
#v(20pt)
#only("2-")[- Sticking to trading plans 📜]
#v(20pt)
#only("3-")[- Diversification 🌍]
#only("1")[
#voiceover("To mitigate these biases, traders should first become aware of their existence and potential impact.")
]
#only("2")[
#voiceover("Sticking to pre-defined trading plans can help reduce the influence of emotions and biases on trading decisions.")
]
#only("3")[
#voiceover("Finally, diversifying investments can help manage the risk associated with overconfidence and loss aversion.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Overconfidence & Loss Aversion: Common biases 🧠]
#v(20pt)
#only("2-")[- Can lead to suboptimal trading 📉]
#v(20pt)
#only("3-")[- Awareness, planning, diversification can help 🌍]
#only("1")[
#voiceover("In summary, overconfidence and loss aversion are two common behavioral biases that traders often exhibit.")
]
#only("2")[
#voiceover("These biases can lead to suboptimal trading decisions and underperformance compared to rational trading strategies.")
]
#only("3")[
#voiceover("By being aware of these biases, sticking to trading plans, and diversifying investments, traders can work to mitigate their impact and improve their overall performance.")
]
]