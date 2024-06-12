#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions with Natural Exponents]
#v(40pt)
What is the form of a power function with a natural exponent?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $f(x) = x^n$]#only("2-")[#text(fill:green)[a) $f(x) = x^n$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $f(x) = n^x$]#only("3-")[#text(fill:red)[b) $f(x) = n^x$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $f(x) = x + n$]#only("4-")[#text(fill:red)[c) $f(x) = x + n$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $f(x) = x/n$]#only("5-")[#text(fill:red)[d) $f(x) = x/n$]]
#only("1")[#voiceover("Great job on answering the question! Let's go over the correct solution step-by-step.")]
#only("2")[#voiceover("The correct answer is a) f of x equals x to the power of n. This is the form of a power function with a natural exponent, where n is a natural number.")]
#only("3")[#voiceover("Option b) f of x equals n to the power of x is incorrect. This represents an exponential function, not a power function.")]
#only("4")[#voiceover("Option c) f of x equals x plus n is also incorrect. This is a linear function, not a power function.")]
#only("5")[#voiceover("Finally, option d) f of x equals x divided by n is incorrect as well. This represents a rational function, not a power function.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Function Example]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(-2, 2, 100)
y = x**3
plt.figure(figsize=(8, 6))
plt.plot(x, y, label='$f(x) = x^3$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(True)
plt.legend()
plt.show()

```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's an example of a power function:]
#v(20pt)
#only("2-")[- The function $f(x) = x^3$ is a power function with a natural exponent.]
#only("3-")[- Notice how the graph curves, indicating the cubic relationship between $x$ and $f(x)$.]

#only("1")[#voiceover("Let's look at an example of a power function.")]
#only("2")[#voiceover("The function f of x equals x cubed is a power function with a natural exponent. Here, the exponent is 3, which is a natural number.")]
#only("3")[#voiceover("Notice how the graph curves, indicating the cubic relationship between x and f of x. This is a characteristic shape of cubic functions.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power functions have the form $f(x) = x^n$ 📜]
#v(20pt)
#only("2-")[- The exponent $n$ is a natural number (1, 2, 3, ...) 🔢]
#v(20pt)
#only("3-")[- Power functions can have various shapes depending on the exponent $n$ 📈]

#only("1")[#voiceover("To summarize, power functions have the form f of x equals x to the power of n.")]
#only("2")[#voiceover("The exponent n is a natural number, which means it can be 1, 2, 3, and so on.")]
#only("3")[#voiceover("Power functions can have various shapes depending on the exponent n. For example, when n is 2, the function is quadratic and forms a parabola. When n is 3, the function is cubic and forms a different curve.")]
]