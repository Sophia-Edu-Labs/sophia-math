#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Sum Rule for Derivatives]
#v(40pt)
What is the derivative of $f(x) = x^2 + x$?
#v(20pt)
#only("-1")[a) $2x + 1$]#only("2-")[#text(fill:green)[a) $2x + 1$]]
#v(10pt)
#only("-2")[b) $x^2 + 1$]#only("3-")[#text(fill:red)[b) $x^2 + 1$]]
#v(10pt)
#only("-3")[c) $2x + x$]#only("4-")[#text(fill:red)[c) $2x + x$]]
#v(10pt)
#only("-4")[d) $2x$]#only("5-")[#text(fill:red)[d) $2x$]]

#only("1")[#voiceover("Not quite. Let's go over the correct solution and understand where the mistake was made.")]

#only("2")[#voiceover("Option a, 2x plus 1, is indeed the correct answer. This is a perfect application of the sum rule for derivatives.")]

#only("3")[#voiceover("Option b, x squared plus 1, is incorrect. This looks like the original function with the x term replaced by 1, which isn't how derivatives work.")]

#only("4")[#voiceover("Option c, 2x plus x, is close but not quite right. It's as if we differentiated x squared correctly but left the x term unchanged.")]

#only("5")[#voiceover("Option d, 2x, is also incorrect. This is the derivative of x squared alone, ignoring the x term completely.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Sum Rule Explanation]
#v(20pt)
#only("1-")[The Sum Rule states:]
#v(10pt)
#only("2-")[$(f(x) + g(x))' = f'(x) + g'(x)$]
#v(20pt)
#only("3-")[For $f(x) = x^2 + x$:]
#v(10pt)
#only("4-")[- $f(x) = x^2 + x$]
#only("5-")[- $f'(x) = (x^2)' + (x)'$]
#only("6-")[- $f'(x) = 2x + 1$]

#only("1")[#voiceover("Let's break down the solution using the Sum Rule for derivatives.")]

#only("2")[#voiceover("The Sum Rule states that the derivative of a sum is the sum of the derivatives. In mathematical notation, we write this as: the derivative of f of x plus g of x equals f prime of x plus g prime of x.")]

#only("3")[#voiceover("Now, let's apply this to our function f of x equals x squared plus x.")]

#only("4")[#voiceover("We start with our function f of x equals x squared plus x.")]

#only("5")[#voiceover("Applying the Sum Rule, we can say that f prime of x equals the derivative of x squared plus the derivative of x.")]

#only("6")[#voiceover("We know that the derivative of x squared is 2x, and the derivative of x is 1. So, f prime of x equals 2x plus 1.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**2 + x

def f_prime(x):
    return 2*x + 1

x = np.linspace(-2, 2, 100)
y = f(x)
y_prime = f_prime(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = x² + x')
plt.plot(x, y_prime, label="f'(x) = 2x + 1")
plt.title('Function and its Derivative')
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
#v(20pt)
#only("1-")[- Blue: Original function $f(x) = x^2 + x$]
#only("2-")[- Orange: Derivative $f'(x) = 2x + 1$]

#only("1")[#voiceover("To visualize this, let's look at a graph of our original function and its derivative.")]

#only("2")[#voiceover("The blue curve represents our original function, f of x equals x squared plus x. The orange line is its derivative, f prime of x equals 2x plus 1. Notice how the derivative is a straight line, while the original function is a parabola. This is because the derivative of a quadratic function is always a linear function.")]
]