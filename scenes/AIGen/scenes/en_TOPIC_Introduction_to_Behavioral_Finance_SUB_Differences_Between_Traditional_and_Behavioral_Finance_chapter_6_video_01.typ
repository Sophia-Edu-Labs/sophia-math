#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion 📉]
#v(40pt)
#only("1-")[- Investors prefer avoiding losses over acquiring equivalent gains 💸]
#only("1")[
#voiceover("Loss aversion refers to the tendency of investors to prefer avoiding losses over acquiring equivalent gains.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 🧮]
#v(40pt)
#only("1-")[- Losing \$100 feels worse than gaining \$100 feels good 😞 > 😊]
#only("1")[
#voiceover("For example, the pain of losing 100 dollars is typically more intense than the pleasure of gaining 100 dollars.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Prospect Theory 📈]
#v(40pt)
#only("1-")[- Developed by Kahneman and Tversky 🧠]
#v(20pt)
#only("2-")[- Explains how people make decisions involving risk 🎲]
#only("1")[
#voiceover("This concept is a key part of Prospect Theory, developed by Daniel Kahneman and Amos Tversky.")
]
#only("2")[
#voiceover("Prospect Theory aims to explain how people make decisions when risk is involved.")
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

x = np.linspace(-10, 10, 100)
y = np.where(x >= 0, x**0.5, -2*(-x)**0.5)

plt.figure(figsize=(6, 4))
plt.plot(x, y, 'b-', linewidth=2)
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlabel('Gains/Losses')
plt.ylabel('Psychological Value')
plt.title('Prospect Theory Value Function')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph illustrates the value function in Prospect Theory. Notice how losses have a steeper curve than gains, showing that losses loom larger than gains psychologically.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Investing 📉📈]
#v(40pt)
#only("1-")[- Investors may hold on to losing investments too long 📉]
#v(20pt)
#only("2-")[- May miss out on potential gains 📈]
#only("1")[
#voiceover("In investing, loss aversion can lead to suboptimal decisions. Investors may hold on to losing investments for too long, hoping to avoid realizing a loss.")
]
#only("2")[
#voiceover("However, this can lead to missed opportunities for potential gains elsewhere.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎯]
#v(40pt)
#only("1-")[- Loss aversion: preference to avoid losses over acquiring gains]
#v(20pt)
#only("2-")[- Key concept in Prospect Theory]
#v(20pt)
#only("3-")[- Can lead to suboptimal investment decisions]
#only("1")[
#voiceover("In summary, loss aversion refers to the tendency to prefer avoiding losses over acquiring equivalent gains.")
]
#only("2")[
#voiceover("It's a key concept in Prospect Theory, which explains decision-making under risk.")
]
#only("3")[
#voiceover("In investing, loss aversion can lead to suboptimal decisions, such as holding on to losing investments for too long.")
]
]