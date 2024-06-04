#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion 📉]
#v(40pt)
#only("1-")[- Tendency to prefer avoiding losses over acquiring equivalent gains 🙅‍♂️💰]
#only("1")[
#voiceover("Loss aversion is the tendency for people to prefer avoiding losses rather than acquiring equivalent gains.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 🎰]
#v(40pt)
#only("1-")[- Given a coin flip:]
#v(20pt)
#only("2-")[  - Heads: Win \$100 💵]
#only("3-")[  - Tails: Lose \$100 💸]
#only("4-")[- Most people avoid this gamble! 🙅‍♀️]
#only("1")[
#voiceover("Let's consider an example. Imagine a coin flip where if it lands on heads, you win 100 dollars,")
]
#only("2")[
#voiceover("and if it lands on tails, you lose 100 dollars.")
]
#only("3")[
#voiceover("Even though the expected value of this gamble is zero, most people would avoid it.")
]
#only("4")[
#voiceover("This is because the psychological impact of losing 100 dollars is greater than the attractiveness of winning 100 dollars.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Data
x = np.linspace(-10, 10, 100)
y_gain = x
y_loss = 2 * np.abs(x)

# Create the plot
fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y_gain, label='Gain')
ax.plot(x, -y_loss, label='Loss')
ax.fill_between(x, y_gain, alpha=0.3, where=(x > 0), color='green')
ax.fill_between(x, -y_loss, alpha=0.3, where=(x < 0), color='red')
ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('center')
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')
ax.set_xlabel('Objective Value')
ax.set_ylabel('Psychological Value')
ax.set_title('Loss Aversion')
ax.legend()
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph illustrates loss aversion. The green line represents gains, and the red line represents losses. Notice how the slope of the loss line is steeper than the gain line. This means that losses hurt more than equivalent gains, leading to loss-averse behavior.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Financial Decisions 💰]
#v(40pt)
#only("1-")[- Investors hold losing stocks too long 📉]
#only("2-")[- Sell winning stocks too soon 📈]
#only("3-")[- Avoid risky investments 🎲]
#only("1")[
#voiceover("Loss aversion can significantly impact financial decisions. For example, investors may hold onto losing stocks for too long,")
]
#only("2")[
#voiceover("while selling winning stocks too soon.")
]
#only("3")[
#voiceover("They may also avoid risky investments altogether, even if they have a positive expected return.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- Loss aversion: tendency to avoid losses over acquiring gains.]
#only("2-")[- Losses hurt more than equivalent gains.]
#only("3-")[- Can lead to suboptimal financial decisions.]
#only("1")[
#voiceover("In summary, loss aversion is the tendency to prefer avoiding losses over acquiring equivalent gains.")
]
#only("2")[
#voiceover("This is because losses tend to hurt more than equivalent gains.")
]
#only("3")[
#voiceover("Loss aversion can lead to suboptimal financial decisions, such as holding losing investments too long and avoiding risky but potentially profitable investments.")
]
]