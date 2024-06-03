#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Prospect Theory 🧠]
#v(40pt)
#only("1-")[- Developed by Kahneman and Tversky 👥]
#v(20pt)
#only("2-")[- Describes how people make decisions involving risk 🎲]
#v(20pt)
#only("3-")[- Highlights the impact of loss aversion 📉]
#only("1")[
#voiceover("Prospect theory was developed by Daniel Kahneman and Amos Tversky, two renowned psychologists who studied decision-making under uncertainty.")
]
#only("2")[
#voiceover("The theory describes how people make decisions when faced with risky choices, challenging the traditional assumption of rational decision-making.")
]
#only("3")[
#voiceover("One of the key insights of prospect theory is the impact of loss aversion on decision-making.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion 📉]
#v(40pt)
#only("1-")[- People feel the pain of losses more than the pleasure of gains 😢 > 😊]
#v(20pt)
#only("2-")[- Example: Losing \$100 hurts more than gaining \$100 feels good]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-10, 10, 100)
y = np.where(x >= 0, x**0.5, -2*(-x)**0.5)

plt.figure(figsize=(6, 4))
plt.plot(x, y, linewidth=2, color='blue')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlabel('Gains/Losses')
plt.ylabel('Psychological Value')
plt.title('Value Function in Prospect Theory')
plt.grid(True)
plt.tight_layout()
plt.show()
```, width: 360pt))
]
]
#only("1")[
#voiceover("According to prospect theory, people feel the pain of losses more intensely than the pleasure of equivalent gains.")
]
#only("2")[
#voiceover("For example, the psychological impact of losing 100 dollars is greater than the positive feeling of gaining 100 dollars.")
]
#only("3")[
#voiceover("This asymmetry can be visualized using a value function, which is concave for gains and convex and steeper for losses, as shown in this graph.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Implications 🤔]
#v(40pt)
#only("1-")[- People are risk-averse for gains and risk-seeking for losses]
#v(20pt)
#only("2-")[- Framing matters: presenting outcomes as gains or losses influences decisions]
#v(20pt)
#only("3-")[- Challenges traditional economic models based on rationality]
#only("1")[
#voiceover("The impact of loss aversion leads to interesting implications. People tend to be risk-averse when considering gains, preferring a sure smaller gain over a risky larger gain.")
]
#only("2")[
#voiceover("However, they become risk-seeking when faced with losses, preferring a risky chance to avoid a loss over a sure smaller loss. Additionally, the way choices are framed, as gains or losses, can significantly influence decisions.")
]
#only("3")[
#voiceover("Prospect theory challenges traditional economic models that assume people make rational decisions based on expected utility, highlighting the importance of psychological factors in decision-making under risk.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Prospect theory by Kahneman and Tversky 🧠]
#v(20pt)
#only("2-")[- Describes decision-making under risk 🎲]
#v(20pt)
#only("3-")[- Highlights loss aversion: losses loom larger than gains 📉]
#v(20pt)
#only("4-")[- Challenges traditional models of rationality 🤔]
#only("1")[
#voiceover("In summary, prospect theory, developed by Kahneman and Tversky, is a influential psychological theory of decision-making under risk.")
]
#only("2")[
#voiceover("It describes how people actually make choices when faced with uncertain outcomes, challenging the assumption of perfect rationality.")
]
#only("3")[
#voiceover("A key insight of prospect theory is loss aversion, the idea that people feel the pain of losses more intensely than the pleasure of equivalent gains.")
]
#only("4")[
#voiceover("By incorporating psychological factors like loss aversion, prospect theory provides a more realistic account of decision-making and challenges traditional economic models based on rationality.")
]
]