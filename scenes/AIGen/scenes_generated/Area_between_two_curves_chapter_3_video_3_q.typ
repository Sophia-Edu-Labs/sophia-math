#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
#voiceover("Let's consider the following exercise:")
]
#text(size: 30pt, weight: "bold")[Area Between Two Curves]

#v(40pt)
#only("2-")[
- Given curves: $f(x) = sin(x)$ and $g(x) = cos(x)$
- Interval: $[0, pi/4]$
]
#only("2")[
#voiceover("Find the area between the curves f of x equals sine of x and g of x equals cosine of x over the interval from 0 to pi over 4.")
]
]

#slide()[
#only("1")[
#voiceover("Let's visualize the problem.")
]
#v(60pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(0, np.pi/4, 100)
y1 = np.sin(x)
y2 = np.cos(x)
plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x) = sin(x)')
plt.plot(x, y2, label='g(x) = cos(x)')
plt.fill_between(x, y1, y2, where=(y1 >= y2), alpha=0.3, label='Area')
plt.xlim(0, np.pi/4)
plt.ylim(0, 1)
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)

]
]]
#only("2")[
#voiceover("Here you see the graphs of the functions f of x equals sine of x in blue and g of x equals cosine of x in orange. The shaded region represents the area we want to calculate.")
]
]

#questionDef(
questionText: "Find the area between the curves $f(x) = \sin(x)$ and $g(x) = \cos(x)$ over the interval $[0, \pi/4]$.",
// use latex!
answerOptions: ("The area is $2 - sqrt(2)$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)