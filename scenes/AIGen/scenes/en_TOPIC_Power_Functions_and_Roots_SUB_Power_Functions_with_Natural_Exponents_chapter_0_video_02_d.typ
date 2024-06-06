#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions]
#v(40pt)
What is the general form of a power function with a natural exponent?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) $f(x) = x^n$]#only("2-")[#text(fill:green)[a) $f(x) = x^n$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $f(x) = n^x$]#only("3-")[#text(fill:red)[b) $f(x) = n^x$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $f(x) = x/n$]#only("4-")[#text(fill:red)[c) $f(x) = x/n$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $f(x) = n/x$]#only("5-")[#text(fill:red)[d) $f(x) = n/x$]]

#only("1")[#voiceover("That's okay! Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) $f(x) = x^n$ is indeed the general form of a power function with a natural exponent. Here, $x$ is the variable and $n$ is a natural number, i.e., a positive integer.")]
#only("3")[#voiceover("Option b) $f(x) = n^x$ is incorrect. This is the general form of an exponential function, not a power function.")]
#only("4")[#voiceover("Option c) $f(x) = x/n$ is also incorrect. This is a linear function, not a power function.")]
#only("5")[#voiceover("And option d) $f(x) = n/x$ is incorrect as well. This is a reciprocal function, not a power function.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1) In a power function, the variable is the base.]
#v(20pt)
#only("2-")[2) The exponent is a constant.]
#v(20pt)
#only("3-")[3) For natural exponents, the constant is a natural number (1, 2, 3, ...).]
#v(20pt)
#only("4-")[4) Therefore, the general form is $f(x) = x^n$, where $n ∈ NN$.]

#only("1")[#voiceover("Let's break this down step by step. In a power function, the variable, in this case $x$, is the base.")]
#only("2")[#voiceover("The exponent in a power function is a constant, not a variable.")]
#only("3")[#voiceover("For power functions with natural exponents, this constant exponent is a natural number, which means a positive integer like 1, 2, 3, and so on.")]
#only("4")[#voiceover("Therefore, the general form of a power function with a natural exponent is $f(x) = x^n$, where $n$ is an element of the set of natural numbers, often denoted by the double-struck capital N.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples]
#v(40pt)
#only("1-")[Here are some examples of power functions with natural exponents:]
#v(20pt)
#only("2-")[- $f(x) = x^2$ (quadratic function)]
#v(10pt)
#only("3-")[- $g(x) = x^5$ (quintic function)]
#v(10pt)
#only("4-")[- $h(x) = x^10$ (function of degree 10)]

#only("1")[#voiceover("Let's look at some examples of power functions with natural exponents.")]
#only("2")[#voiceover("The function $f(x) = x^2$ is a quadratic function, a power function with exponent 2.")]
#only("3")[#voiceover("The function $g(x) = x^5$ is a quintic function, a power function with exponent 5.")]
#only("4")[#voiceover("And the function $h(x) = x^10$ is a power function with exponent 10, a function of degree 10.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

plt.figure(figsize=(8, 6))

plt.plot(x, x**2, label='$x^2$')
plt.plot(x, x**5, label='$x^5$')
plt.plot(x, x**10, label='$x^10$')

plt.grid(True)
plt.legend()
plt.xlim(-2, 2)
plt.ylim(-1, 5)
plt.title('Power Functions with Natural Exponents')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a plot of the example functions:]
#v(20pt)
#only("2-")[- Notice how they all pass through (0, 0) and (1, 1).]
#only("3-")[- The higher the exponent, the steeper the curve.]

#only("1")[#voiceover("Here's a plot of the example functions we just discussed.")]
#only("2")[#voiceover("Notice how they all pass through the points (0, 0) and (1, 1). This is a characteristic of all power functions.")]
#only("3")[#voiceover("Also, observe that the higher the exponent, the steeper the curve becomes. This is because the rate of change increases more rapidly for higher exponents.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Power functions have the form $f(x) = x^n$]
#v(20pt)
#only("2-")[- For natural exponents, $n$ is a positive integer]
#v(20pt)
#only("3-")[- Examples: $x^2$, $x^5$, $x^{10}$, etc.]
#v(20pt)
#only("4-")[- Higher exponents lead to steeper curves]

#only("1")[#voiceover("To summarize, power functions have the general form $f(x) = x^n$.")]
#only("2")[#voiceover("For power functions with natural exponents, $n$ is a positive integer.")]
#only("3")[#voiceover("Some examples of power functions with natural exponents are $x^2$, $x^5$, $x^{10}$, and so on.")]
#only("4")[#voiceover("And remember, higher exponents result in steeper curves. Keep up the great work!")]
]