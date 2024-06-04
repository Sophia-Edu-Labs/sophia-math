#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion 📉]

#v(40pt)

#only("1-")[- Tendency to prefer avoiding losses over acquiring equivalent gains]

#v(20pt)

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.linspace(-10, 10, 100)
y_gain = x
y_loss = 2 * np.abs(x)

# Create plot
fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y_gain, label='Gain')
ax.plot(x, -y_loss, label='Loss')
ax.fill_between(x, -y_loss, alpha=0.3, color='red')
ax.fill_between(x, y_gain, alpha=0.3, color='green')

# Add labels and legend
ax.set_xlabel('Outcome')
ax.set_ylabel('Psychological Value')
ax.set_title('Loss Aversion')
ax.legend()

# Show plot
plt.tight_layout()
plt.show()
```, width: 360pt))
]
]
]

#only("1")[
#voiceover("Loss aversion is the tendency to prefer avoiding losses over acquiring equivalent gains.")
]

#only("2")[
#voiceover("This graph illustrates loss aversion. The red area represents the psychological impact of losses, while the green area represents the impact of gains. As you can see, the impact of a loss is much greater than the impact of an equivalent gain.")
]

#only("3-")[
- Example: The pain of losing \$100 is greater than the pleasure of finding \$100 💸
]

#only("3")[
#voiceover("For example, the pain of losing 100 dollars is typically greater than the pleasure of finding 100 dollars.")
]

#only("4-")[
- Leads to risk-averse behavior in financial decisions 🙅‍♂️
]

#only("4")[
#voiceover("Loss aversion leads to risk-averse behavior in financial decisions, as people try to avoid potential losses.")
]

#only("5-")[
- Part of Prospect Theory in behavioral economics 📊
]

#only("5")[
#voiceover("Loss aversion is a key part of Prospect Theory in behavioral economics, which describes how people make decisions under risk and uncertainty.")
]

]