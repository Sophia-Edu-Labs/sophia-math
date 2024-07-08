#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions with Negative Exponents]
#v(40pt)
Which of the following is a property of power functions with a negative exponent?
#v(40pt)
#only("-1")[a) Always increasing]#only("2-")[#text(fill:red)[a) Always increasing]]
#v(10pt)
#only("-2")[b) Symmetric about the y-axis]#only("3-")[#text(fill:red)[b) Symmetric about the y-axis]]
#v(10pt)
#only("-3")[c) Represents a reciprocal function]#only("4-")[#text(fill:green)[c) Represents a reciprocal function]]
#v(10pt)
#only("-4")[d) Has a maximum point]#only("5-")[#text(fill:red)[d) Has a maximum point]]

#only("1")[#voiceover("Great job! You've answered correctly. Let's go through each option to understand why c is the correct answer.")]
#only("2")[#voiceover("Option a, 'Always increasing', is incorrect. Power functions with negative exponents actually decrease as x increases.")]
#only("3")[#voiceover("Option b, 'Symmetric about the y-axis', is also incorrect. These functions are not symmetric about the y-axis.")]
#only("4")[#voiceover("Option c, 'Represents a reciprocal function', is correct! Power functions with negative exponents are indeed reciprocal functions.")]
#only("5")[#voiceover("Option d, 'Has a maximum point', is incorrect. These functions don't have a maximum point; they approach but never reach the x-axis.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Reciprocal Functions]
#v(40pt)
#only("1-")[- Definition: $f(x) = 1/x^n$, where $n > 0$]
#v(20pt)
#only("2-")[- Example: $f(x) = 1/x^2$]
#v(20pt)
#only("3-")[- As $x$ increases, $y$ approaches 0]
#v(20pt)
#only("4-")[- As $x$ approaches 0, $y$ approaches infinity]

#only("1")[#voiceover("Let's dive deeper into reciprocal functions. A reciprocal function is defined as f of x equals one over x to the n, where n is greater than zero.")]
#only("2")[#voiceover("For example, f of x equals one over x squared is a reciprocal function.")]
#only("3")[#voiceover("In these functions, as x increases, y approaches zero but never quite reaches it.")]
#only("4")[#voiceover("Conversely, as x approaches zero, y approaches infinity.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Reciprocal Functions]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0.1, 5, 1000)
y1 = 1/x
y2 = 1/x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = 1/x')
plt.plot(x, y2, label='f(x) = 1/x²')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Reciprocal Functions')
plt.legend()
plt.grid(True)
plt.ylim(0, 10)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of two reciprocal functions: f of x equals one over x, and f of x equals one over x squared.")]
#only("2")[#voiceover("Notice how both curves approach the x-axis as x increases, but never actually touch it. This is a key characteristic of reciprocal functions.")]
#only("3")[#voiceover("Also, observe how the functions shoot up towards infinity as x approaches zero. This creates what we call a vertical asymptote at x equals zero.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Properties of Reciprocal Functions]
#v(40pt)
#only("1-")[- 📉 Decreasing function]
#v(20pt)
#only("2-")[- 🔄 Inverse relationship between x and y]
#v(20pt)
#only("3-")[- 📊 Vertical asymptote at x = 0]
#v(20pt)
#only("4-")[- 📈 Horizontal asymptote at y = 0]

#only("1")[#voiceover("Let's summarize the key properties of reciprocal functions. First, they are decreasing functions, meaning as x increases, y decreases.")]
#only("2")[#voiceover("They show an inverse relationship between x and y. As one gets larger, the other gets smaller.")]
#only("3")[#voiceover("They have a vertical asymptote at x equals zero, which means the function is undefined when x is zero.")]
#only("4")[#voiceover("Lastly, they have a horizontal asymptote at y equals zero, which the function approaches but never reaches as x increases.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Power functions with negative exponents are reciprocal functions 🔍]
#v(20pt)
#only("2-")[- They have unique properties that distinguish them from other functions 🏷️]
#v(20pt)
#only("3-")[- Understanding these properties is crucial in mathematics and real-world applications 🌍]

#only("1")[#voiceover("To conclude, power functions with negative exponents are indeed reciprocal functions.")]
#only("2")[#voiceover("They have unique properties that set them apart from other types of functions.")]
#only("3")[#voiceover("Understanding these properties is not just important for mathematics, but also for many real-world applications in physics, engineering, and economics. Great job on recognizing this important characteristic!")]
]