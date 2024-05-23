#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composing Functions]
#v(40pt)
#only("1-")[- Applying one function to the result of another]
#v(20pt)
#only("2-")[- Written as $f(g(x))$]
#v(20pt)
#only("3-")[- Example: If $f(x) = x^2$ and $g(x) = x + 1$, then $f(g(x)) = (x + 1)^2$]

#only("1")[
#voiceover("Composing functions involves applying one function to the result of another function.")
]

#only("2")[
#voiceover("This is written using the notation f of g of x, where the output of g becomes the input of f.")
]

#only("3")[
#voiceover("For example, if f of x equals x squared and g of x equals x plus 1, then the composition f of g of x would be x plus 1, all squared.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Example]
#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

def f(x):
    return x**2

def g(x):
    return x + 1

plt.figure(figsize=(8, 6))
plt.plot(x, f(x), 'b-', label='$f(x) = x^2$')
plt.plot(x, g(x), 'r-', label('$g(x) = x + 1$')
plt.plot(x, f(g(x)), 'g-', label='$f(g(x)) = (x + 1)^2$')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a visual representation. The blue curve represents f of x equals x squared, the red line represents g of x equals x plus 1, and the green curve shows the composition f of g of x, which is x plus 1, all squared.")
]
]
```

The code has a small error in the `label` argument of the second `plt.plot` function. The closing parenthesis is missing. Here is the corrected code:

```typst
#slide()[
#text(size: 30pt, weight: "bold")[Visual Example]
#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

def f(x):
    return x**2

def g(x):
    return x + 1

plt.figure(figsize=(8, 6))
plt.plot(x, f(x), 'b-', label='$f(x) = x^2$')
plt.plot(x, g(x), 'r-', label='$g(x) = x + 1$')
plt.plot(x, f(g(x)), 'g-', label='$f(g(x)) = (x + 1)^2$')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a visual representation. The blue curve represents f of x equals x squared, the red line represents g of x equals x plus 1, and the green curve shows the composition f of g of x, which is x plus 1, all squared.")
]
]
]]

#slide()[
#text(size: 30pt, weight: "bold")[Key Points 🔑]
#v(40pt)
#only("1-")[- Composition: $f(g(x))$ 🎨]
#v(20pt)
#only("2-")[- Output of $g$ becomes input of $f$ ⇄]
#v(20pt)
#only("3-")[- Order matters: $f(g(x)) ≠ g(f(x))$ (usually) 🎭]

#only("1")[
#voiceover("To recap, composition of functions is written as f of g of x.")
]

#only("2")[
#voiceover("The output of the inner function g becomes the input of the outer function f.")
]

#only("3")[
#voiceover("It's important to note that the order of composition matters. Usually, f of g of x is not equal to g of f of x.")
]
]