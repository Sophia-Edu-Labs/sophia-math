#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Convergence of a Sequence]
#v(40pt)
#only("1-")[Consider the sequence $a_n = 1/n$]
#v(20pt)
#only("2-")[Does this sequence converge? 🤔]
#v(20pt)
#only("3-")[If so, what is the limit? 📈]

#only("1")[
#voiceover("Consider the sequence a sub n equals 1 over n.")
]
#only("2")[
#voiceover("Does this sequence converge?")
]
#only("3")[
#voiceover("If so, what is the limit of the sequence as n approaches infinity?")
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

n = np.arange(1, 21)
a_n = 1/n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(0, color='red', linestyle='--', label='y = 0')
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.title('Sequence $a_n = 1/n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]

#only("1")[
#voiceover("Here's a plot of the first 20 terms of the sequence a sub n equals 1 over n.")
]
#only("2")[
#voiceover("As n increases, the terms of the sequence seem to be getting closer and closer to 0, indicated by the red dashed line.")
]
#only("3")[
#voiceover("Based on this observation, does the sequence converge? If so, what do you think the limit is?")
]

]#questionDef(
questionText: "What is the limit of the sequence $a_n = \frac{1}{n}$ as $n \\to \infty$?",
answerOptions: ("Yes, the limit is $0$", "Yes, the limit is $1$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("Yes, the limit is $\\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)