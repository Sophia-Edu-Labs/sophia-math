#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1")[#voiceover("Find the area between the curves ")]
#only("1-")[#align(center)[$f(x) = x^2$ and $g(x) = x$]]
#v(20pt)
#only("2")[#voiceover("over the interval ")]
#only("2-")[#align(center)[$[0, 1]$]]
#v(40pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(0, 1, 100)
f = x**2
g = x
plt.figure(figsize=(8, 6))
plt.plot(x, f, label='$f(x)=x^2$')
plt.plot(x, g, label='$g(x)=x$')
plt.fill_between(x, f, g, where=(x >= 0) & (x <= 1), alpha=0.3, label='Area')
plt.xlim(0, 1)
plt.ylim(0, 1)
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("3")[#voiceover("Here's a visualization of the area we're looking for, shaded in blue.")]
#v(40pt)
#only("4")[#voiceover("Set up the integral to find this area! 📐")]
]

#questionDef(
questionText: "Determine the area between the curves $f(x)=x^2$ and $g(x)=x$ over the interval $[0,1]$.",
answerOptions: ("$A=\frac{1}{6}$", "$A=0$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$A=\key{a}$"),
answerOptionsTypes: (
"a": "number",
)
),
)
