#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Consider a company's stock.")
]
#text(size: 30pt, weight: "bold")[P/E Ratio]
// The title "P/E Ratio" is shown on this slide
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the stock price and earnings per share
price = 50
eps = 5

# Create a bar chart
fig, ax = plt.subplots(figsize=(6, 4))
ax.bar(['Stock Price', 'EPS'], [price, eps], color=['blue', 'green'])

# Add labels and title
ax.set_ylabel('Dollars ($)')
ax.set_title('Stock Price and Earnings Per Share (EPS)')

# Add values on top of bars
for i, v in enumerate([price, eps]):
    ax.text(i, v + 0.5, str(v), ha='center')

plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
// The figure shows a bar chart comparing the stock price and earnings per share (EPS). This figure is shown from slide 2 onward.
#v(30pt)

#only("2")[
#voiceover("The stock is priced at $50.")
]

#only("3")[
#voiceover("The company's earnings per share are $5.")
]

#only("4-")[
- What is the P/E ratio? 🤔
]
// The question asking for the P/E ratio is shown from slide 4 onward

#only("4")[
#voiceover("What is the price-to-earnings, or P/E ratio, of this stock?")
]

]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is the P/E ratio of the stock?",
answerOptions: ("10", "45"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
roundingDecimalPlaces: 2,
tolerance: none
),
answerOptionMatcher:("\key{a}"),
answerOptionsTypes: (
"a": "number"
)
),
)