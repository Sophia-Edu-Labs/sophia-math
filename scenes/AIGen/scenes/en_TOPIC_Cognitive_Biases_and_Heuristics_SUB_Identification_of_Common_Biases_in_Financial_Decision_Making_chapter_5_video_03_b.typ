#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior]
#v(40pt)
How can herd behavior affect financial decisions?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) It leads to independent decision-making]#only("2-")[#text(fill:red)[a) It leads to independent decision-making]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to following the crowd]#only("3-")[#text(fill:green)[b) It leads to following the crowd]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) It improves rationality]#only("5-")[#text(fill:red)[d) It improves rationality]]

#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a) is incorrect. Herd behavior does not lead to independent decision-making. In fact, it's quite the opposite.")]
#only("3")[#voiceover("Option b) is correct. Herd behavior leads to following the actions of a larger group, often ignoring individual analysis.")]
#only("4")[#voiceover("Option c) is incorrect. Herd behavior does have an effect on financial decisions, as it can lead to irrational behavior.")]
#only("5")[#voiceover("Option d) is also incorrect. Herd behavior does not improve rationality. It often leads to decisions based on the actions of others rather than rational analysis.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior 🐑]
#v(40pt)
#only("1-")[- Tendency to follow and mimic the actions of a larger group]
#v(20pt)
#only("2-")[- Often ignoring individual analysis 🧠]
#v(20pt)
#only("3-")[- Can lead to irrational financial decisions 📉]
#v(20pt)
#only("4-")[- Example: Buying a stock because others are buying it 📈]

#only("1")[#voiceover("Herd behavior is the tendency to follow and mimic the actions of a larger group.")]
#only("2")[#voiceover("This often happens while ignoring one's own individual analysis.")]
#only("3")[#voiceover("Herd behavior can lead to irrational financial decisions.")]
#only("4")[#voiceover("For example, an investor might buy a stock simply because many others are buying it, without doing their own research on the company's fundamentals.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior in Markets 📊]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Simulate a herd behavior scenario
days = np.arange(1, 31)
price = np.ones(30)
price[9:] = np.linspace(1, 10, 21)  # Price starts increasing from day 10

plt.figure(figsize=(8, 6))
plt.plot(days, price)
plt.title('Stock Price over Time')
plt.xlabel('Day')
plt.ylabel('Price ($)')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- Herd behavior can lead to price bubbles 🫧]
#v(20pt)
#only("2-")[- As more people buy, prices increase 📈]
#v(20pt)
#only("3-")[- Not based on fundamentals, but on others' actions 🙈]
#v(20pt)
#only("4-")[- Can result in market inefficiencies and crashes 💥]

#only("1")[#voiceover("In financial markets, herd behavior can lead to price bubbles.")]
#only("2")[#voiceover("As more and more people buy an asset, its price increases, often rapidly.")]
#only("3")[#voiceover("However, this price increase is not based on the asset's fundamental value, but rather on the actions of the herd.")]
#only("4")[#voiceover("This can result in market inefficiencies and, eventually, crashes when the bubble bursts.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Avoiding Herd Behavior 🧠]
#v(40pt)
#only("1-")[- Do your own research 📚]
#v(20pt)
#only("2-")[- Base decisions on fundamentals, not others' actions 📊]
#v(20pt)
#only("3-")[- Be aware of your own biases 🤔]
#v(20pt)
#only("4-")[- Have a long-term investment strategy 📅]

#only("1")[#voiceover("To avoid falling into the trap of herd behavior, it's important to do your own research.")]
#only("2")[#voiceover("Base your investment decisions on the fundamentals of the assets, not on the actions of others.")]
#only("3")[#voiceover("Be aware of your own biases and how they might influence your decisions.")]
#only("4")[#voiceover("Finally, have a long-term investment strategy and stick to it, even when the herd is moving in a different direction.")]
]