#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 2]
#v(40pt)
#only("1-")[Solve: $root(4, x) = 3$]
#only("1")[
#voiceover("Let's solve the equation: the fourth root of x equals 3.")
]
#only("2")[
#voiceover("In this exercise, you need to find the value of x that satisfies this equation.")
]
#only("3")[
#voiceover("Think about how you can isolate x on one side of the equation.")
]
#only("4")[
#voiceover("Remember, taking both sides of an equation to the same power is a valid operation and can help in solving equations like this.")
]
#v(40pt)
#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 100, 1000)
y = np.power(x, 1/4)

plt.figure(figsize=(8, 6))
plt.plot(x, y, linewidth=2, label='$y = root(4, x)$')
plt.axhline(y=3, color='r', linestyle='--', linewidth=2, label='$y = 3$')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of $y = root(4, x)$')
plt.grid(True)
plt.legend(loc='lower right')
plt.show()
```,
width: 360pt),
)
]
]
#only("5")[
#voiceover("Here's a graph showing the function y equals the fourth root of x. The red dashed line represents y equals 3. Your task is to find the x-coordinate of the point where these two lines intersect.")
]
]
]#questionDef(
questionText: "What is the value of $x$ that satisfies the equation $\sqrt[4]{x} = 3$?",
answerOptions: ("$x=81$", "$x=1$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$x=\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)