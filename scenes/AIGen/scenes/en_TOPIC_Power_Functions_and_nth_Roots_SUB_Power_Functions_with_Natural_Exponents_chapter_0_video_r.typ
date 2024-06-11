#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Power Functions with Natural Exponents 💡]
#v(40pt)
#only("1-")[- Power functions are used to model various real-world phenomena. 🌍]
#only("2-")[- They have the form $f(x) = x^n$ where $n$ is a natural number. 📈]
#only("3-")[- Let's review the key aspects of power functions. 🔍]
#only("1")[
#voiceover("Let's review power functions with natural exponents. Power functions are used to model various real-world phenomena, such as growth rates and physical laws.")
]
#only("2")[
#voiceover("A power function has the form f of x equals x to the power of n, where n is a natural number.")
]
#only("3")[
#voiceover("Let's go over the key aspects of power functions step by step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Form of Power Functions]
#v(40pt)
#only("1-")[- General form: $f(x) = x^n$]
#only("2-")[- $n$ is a natural number: $1, 2, 3, ...$]
#only("3-")[- Examples: $f(x) = x^2$, $f(x) = x^3$]
#only("1")[
#voiceover("The general form of a power function is f of x equals x to the power of n.")
]
#only("2")[
#voiceover("Here, n is a natural number, which means it can be 1, 2, 3, and so on.")
]
#only("3")[
#voiceover("For example, f of x equals x squared and f of x equals x cubed are both power functions.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Examples of Power Functions]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot1")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 400)
y1 = x**2
y2 = x**3

plt.plot(x, y1, label='$f(x) = x^2$', color='blue')
plt.plot(x, y2, label='$f(x) = x^3$', color='green')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.title('Examples of Power Functions')
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.show()

```,
width: 360pt),
)
]
]
]
#only("2")[
#voiceover("Here we see the graphs of two power functions: f of x equals x squared in blue, and f of x equals x cubed in green.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Power functions model real-world phenomena. 🌍]
#only("2-")[- General form: $f(x) = x^n$]
#only("3-")[- $n$ is a natural number: $1, 2, 3, ...$]
#only("4-")[- Examples: $f(x) = x^2$, $f(x) = x^3$]
#only("1")[
#voiceover("To summarize, power functions are used to model various real-world phenomena.")
]
#only("2")[
#voiceover("They have the general form f of x equals x to the power of n.")
]
#only("3")[
#voiceover("Here, n is a natural number, which means it can be 1, 2, 3, and so on.")
]
#only("4")[
#voiceover("Examples of power functions include f of x equals x squared and f of x equals x cubed.")
]
]