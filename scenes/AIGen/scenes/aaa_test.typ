#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Power Functions with Natural Exponents]
#v(40pt)
What is the general form of a power function with a natural exponent?
#v(20pt)
// Option a) starts in black and turns green because it is correct.
#only("-1")[a) $f(x) = x^n$]#only("2-")[#text(fill:green)[a) $f(x) = x^n$]]
#v(10pt)
// Option b) starts in black and turns red because it is incorrect.
#only("-2")[b) $f(x) = n^x$]#only("3-")[#text(fill:red)[b) $f(x) = n^x$]]
#v(10pt)
// Option c) starts in black and turns red because it is incorrect.
#only("-3")[c) $f(x) = x/n$]#only("4-")[#text(fill:red)[c) $f(x) = x/n$]]
#v(10pt)
// Option d) starts in black and turns red because it is incorrect.
#only("-4")[d) $f(x) = n/x$]#only("5-")[#text(fill:red)[d) $f(x) = n/x$]]

#only("1")[#voiceover("Great job! The correct answer is a) $f(x) = x^n$.")]
#only("2")[#voiceover("Option a is correct. The general form of a power function with a natural exponent is $f(x) = x^n$, where $n$ is a natural number.")]
#only("3")[#voiceover("Option b is incorrect. $f(x) = n^x$ represents an exponential function, not a power function.")]
#only("4")[#voiceover("Option c is incorrect. $f(x) = x/n$ represents a rational function, not a power function.")]
#only("5")[#voiceover("Option d is incorrect. $f(x) = n/x$ is also a rational function, not a power function.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Understanding Power Functions]
#v(40pt)
#only("1-")[Power functions have the form $f(x) = x^n$ where $n$ is a natural number. 🌟]
#v(20pt)
#only("2-")[They grow at different rates depending on the value of $n$. 🚀]
#v(20pt)
#only("3-")[For example, $f(x) = x^2$ is a quadratic function, and $f(x) = x^3$ is a cubic function. 📈]

#only("1")[#voiceover("Let's understand power functions in more detail. Power functions have the form $f(x) = x^n$ where $n$ is a natural number.")]
#only("2")[#voiceover("They grow at different rates depending on the value of $n$. For instance, $f(x) = x^2$ grows more slowly than $f(x) = x^3$.")]
#only("3")[#voiceover("For example, $f(x) = x^2$ is a quadratic function, and $f(x) = x^3$ is a cubic function.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(-3, 3, 400)
y2 = x**2
y3 = x**3
plt.figure(figsize=(8, 6))
plt.plot(x, y2, label='$x^2$', color='blue')
plt.plot(x, y3, label='$x^3$', color='orange')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]

#only("1-")[Here are the graphs of $f(x) = x^2$ and $f(x) = x^3$: 🖼️]
#v(20pt)
#only("2-")[- The blue curve represents $f(x) = x^2$.]
#only("3-")[- The orange curve represents $f(x) = x^3$.]

#only("1")[#voiceover("Let's look at the graphs of $f(x) = x^2$ and $f(x) = x^3$.")]
#only("2")[#voiceover("The blue curve represents $f(x) = x^2$. This is a parabola opening upwards.")]
#only("3")[#voiceover("The orange curve represents $f(x) = x^3$. This is a cubic function with an inflection point at the origin.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[Power functions with natural exponents are of the form $f(x) = x^n$.]
#v(20pt)
#only("2-")[They include functions like $f(x) = x^2$, $f(x) = x^3$, etc.]
#v(20pt)
#only("3-")[Understanding these functions helps in studying polynomial functions. 🌐]

#only("1")[#voiceover("To conclude, power functions with natural exponents are of the form $f(x) = x^n$.")]
#only("2")[#voiceover("They include functions like $f(x) = x^2$, $f(x) = x^3$, and so on.")]
#only("3")[#voiceover("Understanding these functions is crucial for studying more complex polynomial functions.")]
]
