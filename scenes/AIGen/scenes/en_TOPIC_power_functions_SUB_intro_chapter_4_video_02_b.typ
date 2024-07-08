#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions with Negative Exponent]
#v(40pt)
#only("1-")[What is the general form of a power function with a negative exponent?]
#v(40pt)
#only("-1")[a) $f(x) = a x^b$]#only("2-")[#text(fill:red)[a) $f(x) = a x^b$]]
#v(10pt)
#only("-2")[b) $f(x) = a x^(-b)$]#only("3-")[#text(fill:red)[b) $f(x) = a x^(-b)$]]
#v(10pt)
#only("-3")[c) $f(x) = a / x^b$]#only("4-")[#text(fill:green)[c) $f(x) = a / x^b$]]
#v(10pt)
#only("-4")[d) $f(x) = a b^x$]#only("5-")[#text(fill:red)[d) $f(x) = a b^x$]]
#v(40pt)

#only("1")[#voiceover("Excellent work! You've correctly identified the general form of a power function with a negative exponent. Let's break down why this is the correct answer and why the other options are incorrect.")]
#only("2")[#voiceover("Option a, f of x equals a times x to the power of b, is incorrect. This is the general form of a power function, but it doesn't specifically represent a negative exponent.")]
#only("3")[#voiceover("Option b, f of x equals a times x to the power of negative b, is close but not quite right. While this does show a negative exponent, it's not the standard way we write these functions.")]
#only("4")[#voiceover("Option c, f of x equals a divided by x to the power of b, is correct. This is indeed the standard form for a power function with a negative exponent.")]
#only("5")[#voiceover("Option d, f of x equals a times b to the power of x, is incorrect. This is the general form of an exponential function, not a power function.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding the Correct Form]
#v(40pt)
#only("1-")[Correct form: $f(x) = a / x^b$]
#v(20pt)
#only("2-")[- $a$: constant (coefficient)]
#only("3-")[- $x$: variable]
#only("4-")[- $b$: positive exponent]
#v(20pt)
#only("5-")[Equivalent to: $f(x) = a x^(-b)$]

#only("1")[#voiceover("Let's understand why f of x equals a divided by x to the power of b is the correct form for a power function with a negative exponent.")]
#only("2")[#voiceover("In this form, a is a constant, also known as the coefficient.")]
#only("3")[#voiceover("x is our variable.")]
#only("4")[#voiceover("And b is a positive exponent.")]
#only("5")[#voiceover("This form is equivalent to f of x equals a times x to the power of negative b. The negative exponent is represented by putting x to the power of b in the denominator.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Power Functions]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0.1, 5, 1000)
y1 = 1 / x
y2 = 1 / x**2
y3 = 1 / x**3

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = 1/x')
plt.plot(x, y2, label='f(x) = 1/x²')
plt.plot(x, y3, label='f(x) = 1/x³')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Power Functions with Negative Exponents')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of some power functions with negative exponents. The blue line shows f of x equals 1 divided by x, the orange line shows f of x equals 1 divided by x squared, and the green line shows f of x equals 1 divided by x cubed.")]
#only("2")[#voiceover("Notice how all these functions approach infinity as x approaches zero, and they approach zero as x increases. This is a characteristic behavior of power functions with negative exponents.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- General form: $f(x) = a / x^b$]
#v(20pt)
#only("2-")[- Equivalent to $a x^(-b)$]
#v(20pt)
#only("3-")[- As $x arrow infinity$, $f(x) arrow 0$]
#v(20pt)
#only("4-")[- As $x arrow 0^+$, $f(x) arrow infinity$]

#only("1")[#voiceover("Let's summarize the key points about power functions with negative exponents. First, remember that the general form is f of x equals a divided by x to the power of b.")]
#only("2")[#voiceover("This is equivalent to a times x to the power of negative b.")]
#only("3")[#voiceover("An important characteristic is that as x approaches infinity, f of x approaches zero.")]
#only("4")[#voiceover("Conversely, as x approaches zero from the positive side, f of x approaches infinity. Understanding these properties will help you work with and graph these functions.")]
]