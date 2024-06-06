#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Symmetry of $x^5$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**5

fig, ax = plt.subplots(figsize=(6, 6))
ax.plot(x, y, 'b-', linewidth=2, label='$f(x)=x^5$')
ax.plot(x, -y, 'r--', linewidth=2, label='$f(-x)=-x^5$')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Graph of $f(x)=x^5$')
ax.grid(True)
ax.axhline(0, color='black', lw=0.5)
ax.axvline(0, color='black', lw=0.5)
ax.legend(loc='upper left')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#v(40pt)
#only("1")[
#voiceover("Consider the function f of x equals x to the power of 5.")
]
#v(20pt)
#only("2-")[
Is $f(x) = x^5$ symmetric about:
]
#v(20pt)
#only("2")[
#voiceover("Is this function symmetric about")
]
#only("3-")[
- The y-axis? 📈
]
#only("3")[
#voiceover("the y-axis")
]
#only("4-")[  
- The origin? 🎯
]
#only("4")[
#voiceover("or the origin?")
]
#v(20pt)
#only("5")[
#voiceover("Think about it and choose your answer!")
]
]#questionDef(
questionText: "Is the function $f(x) = x^5$ symmetric about the y-axis or the origin?",
answerOptions: ("The origin", "The y-axis"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$f(x) = x^5$ is symmetric about \\key{a}."),
answerOptionsTypes: (
"a": "string"
)
),
)