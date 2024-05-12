#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1-")[
#text(size: 30pt, weight: "bold")[Exercise]
// The title "Exercise" is shown on this slide
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "data")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

data = [10, 12, 14, 16, 18]

plt.figure(figsize=(6, 4))
plt.plot(range(1, len(data)+1), data, 'o-', color='blue', linewidth=2, markersize=8)
plt.grid(True, linestyle='--', linewidth=0.5)
plt.xlabel('Index')
plt.ylabel('Value')
plt.title('Data Set')
plt.xticks(range(1, len(data)+1))
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
// The figure shows the data set [10, 12, 14, 16, 18] plotted as a line graph with markers. This figure is shown from slide 2 onward.
#v(30pt)
#only("3-")[
Calculate the standard deviation for the data set:
]
// The question asking to calculate the standard deviation is shown from slide 3 onward
#only("4-")[
$[10, 12, 14, 16, 18]$
]
// The data set is shown in mathematical notation from slide 4 onward
#only("1")[
#voiceover("Consider the following exercise.")
]
#only("2")[
#voiceover("Given is this data set.")
]
#only("3")[
#voiceover("Your task is to calculate the standard deviation for the data set")
]
#only("4")[
#voiceover("10, 12, 14, 16, 18.")
]
]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is the standard deviation of the data set $[10, 12, 14, 16, 18]$?",
answerOptions: (),
correctAnswerIndex: none,
freeTextDetail: (
fallbackOptionIndex: none,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: 0.01
)
),
answerOptionMatcher:("$\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)