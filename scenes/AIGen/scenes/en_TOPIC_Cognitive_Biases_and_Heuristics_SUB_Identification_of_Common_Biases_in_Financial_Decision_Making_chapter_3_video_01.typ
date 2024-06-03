#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion]
#v(40pt)
#only("1-")[- Tendency to prefer avoiding losses over acquiring equivalent gains 📉💰]
#v(20pt) 
#only("2-")[- Example: More upset about losing \$100 than happy about gaining \$100]
#v(20pt)
#only("3-")[- Impacts financial decision-making 🏦💸]
#only("1")[
#voiceover("Loss aversion is the tendency for people to prefer avoiding losses more than acquiring equivalent gains. In other words, the pain of losing is psychologically about twice as powerful as the pleasure of gaining.")
]
#only("2")[
#voiceover("For example, if someone gave you $100, you would be quite happy. But if you lost $100, you would be more upset about it than you were happy about gaining the same amount.")  
]
#only("3")[
#voiceover("This psychological bias can have a significant impact on how people make financial decisions, often leading to risk-averse behavior.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-10, 10, 100)
y_gain = x**0.5
y_loss = -2*(-x)**0.5

fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x[x>=0], y_gain[x>=0], 'g-', label='Gain')
ax.plot(x[x<=0], y_loss[x<=0], 'r-', label='Loss')

ax.set_xlabel('Change in Value')
ax.set_ylabel('Psychological Impact')
ax.set_title('Prospect Theory Value Function')
ax.grid(True)
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph illustrates the concept of loss aversion. The green line represents the psychological impact of gains, while the red line represents the impact of losses. Notice how the red line is steeper than the green line. This means that losses have a greater psychological impact than gains of the same magnitude.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Implications]
#v(40pt)
#only("1-")[- Investors may hold onto losing investments too long 📉🕒]
#v(20pt)
#only("2-")[- May avoid risks even when the potential gain outweighs the potential loss 🎲❌]
#v(20pt)
#only("3-")[- Can lead to suboptimal financial decisions 🧮❌]
#only("1")[
#voiceover("One implication of loss aversion is that investors may hold onto losing investments for too long, hoping to avoid realizing the loss.")
]
#only("2")[
#voiceover("Another is that people may avoid risks even when the potential gain outweighs the potential loss, because the fear of loss is so powerful.")
]
#only("3")[
#voiceover("Overall, loss aversion can lead to suboptimal financial decisions that are driven more by emotion than rational analysis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)  
#only("1-")[- Loss aversion: tendency to prefer avoiding losses over equivalent gains 📉💰]
#v(20pt)
#only("2-")[- Losses have about twice the psychological impact of gains 😢>😊]
#v(20pt)
#only("3-")[- Can lead to risk-averse, suboptimal financial decisions 🎲❌🧮]
#only("1")[
#voiceover("In summary, loss aversion is the tendency to prefer avoiding losses over acquiring equivalent gains.")
]
#only("2")[  
#voiceover("Losses have about twice the psychological impact of gains.")
]
#only("3")[
#voiceover("This bias can lead to risk-averse behavior and suboptimal financial decisions. Understanding loss aversion can help us make more rational, less emotionally-driven choices with our money.")
]
]