#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Derivative of a Polynomial]
#v(40pt)
What is the derivative of $3x^2 + 4x$?
#v(40pt)
#only("-1")[a) $6x + 4$]#only("2-")[#text(fill:green)[a) $6x + 4$]]
#v(10pt)
#only("-2")[b) $3x^2 + 4$]#only("3-")[#text(fill:red)[b) $3x^2 + 4$]]
#v(10pt)
#only("-3")[c) $6x + 4x$]#only("4-")[#text(fill:red)[c) $6x + 4x$]]
#v(10pt)
#only("-4")[d) $3x + 4$]#only("5-")[#text(fill:red)[d) $3x + 4$]]

#only("1")[#voiceover("Great job! You've answered this question correctly. Let's go through each option to understand why a) is the correct answer and why the others are incorrect.")]

#only("2")[#voiceover("Option a), 6x plus 4, is indeed the correct answer. Let's break down why in the next slide.")]

#only("3")[#voiceover("Option b), 3x squared plus 4, is incorrect. This is actually just the original function with the x term removed, not its derivative.")]

#only("4")[#voiceover("Option c), 6x plus 4x, is also incorrect. While the 6x part is correct, the 4x term is not. Remember, when we differentiate a constant times x, the result is just the constant.")]

#only("5")[#voiceover("Option d), 3x plus 4, is incorrect as well. This answer doesn't properly apply the power rule for the x squared term.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Original function: $f(x) = 3x^2 + 4x$]
#v(20pt)
#only("2-")[Step 1: Derivative of $3x^2$]
#only("3-")[$ (3x^2)' = 3 dot 2x = 6x$]
#v(20pt)
#only("4-")[Step 2: Derivative of $4x$]
#only("5-")[$(4x)' = 4$]
#v(20pt)
#only("6-")[Step 3: Combine the results]
#only("7-")[$ f'(x) = 6x + 4$]

#only("1")[#voiceover("Let's break down the solution step by step. We start with our original function, f of x equals 3x squared plus 4x.")]

#only("2")[#voiceover("First, let's find the derivative of 3x squared.")]

#only("3")[#voiceover("Using the power rule, we multiply the coefficient 3 by the exponent 2, and then reduce the exponent by 1. This gives us 3 times 2x, which equals 6x.")]

#only("4")[#voiceover("Next, let's find the derivative of 4x.")]

#only("5")[#voiceover("The derivative of 4x is simply 4, because the derivative of x is 1, and we keep the coefficient.")]

#only("6")[#voiceover("Finally, we combine these results.")]

#only("7")[#voiceover("The derivative of our original function is therefore 6x plus 4.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return 3*x**2 + 4*x

def f_prime(x):
    return 6*x + 4

x = np.linspace(-2, 2, 100)
y = f(x)
y_prime = f_prime(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = 3x² + 4x', color='blue')
plt.plot(x, y_prime, label="f'(x) = 6x + 4", color='red')
plt.title("Function and its Derivative")
plt.xlabel("x")
plt.ylabel("y")
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- Blue curve: Original function $f(x) = 3x^2 + 4x$]
#only("2-")[- Red line: Derivative $f'(x) = 6x + 4$]

#only("1")[#voiceover("To better understand the relationship between a function and its derivative, let's look at a graph. The blue curve represents our original function, f of x equals 3x squared plus 4x.")]

#only("2")[#voiceover("The red line represents the derivative we just calculated, f prime of x equals 6x plus 4. Notice how the derivative is a straight line, which makes sense because it's a linear function. This line represents the slope of the original function at each point.")]
]