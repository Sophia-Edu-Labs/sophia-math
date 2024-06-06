#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[Consider the function $f(x) = x^7$.]
#v(20pt)
#only("2-")[What is the behavior of $f(x)$ as $x$ approaches zero? 🤔]
#only("1")[
#voiceover("Consider the function f of x equals x to the power of 7.")
]
#only("2")[
#voiceover("What is the behavior of this function as x approaches zero?")
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

x = np.linspace(-1, 1, 1000)
y = x**7

plt.figure(figsize=(8, 6))
plt.plot(x, y, 'b-', linewidth=2, label='$f(x) = x^7$')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.grid(True, linestyle='--', linewidth=0.5)
plt.xlim(-1, 1)
plt.ylim(-1, 1)
plt.xlabel('$x$', fontsize=14)
plt.ylabel('$f(x)$', fontsize=14)
plt.legend(fontsize=12)
plt.title('Behavior of $f(x) = x^7$ near zero', fontsize=16)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a plot of the function f of x equals x to the power of 7 in the vicinity of zero. Observe how the function behaves as x gets closer and closer to zero from both the positive and negative sides.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[As $x$ approaches zero, does $f(x) = x^7$:]
#v(20pt)
#only("2-")[
- Approach infinity? ♾️
- Approach a non-zero constant? 📈
- Approach zero? 📉
]
#only("1")[
#voiceover("As x approaches zero, does the function f of x equals x to the power of 7:")
]
#only("2")[
#voiceover("Approach infinity? Approach a non-zero constant? Or approach zero?")
]
]#questionDef(
questionText: "As $x$ approaches zero, does $f(x) = x^7$ approach infinity, a non-zero constant, or zero?",
answerOptions: ("Approach zero", "Approach infinity", "Approach a non-zero constant"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$f(x)$ approaches \key{a} as $x$ approaches zero."),
answerOptionsTypes: (
"a": "text"
)
),
)