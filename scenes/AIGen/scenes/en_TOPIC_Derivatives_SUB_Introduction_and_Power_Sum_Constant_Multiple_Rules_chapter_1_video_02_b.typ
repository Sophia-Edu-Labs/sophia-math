#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Rule for Derivatives]
#v(40pt)
What is the derivative of $x^3$?
#v(20pt)
#only("-1")[a) $3x^2$]#only("2-")[#text(fill:green)[a) $3x^2$]]
#v(10pt)
#only("-2")[b) $x^2$]#only("3-")[#text(fill:red)[b) $x^2$]]
#v(10pt)
#only("-3")[c) $3x$]#only("4-")[#text(fill:red)[c) $3x$]]
#v(10pt)
#only("-4")[d) $x^3$]#only("5-")[#text(fill:red)[d) $x^3$]]

#only("1")[#voiceover("Not quite. Let's go over the correct solution and see why a) 3x squared is the right answer and why the other options are incorrect.")]

#only("2")[#voiceover("Option a, 3x squared, is indeed the correct derivative of x cubed. This is a direct application of the power rule for derivatives.")]

#only("3")[#voiceover("Option b, x squared, is incorrect. While it's close, it's missing the coefficient 3, which comes from bringing down the power in the differentiation process.")]

#only("4")[#voiceover("Option c, 3x, is also incorrect. It has the right coefficient, 3, but the power is wrong. Remember, we decrease the power by 1 when differentiating.")]

#only("5")[#voiceover("Lastly, option d, x cubed, is incorrect. This is actually the original function, not its derivative.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Rule Explained]
#v(20pt)
#only("1-")[The Power Rule: $dif/dif x (x^n) = n x^(n-1)$]
#v(20pt)
#only("2-")[For $f(x) = x^3$:]
#v(10pt)
#only("3-")[- $n = 3$]
#only("4-")[- $dif/dif x (x^3) = 3 x^(3-1) = 3x^2$]

#only("1")[#voiceover("Let's dive deeper into why 3x squared is the correct answer by looking at the power rule for derivatives.")]

#only("2")[#voiceover("The power rule states that the derivative of x to the nth power is n times x to the power of n minus 1. Let's apply this to our function, f of x equals x cubed.")]

#only("3")[#voiceover("In this case, n equals 3.")]

#only("4")[#voiceover("Applying the rule, we get 3 times x to the power of 3 minus 1, which simplifies to 3x squared. This is exactly our correct answer!")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Derivative]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**3
y2 = 3*x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x) = x³')
plt.plot(x, y2, label="f'(x) = 3x²")
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

#only("1")[#voiceover("To better understand the relationship between a function and its derivative, let's visualize both on the same graph.")]

#only("2")[#voiceover("The blue curve represents our original function, f of x equals x cubed. The orange curve shows its derivative, f prime of x equals 3x squared.")]

#only("3")[#voiceover("Notice how the derivative is always zero when the original function has a horizontal tangent line, such as at x equals zero. This visual representation helps us see the connection between a function and its rate of change.")]
]