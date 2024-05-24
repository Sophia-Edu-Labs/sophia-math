#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Market Share]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
sizes = [25, 75]
labels = ['Company', 'Others']
colors = ['#ff9999', '#66b3ff']

# Plot
fig1, ax1 = plt.subplots()
ax1.pie(sizes, labels=labels, autopct='%1.1f%%', startangle=90, colors=colors)
ax1.axis('equal')  
plt.title("Market Share")
plt.show()
```,
width: 360pt),
)
]
]
]
// The pie chart shows the company's 25% market share
#only("1")[
#voiceover("Consider a market worth 200 million dollars. A company holds a 25 percent share of this market, as shown in the pie chart.")
]

#v(40pt)
#only("2-")[
What is the company's share in dollars? 💰
]
// The question is posed from slide 2 onward
#only("2")[
#voiceover("The question is: What is the company's share in dollars?")
]
]

#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is the company's share in dollars?",
answerOptions: ("$25$ million", "$50$ million"),
correctAnswerIndex: 1,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$$ million"),
answerOptionsTypes: (
"a": "number"
)
),
)