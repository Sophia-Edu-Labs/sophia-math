#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composite Functions]
#v(40pt)
#only("1-")[- Functions combined: $f(g(x))$]
#v(20pt)
#only("2-")[- Example: $h(x) = (2x + 3)^2$]
#only("1")[
#voiceover("A composite function is a function made up of two or more functions combined together. It's written as f of g of x, where the output of the inner function g becomes the input of the outer function f.")
]
#only("2")[
#voiceover("For example, consider the function h of x equals the quantity 2x plus 3, squared. This is a composite function.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Decomposing $h(x)$]
#v(40pt)
#only("1-")[- Identify the inner function: $g(x) = 2x + 3$]
#v(20pt)
#only("2-")[- Identify the outer function: $f(x) = x^2$]
#v(20pt)
#only("3-")[- $h(x) = f(g(x)) = (2x + 3)^2$]
#only("1")[
#voiceover("To decompose h of x, we first identify the inner function. In this case, it's g of x equals 2x plus 3.")
]
#only("2")[
#voiceover("Next, we identify the outer function. Here, it's f of x equals x squared.")
]
#only("3")[
#voiceover("So, h of x can be written as f of g of x, which is the quantity 2x plus 3, squared.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
g = 2*x + 3
f = g**2
h = f

plt.figure(figsize=(6, 6))
plt.plot(x, g, label='$g(x) = 2x + 3$')
plt.plot(x, h, label='$h(x) = (2x + 3)^2$')
plt.legend(fontsize=12)
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.title('Composite Function')
plt.xlabel('x')
plt.ylabel('y')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation. The blue line represents g of x, the inner function. The orange line represents h of x, the composite function. Notice how h of x is the result of applying the outer function f to the inner function g.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Composite function: $f(g(x))$ 🧩]
#v(20pt)
#only("2-")[- Decompose: Identify inner and outer functions]
#v(20pt)
#only("3-")[- $h(x) = (2x + 3)^2 = f(g(x))$, where $g(x) = 2x + 3$ and $f(x) = x^2$]
#only("1")[
#voiceover("In summary, a composite function is a function made up of two or more functions combined together, written as f of g of x.")
]
#only("2")[
#voiceover("To decompose a composite function, identify the inner and outer functions.")
]
#only("3")[
#voiceover("In our example, h of x equals the quantity 2x plus 3, squared can be decomposed into f of g of x, where g of x equals 2x plus 3 and f of x equals x squared.")
]
]