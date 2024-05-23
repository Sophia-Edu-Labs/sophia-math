#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Invertible Functions]
#v(40pt)
Which of the following functions is invertible?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) $f(x) = x^2$]#only("2-")[#text(fill:red)[a) $f(x) = x^2$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $f(x) = e^x$]#only("3-")[#text(fill:green)[b) $f(x) = e^x$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $f(x) = sin(x)$]#only("4-")[#text(fill:red)[c) $f(x) = sin(x)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) $f(x) = log(x)$]#only("5-")[#text(fill:green)[d) $f(x) = log(x)$]]
#only("1")[#voiceover("Not quite. Let's look at the correct solution.")]
#only("2")[#voiceover("Option a, $f(x) = x^2$, is not invertible because it fails the horizontal line test. Each y-value corresponds to two x-values, except at x = 0.")]
#only("3")[#voiceover("Option b, $f(x) = e^x$, is invertible. It passes the horizontal line test, as each y-value corresponds to exactly one x-value.")]
#only("4")[#voiceover("Option c, $f(x) = sin(x)$, is not invertible. The sine function is periodic, so it fails the horizontal line test.")]
#only("5")[#voiceover("Option d, $f(x) = log(x)$, is also invertible. Like the exponential function, it passes the horizontal line test.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Invertibility Conditions]
#v(40pt)
For a function to be invertible, it must be:
#v(20pt)
#only("1-")[- One-to-one (injective) 1️⃣]
#v(10pt)
#only("2-")[- Onto (surjective) 🎯]
#only("1")[#voiceover("For a function to be invertible, it must satisfy two conditions.")]
#only("2")[#voiceover("First, it must be one-to-one, also known as injective. This means that each element in the codomain is paired with at most one element in the domain.")]
#only("3")[#voiceover("Second, the function must be onto, or surjective. This means that each element in the codomain is paired with at least one element in the domain.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Horizontal Line Test]
#v(40pt)
#only("1-")[A function is invertible if and only if it passes the horizontal line test.]
#v(20pt)
#only("2-")[🧪 The test: If any horizontal line intersects the graph of the function more than once, the function is not invertible.]
#only("1")[#voiceover("A graphical way to determine if a function is invertible is the horizontal line test.")]
#only("2")[#voiceover("The test states that if any horizontal line intersects the graph of the function more than once, the function is not invertible. If no horizontal line intersects the graph more than once, the function is invertible.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 6))

x = np.linspace(-5, 5, 100)

# Plot f(x) = x^2
ax1.plot(x, x**2, label='$f(x) = x^2$')
ax1.axhline(y=1, color='r', linestyle='--', label='Horizontal Line')
ax1.set_title('Not Invertible')
ax1.legend()
ax1.grid(True)

# Plot f(x) = e^x
ax2.plot(x, np.exp(x), label='$f(x) = e^x$')
ax2.axhline(y=1, color='r', linestyle='--', label='Horizontal Line')
ax2.set_title('Invertible')
ax2.legend()
ax2.grid(True)

plt.tight_layout()
plt.show()
```,
width: 540pt),
)
]
]
#v(20pt)
#only("1-")[The parabola $f(x) = x^2$ fails the horizontal line test, while the exponential function $f(x) = e^x$ passes it.]
#only("1")[#voiceover("Here we see two examples. The parabola $f(x) = x^2$ on the left fails the horizontal line test. The red line intersects the graph twice. This means it's not invertible.")]
#only("2")[#voiceover("On the right, the exponential function $f(x) = e^x$ passes the test. The red line only intersects the graph once, no matter where we draw it. Therefore, this function is invertible.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Invertible functions are one-to-one and onto 🔄]
#v(20pt)
#only("2-")[- The horizontal line test checks for invertibility 📏]
#v(20pt)
#only("3-")[- $f(x) = e^x$ and $f(x) = log(x)$ are invertible ✅]
#v(20pt)
#only("4-")[- $f(x) = x^2$ and $f(x) = sin(x)$ are not invertible ❌]
#only("1")[#voiceover("To summarize, invertible functions are both one-to-one and onto.")]
#only("2")[#voiceover("We can use the horizontal line test to graphically determine if a function is invertible.")]
#only("3")[#voiceover("The exponential function $f(x) = e^x$ and the logarithmic function $f(x) = log(x)$ are examples of invertible functions.")]
#only("4")[#voiceover("On the other hand, the quadratic function $f(x) = x^2$ and the sine function $f(x) = sin(x)$ are not invertible, as they fail the horizontal line test.")]
]