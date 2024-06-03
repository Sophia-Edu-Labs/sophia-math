#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior 🐑]
#v(40pt)
#only("1-")[- Individuals follow the actions of a larger group]
#only("1")[
#voiceover("Herd behavior occurs when individuals follow the actions of a larger group, rather than making independent decisions based on their own analysis.")
]
#v(20pt)
#only("2-")[- Can lead to market bubbles 📈 or crashes 📉]
#only("2")[
#voiceover("This behavior can lead to market bubbles, where asset prices rise far above their intrinsic value, or market crashes, where prices plummet rapidly.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Dotcom Bubble 💻]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

years = [1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002]
prices = [100, 150, 200, 300, 500, 800, 400, 200]

plt.figure(figsize=(8, 6))
plt.plot(years, prices, marker='o', linestyle='-', color='blue', linewidth=2, markersize=8)
plt.title('Dotcom Bubble', fontsize=20)
plt.xlabel('Year', fontsize=16)
plt.ylabel('Price Index', fontsize=16)
plt.xticks(years, fontsize=12)
plt.yticks(fontsize=12)
plt.grid(True)
plt.annotate('Bubble Peak', xy=(2000, 800), xytext=(2000.5, 850),
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.annotate('Crash', xy=(2001, 400), xytext=(2001.5, 450),
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("A classic example of herd behavior is the dotcom bubble of the late 1990s. Investors piled into internet stocks, driving prices to unsustainable levels. When the bubble burst in 2000, prices crashed.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Perspective 🧠]
#v(40pt)
#only("1-")[- Herd behavior challenges the efficient market hypothesis]
#only("1")[
#voiceover("Herd behavior challenges the efficient market hypothesis of traditional finance. It suggests that investors are not always rational and that markets can be driven by psychological factors.")
]
#v(20pt)
#only("2-")[- Investors may follow the crowd due to:]
#only("2-")[
  - Fear of missing out (FOMO) 😨
  - Overconfidence in others' decisions 😎
  - Desire for conformity 🙇‍♂️
]
#only("2")[
#voiceover("Investors may follow the crowd due to the fear of missing out on potential gains, overconfidence in the decisions of others, or a desire to conform to the majority.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Herd behavior: individuals follow the actions of a larger group 🐑]
#v(20pt)
#only("2-")[- Can lead to market bubbles 📈 and crashes 📉]
#v(20pt)
#only("3-")[- Challenges the efficient market hypothesis 🧠]
#only("1")[
#voiceover("In summary, herd behavior occurs when individuals follow the actions of a larger group.")
]
#only("2")[
#voiceover("This can lead to market bubbles and crashes, as seen in the dotcom bubble example.")
]
#only("3")[
#voiceover("Herd behavior challenges the efficient market hypothesis of traditional finance and highlights the importance of psychological factors in financial decision-making.")
]
]