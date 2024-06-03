#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Common Biases in Financial Decision-Making]

#only("1-")[
- Overconfidence 🦸
- Confirmation 🎯 
- Loss aversion 📉
- Anchoring ⚓
- Herd behavior 🐑
- Recency ⏰
- Sunk cost fallacy 💸
- Hindsight 🔙
- Availability 🧠
- Representativeness 🖼️
]

#only("1")[
#voiceover("Let's recap the common biases in financial decision-making that we've covered. These include overconfidence, confirmation bias, loss aversion, anchoring, herd behavior, recency bias, the sunk cost fallacy, hindsight bias, the availability heuristic, and the representativeness heuristic.")
]

#only("2")[
#voiceover("Remember, these biases generally cause systematic errors in our financial decisions. They lead us to make choices that deviate from rational, optimal decision-making.")
]

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

biases = ['Overconfidence', 'Confirmation', 'Loss Aversion', 'Anchoring', 'Herd Behavior', 
          'Recency', 'Sunk Cost', 'Hindsight', 'Availability', 'Representativeness']
impact = [0.8, 0.7, 0.9, 0.6, 0.8, 0.5, 0.7, 0.6, 0.8, 0.7]  

fig, ax = plt.subplots(figsize=(10, 6))

bars = ax.barh(biases, impact)

ax.bar_label(bars, labels=[f"{x:.2f}" for x in impact], padding=8)  

ax.set_xlim(0, 1)
ax.set_xlabel('Impact on Financial Decisions')
ax.set_ylabel('Cognitive Biases')
ax.set_title('Impact of Cognitive Biases on Financial Decision-Making')

plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [Impact of cognitive biases on financial decision-making. The higher the bar, the more the bias impacts financial decisions.],
)
]
]

#only("3")[
#voiceover("This chart illustrates the relative impact each of these biases can have on our financial choices. Loss aversion, overconfidence, herd behavior, and the availability heuristic tend to have the strongest influence.")
]

#only("4")[
#voiceover("By being aware of these biases and actively working to counter them, we can improve the quality of our financial decisions. It's a continuous process of self-reflection and improvement.")
]
]
]