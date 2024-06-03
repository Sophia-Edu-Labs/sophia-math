#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion]
#v(40pt)
What is loss aversion?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) Preferring gains over losses]#only("2-")[#text(fill:red)[a) Preferring gains over losses]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Preferring avoiding losses over acquiring gains]#only("3-")[#text(fill:green)[b) Preferring avoiding losses over acquiring gains]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) Indifference to gains and losses]#only("4-")[#text(fill:red)[c) Indifference to gains and losses]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]

#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a) is incorrect. Loss aversion does not mean preferring gains over losses, but rather the opposite.")]
#only("3")[#voiceover("Option b) is correct. Loss aversion is indeed the tendency to prefer avoiding losses over acquiring equivalent gains.")]
#only("4")[#voiceover("Option c) is incorrect. Loss aversion does not imply indifference to gains and losses, but rather a stronger aversion to losses than attraction to equivalent gains.")]
#only("5")[#voiceover("And option d) is also incorrect, as one of the above options, namely b), correctly defines loss aversion.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion Explained]
#v(40pt)
#only("1-")[Definition: The tendency to prefer avoiding losses over acquiring equivalent gains 📉]
#v(20pt)
#only("2-")[Implication: The disutility of losing is greater than the utility of an equal gain 🧮]
#v(20pt)
#only("3-")[Example: Most people would not accept a bet with an equal chance of winning or losing \$100 🎲]
#v(20pt)
#only("4-")[Effect: Leads to risk-averse behavior when it comes to potential losses 🔒]

#only("1")[#voiceover("Let's dive a bit deeper into the concept of loss aversion.")]
#only("2")[#voiceover("This implies that the negative impact of a loss is psychologically more powerful than the positive impact of an equivalent gain.")]
#only("3")[#voiceover("For instance, if offered a gamble with a 50% chance of winning $100 and a 50% chance of losing $100, most people would decline, demonstrating loss aversion.")]
#only("4")[#voiceover("In financial decision-making, loss aversion can lead to risk-averse behavior when it comes to potential losses, even if the potential gains are significant.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization of Loss Aversion]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-10, 10, 100)
y_gain = x
y_loss = 2 * np.abs(x)

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y_gain, label='Gain')
ax.plot(x, -y_loss, label='Loss')
ax.fill_between(x, y_gain, where=(x > 0), alpha=0.3, color='green')
ax.fill_between(x, -y_loss, where=(x < 0), alpha=0.3, color='red')
ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('center')
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')
ax.set_xlabel('Outcome')
ax.set_ylabel('Psychological Impact')
ax.set_title('Loss Aversion')
ax.legend()
ax.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph illustrates the concept of loss aversion. The green line represents the psychological impact of gains, while the red line represents the impact of losses. Notice how the slope of the loss line is steeper, indicating that losses have a greater psychological impact than equivalent gains. This difference in slopes leads to the aversion to loss that characterizes loss aversion behavior.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Loss aversion: Preferring avoiding losses over acquiring equivalent gains 🔍]
#v(20pt)
#only("2-")[- Losses have a greater psychological impact than equivalent gains 📊]
#v(20pt)
#only("3-")[- Leads to risk-averse behavior in financial decision-making 💰]
#v(20pt)
#only("4-")[- A key concept in behavioral economics and finance 🔑]

#only("1")[#voiceover("To summarize, loss aversion is the tendency to prefer avoiding losses over acquiring equivalent gains.")]
#only("2")[#voiceover("This is because losses have a greater psychological impact than gains of the same magnitude.")]
#only("3")[#voiceover("In financial decision-making, loss aversion can lead to risk-averse behavior, as the fear of potential losses outweighs the attraction of potential gains.")]
#only("4")[#voiceover("Understanding loss aversion is crucial in the fields of behavioral economics and finance, as it helps explain many observed behaviors that deviate from traditional economic models assuming rational decision-making.")]
]