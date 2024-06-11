#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavior of Power Functions as $x$ Approaches Zero]
#v(40pt)
#only("1-")[- Introduction to Power Functions 📈]
#v(20pt)
#only("2-")[- $f(x) = x^n$ where $n$ is a natural number]
#v(20pt)
#only("3-")[- What happens as $x$ approaches zero? 🤔]
#only("1")[
#voiceover("Welcome! Today, we will explore the behavior of power functions as x approaches zero. Let's dive in!")
]
#only("2")[
#voiceover("A power function is of the form f of x equals x to the power of n, where n is a natural number.")
]
#only("3")[
#voiceover("Our main question is: What happens to the value of f of x as x approaches zero?")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Exploring $f(x) = x^n$ as $x$ Approaches Zero]
#v(40pt)
#only("1-")[- Consider $f(x) = x^2$]
#v(20pt)
#only("2-")[- As $x$ gets closer to zero, $f(x)$ gets closer to zero]
#v(20pt)
#only("3-")[- This is true for any natural number $n$]
#only("1")[
#voiceover("Let's start by considering a specific example: f of x equals x squared.")
]
#only("2")[
#voiceover("As x gets closer to zero, the value of f of x, which is x squared, also gets closer to zero.")
]
#only("3")[
#voiceover("This behavior is consistent for any natural number n. As x approaches zero, the value of f of x equals x to the power of n approaches zero.")
]
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

x = np.linspace(-1, 1, 400)
y1 = x**2
y2 = x**3
y3 = x**4

plt.plot(x, y1, label='$x^2$')
plt.plot(x, y2, label='$x^3$')
plt.plot(x, y3, label='$x^4$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.title('Behavior of $x^n$ as $x$ Approaches Zero')
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("To better understand this, let's look at the graphs of x squared, x cubed, and x to the power of four.")
]
#only("2")[
#voiceover("Notice how, as x gets closer to zero, the values of all these functions also get closer to zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power functions: $f(x) = x^n$]
#v(20pt)
#only("2-")[- As $x$ approaches zero, $f(x)$ approaches zero]
#v(20pt)
#only("3-")[- True for any natural number $n$]
#only("1")[
#voiceover("To summarize, a power function is of the form f of x equals x to the power of n.")
]
#only("2")[
#voiceover("As x approaches zero, the value of f of x also approaches zero.")
]
#only("3")[
#voiceover("This behavior holds true for any natural number n.")
]
]