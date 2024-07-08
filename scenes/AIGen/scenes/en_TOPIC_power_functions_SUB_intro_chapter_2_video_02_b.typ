#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Even Power Functions]
#v(40pt)
#only("1-")[Which of the following is an even power function?]
#v(20pt)
#only("-1")[a) $f(x) = x^3$]#only("2-")[#text(fill:red)[a) $f(x) = x^3$]]
#v(10pt)
#only("-2")[b) $f(x) = x^2$]#only("3-")[#text(fill:green)[b) $f(x) = x^2$]]
#v(10pt)
#only("-3")[c) $f(x) = x^1$]#only("4-")[#text(fill:red)[c) $f(x) = x^1$]]
#v(10pt)
#only("-4")[d) $f(x) = x^(-1)$]#only("5-")[#text(fill:red)[d) $f(x) = x^(-1)$]]

#only("1")[#voiceover("Excellent job! You've correctly identified the even power function. Let's break down each option to understand why.")]
#only("2")[#voiceover("Option a, f of x equals x cubed, is not an even power function. The exponent 3 is odd.")]
#only("3")[#voiceover("Option b, f of x equals x squared, is indeed an even power function. The exponent 2 is even.")]
#only("4")[#voiceover("Option c, f of x equals x to the first power, is not an even power function. The exponent 1 is odd.")]
#only("5")[#voiceover("Option d, f of x equals x to the negative first power, is not an even power function. The exponent negative 1 is odd.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Even Power Functions: Definition]
#v(40pt)
#only("1-")[An even power function has the form:]
#v(20pt)
#only("2-")[#text(size: 24pt)[$f(x) = x^n$, where $n$ is an even integer]]
#v(20pt)
#only("3-")[Examples: $x^2$, $x^4$, $x^6$, ...]

#only("1")[#voiceover("Let's start by defining what an even power function is.")]
#only("2")[#voiceover("An even power function has the form f of x equals x to the power of n, where n is an even integer.")]
#only("3")[#voiceover("Some examples include x squared, x to the fourth power, x to the sixth power, and so on.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Characteristics of Even Power Functions]
#v(40pt)
#only("1-")[1. Symmetry about the y-axis 🪞]
#v(20pt)
#only("2-")[2. Always non-negative for real inputs 📈]
#v(20pt)
#only("3-")[3. U-shaped graph (parabola for $x^2$) 🏋️]

#only("1")[#voiceover("Even power functions have some unique characteristics. First, they are symmetric about the y-axis.")]
#only("2")[#voiceover("Second, they are always non-negative for real inputs.")]
#only("3")[#voiceover("Third, they have a U-shaped graph. For x squared, this is a parabola.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing $f(x) = x^2$]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = x²')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.title('Graph of f(x) = x²')
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

#only("1")[#voiceover("Let's visualize the function f of x equals x squared. As we can see, it forms a perfect parabola.")]
#only("2")[#voiceover("Notice how the graph is symmetric about the y-axis. This is a key feature of even power functions.")]
#only("3")[#voiceover("Also, observe that the function never goes below the x-axis. This illustrates the non-negative property of even power functions for real inputs.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why $x^2$ is an Even Power Function]
#v(40pt)
#only("1-")[1. Exponent is even (2 is even) ✅]
#v(20pt)
#only("2-")[2. $f(-x) = f(x)$ for all $x$ 🔄]
#v(20pt)
#only("3-")[3. Symmetric about y-axis 🪞]

#only("1")[#voiceover("Now, let's confirm why x squared is indeed an even power function. First, its exponent, 2, is an even number.")]
#only("2")[#voiceover("Second, f of negative x equals f of x for all x. This means that the function gives the same output whether the input is positive or negative.")]
#only("3")[#voiceover("This property results in the function being symmetric about the y-axis, as we saw in the graph.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- $f(x) = x^2$ is an even power function 🎉]
#v(20pt)
#only("2-")[- Even power functions have even exponents 🔢]
#v(20pt)
#only("3-")[- They are symmetric and non-negative 📊]

#only("1")[#voiceover("To conclude, f of x equals x squared is indeed an even power function.")]
#only("2")[#voiceover("Remember, even power functions always have even exponents.")]
#only("3")[#voiceover("They are characterized by their symmetry about the y-axis and their non-negative values for real inputs. Great job understanding this concept!")]
]