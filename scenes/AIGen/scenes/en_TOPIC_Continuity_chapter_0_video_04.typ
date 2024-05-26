#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits Recap 🎓]

#only("1-")[
- Limit: behavior of function as input approaches a value
]

#only("2-")[
- Example: $lim_(x -> 2) f(x) = 4$
]

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**2

x = np.linspace(-1, 5, 100)
y = f(x)

plt.figure(figsize=(6, 4))
plt.plot(x, y, 'b-', label='f(x) = x^2')
plt.axhline(y=4, color='r', linestyle='--', label='y = 4')
plt.axvline(x=2, color='g', linestyle='--', label='x = 2')
plt.grid(True)
plt.xlim(-1, 5)
plt.ylim(0, 10)
plt.legend(loc='upper left')
plt.title('Limit of f(x) as x approaches 2')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```, width: 360pt),
)
]
]
]

#only("1")[
#voiceover("In this recap, we revisit the concept of limits. The limit of a function describes the behavior of the function as the input approaches a certain value.")
]

#only("2")[
#voiceover("For example, if we say the limit of f of x as x approaches 2 equals 4, it means that as x gets closer and closer to 2, f of x gets closer and closer to 4.")
]

#only("3")[
#voiceover("We can visualize this on a graph. Here, we see the function f of x equals x squared. As x approaches 2, marked by the green line, f of x approaches 4, marked by the red line.")
]

#only("4-")[
- Key idea: limit describes trend, not exact value
]

#only("4")[
#voiceover("It's important to remember that the limit describes the trend of the function, not necessarily the exact value of the function at that point.")
]

#only("5-")[
- Useful for understanding function behavior 📈
]

#only("5")[
#voiceover("Understanding limits is crucial for analyzing the behavior of functions, especially near certain points of interest.")
]

]