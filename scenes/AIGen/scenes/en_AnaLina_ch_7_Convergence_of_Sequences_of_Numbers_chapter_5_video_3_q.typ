#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergence to Infinity]
#v(40pt)
#only("1-")[Consider the sequence $b_n = (-1)^n n$]
#v(20pt)
#only("2-")[Does this sequence diverge to infinity? 🤔]
#only("1")[
#voiceover("Consider the sequence b sub n equals negative 1 to the power of n times n.")
]
#only("2")[
#voiceover("Does this sequence diverge to infinity?")
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

# Generate the terms of the sequence
n = np.arange(1, 11)
b_n = (-1)**n * n

# Create the plot
plt.figure(figsize=(8, 6))
plt.stem(n, b_n, linefmt='b-', markerfmt='bo', basefmt='k--')
plt.xlabel('n')
plt.ylabel('b_n')
plt.title('Sequence b_n = (-1)^n n')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Here's a visualization of the first few terms of the sequence. The blue dots represent the values of b sub n for different values of n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[Does the sequence $b_n = (-1)^n n$ diverge to infinity? 🧐]
#only("1")[
#voiceover("Now it's your turn to think about it. Does the sequence b sub n equals negative 1 to the power of n times n diverge to infinity?")
]
]#questionDef(
  questionText: "Does the sequence $b_n = (-1)^n n$ diverge to infinity?",
  answerOptions: ("Yes", "No"),
  correctAnswerIndex: 1,
  freeTextDetail: (
    fallbackOptionIndex: 0,
  ),
)