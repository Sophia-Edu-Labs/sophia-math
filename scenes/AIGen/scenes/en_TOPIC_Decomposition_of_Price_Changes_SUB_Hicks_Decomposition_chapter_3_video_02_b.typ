#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition]
#v(40pt)
#only("1-")[In a Hicks Decomposition graph, what do indifference curves represent?]
#v(40pt)
#only("-1")[a) Levels of income]#only("2-")[#text(fill:red)[a) Levels of income]]
#v(10pt)
#only("-1")[b) Levels of utility]#only("2-")[#text(fill:green)[b) Levels of utility]]
#v(10pt)
#only("-1")[c) Price levels]#only("3-")[#text(fill:red)[c) Price levels]]
#v(10pt)
#only("-1")[d) Quantity levels]#only("4-")[#text(fill:red)[d) Quantity levels]]

#only("1")[#voiceover("Great job! You got the right answer.")]
#only("2")[#voiceover("Option a) Levels of income is incorrect. Indifference curves do not represent income levels.")]
#only("2")[#voiceover("Option b) Levels of utility is the correct answer. Indifference curves represent different levels of utility or satisfaction that a consumer can achieve.")]
#only("3")[#voiceover("Option c) Price levels is incorrect. Indifference curves are not related to prices.")]
#only("4")[#voiceover("Option d) Quantity levels is also incorrect. Indifference curves do not directly represent quantities of goods.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Indifference Curves]
#v(40pt)
#only("1-")[Key points about indifference curves:]
#v(20pt)
#only("2-")[- Connect bundles that provide the same level of utility 😊]
#v(10pt)
#only("3-")[- Do not intersect ❌]
#v(10pt) 
#only("4-")[- Are downward sloping ↘]
#v(10pt)
#only("5-")[- Are convex to the origin 🪞]

#only("1")[#voiceover("Let's review some key points about indifference curves.")]
#only("2")[#voiceover("Indifference curves connect bundles of goods that provide the same level of satisfaction or utility to the consumer.")]
#only("3")[#voiceover("Indifference curves do not intersect. Each curve represents a distinct level of utility.")]
#only("4")[#voiceover("They are downward sloping, showing that to maintain the same utility, a decrease in one good must be compensated by an increase in the other.")]
#only("5")[#voiceover("Indifference curves are convex to the origin, reflecting the diminishing marginal rate of substitution between goods.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(8, 6))

x = np.linspace(0, 10, 100)

for i in range(1, 4):
    y = 10 / (i * x)
    ax.plot(x, y, label=f'Utility Level {i}')

ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Indifference Curves')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Here's a graphical representation of indifference curves.")]
#only("2")[#voiceover("Each curve represents a different level of utility.")]
#only("3")[#voiceover("Higher curves represent higher utility levels.")]
#only("4")[#voiceover("Any bundle on the same curve provides the same satisfaction to the consumer.")]
#only("5")[#voiceover("And as you can see, the curves are downward sloping and do not cross each other.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[In Hicks Decomposition:]
#v(20pt)
#only("2-")[- Indifference curves represent utility levels 📈]
#v(10pt)
#only("3-")[- They allow separating substitution and income effects 🔍]
#v(10pt)
#only("4-")[- Key tool in consumer theory 🛍️]

#only("1")[#voiceover("To summarize, in the context of Hicks Decomposition:")]
#only("2")[#voiceover("Indifference curves represent different levels of utility or satisfaction.")]
#only("3")[#voiceover("They are a crucial tool that allows us to separate the substitution and income effects of a price change.")]
#only("4")[#voiceover("Understanding indifference curves is fundamental in consumer theory and welfare analysis.")]
]