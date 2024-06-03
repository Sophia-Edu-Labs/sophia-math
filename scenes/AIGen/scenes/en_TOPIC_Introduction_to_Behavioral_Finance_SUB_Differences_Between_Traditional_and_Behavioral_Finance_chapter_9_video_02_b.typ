#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Prospect Theory]
#v(40pt)
#only("1-")[Who developed prospect theory?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Fama and French]#only("2-")[#text(fill:red)[a) Fama and French]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Kahneman and Tversky]#only("3-")[#text(fill:green)[b) Kahneman and Tversky]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Markowitz and Sharpe]#only("4-")[#text(fill:red)[c) Markowitz and Sharpe]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Merton and Scholes]#only("5-")[#text(fill:red)[d) Merton and Scholes]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Fama and French are known for their work on the three-factor model, but they did not develop prospect theory.")]
#only("3")[#voiceover("Kahneman and Tversky are indeed the researchers who developed prospect theory in 1979.")]
#only("4")[#voiceover("Markowitz and Sharpe are known for their contributions to modern portfolio theory and the capital asset pricing model, but they did not develop prospect theory.")]
#only("5")[#voiceover("Merton and Scholes are known for their work on options pricing and the Black-Scholes model, but they did not develop prospect theory.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kahneman and Tversky's Prospect Theory]
#v(40pt)
#only("1-")[- Developed in 1979 📅]
#v(20pt)
#only("2-")[- Describes how people make decisions under risk 🎲]
#v(20pt)
#only("3-")[- Highlights the impact of loss aversion 📉]
#v(20pt)
#only("4-")[- People feel the pain of losses more than the joy of equivalent gains 😢 > 😊]
#v(20pt)
#only("5-")[- Challenges traditional finance's assumption of rationality 🧠]

#only("1")[#voiceover("Let's look at some key points about prospect theory.")]
#only("2")[#voiceover("Prospect theory describes how people make decisions when risk is involved. It was a groundbreaking work in behavioral finance.")]
#only("3")[#voiceover("One of the key concepts in prospect theory is loss aversion.")]
#only("4")[#voiceover("Loss aversion means that people feel the pain of a loss more intensely than the joy of an equivalent gain. For example, the pain of losing \$100 is greater than the joy of winning \$100.")]
#only("5")[#voiceover("This challenges traditional finance's assumption that investors are always rational. Prospect theory shows that psychological factors, like loss aversion, can significantly influence financial decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Loss Aversion]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(-10, 10, 100)
y = np.zeros_like(x)

# Loss aversion: Losses hurt more than gains feel good
y[x < 0] = 2.5 * x[x < 0] 
y[x >= 0] = x[x >= 0]

plt.figure(figsize=(8, 6))
plt.plot(x, y, linewidth=2, color='purple', label='Value Function')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlabel('Outcome')
plt.ylabel('Value')
plt.legend()
plt.grid(True)
plt.title('Prospect Theory: Loss Aversion')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- The value function is steeper for losses than for gains 📈]
#v(20pt)
#only("2-")[- Losses have a greater impact on value than equivalent gains 📉 > 📈]

#only("1")[#voiceover("This graph visualizes the concept of loss aversion in prospect theory. Notice how the curve is steeper for losses (on the left side of the y-axis) than for gains (on the right side).")]
#only("2")[#voiceover("This steeper slope for losses illustrates that losses have a greater psychological impact than equivalent gains. A loss of a certain amount hurts more than a gain of the same amount feels good.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Prospect theory was developed by Kahneman and Tversky in 1979 👨‍🔬👨‍🔬]
#v(20pt)
#only("2-")[- It describes how people make decisions under risk 🎲]
#v(20pt)
#only("3-")[- Loss aversion is a key concept 📉]
#v(20pt)
#only("4-")[- Losses hurt more than equivalent gains feel good 😢 > 😊]
#v(20pt)
#only("5-")[- Challenges traditional finance's assumption of rationality 🧠]

#only("1")[#voiceover("To summarize, prospect theory was developed by Daniel Kahneman and Amos Tversky in 1979.")]
#only("2")[#voiceover("It's a behavioral finance theory that describes how people make decisions when risk is involved.")]
#only("3")[#voiceover("One of the key concepts in prospect theory is loss aversion.")]
#only("4")[#voiceover("Loss aversion means that the psychological pain of a loss is greater than the joy of an equivalent gain.")]
#only("5")[#voiceover("This challenges traditional finance's assumption that investors are always rational. Prospect theory shows that psychological factors, like loss aversion, can significantly influence financial decisions.")]
]