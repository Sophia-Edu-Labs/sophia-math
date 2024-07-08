#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Even Power Functions]
#v(40pt)
#only("1-")[Which of the following is a property of even power functions?]
#v(20pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Symmetric about the origin]#only("2-")[#text(fill:red)[a) Symmetric about the origin]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Symmetric about the y-axis]#only("3-")[#text(fill:green)[b) Symmetric about the y-axis]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Always increasing]#only("4-")[#text(fill:red)[c) Always increasing]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Always decreasing]#only("5-")[#text(fill:red)[d) Always decreasing]]

#only("1")[#voiceover("Not quite. Let's review the correct solution and break down each option to understand why.")]
#only("2")[#voiceover("Option a, symmetric about the origin, is incorrect. Even power functions are not symmetric about the origin, but rather about the y-axis.")]
#only("3")[#voiceover("Option b, symmetric about the y-axis, is correct! This is indeed a defining characteristic of even power functions.")]
#only("4")[#voiceover("Option c, always increasing, is incorrect. Even power functions are not always increasing; they can decrease and then increase.")]
#only("5")[#voiceover("Option d, always decreasing, is also incorrect. Even power functions are not always decreasing; they can increase and then decrease.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Even Power Functions: Symmetry]
#v(40pt)
#only("1-")[Even power functions have the form: $f(x) = x^n$, where $n$ is an even integer]
#v(20pt)
#only("2-")[Examples: $f(x) = x^2$, $g(x) = x^4$, $h(x) = x^6$]
#v(20pt)
#only("3-")[Key property: $f(x) = f(-x)$ for all $x$]

#only("1")[#voiceover("Let's dive deeper into even power functions. These are functions where the exponent is an even integer.")]
#only("2")[#voiceover("Some examples include f of x equals x squared, g of x equals x to the fourth power, and h of x equals x to the sixth power.")]
#only("3")[#voiceover("The key property of even power functions is that f of x equals f of negative x for all x. This is what gives them their symmetry about the y-axis.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Even Power Functions]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**2
y2 = x**4

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = x²')
plt.plot(x, y2, label='g(x) = x⁴')
plt.axvline(x=0, color='k', linestyle='--')
plt.axhline(y=0, color='k', linestyle='--')
plt.legend()
plt.title('Even Power Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[📊 Graph shows $f(x) = x^2$ and $g(x) = x^4$]
#v(10pt)
#only("2-")[🔄 Notice the symmetry about the y-axis]

#only("1")[#voiceover("Here's a graph showing two even power functions: f of x equals x squared in blue, and g of x equals x to the fourth power in orange.")]
#only("2")[#voiceover("Notice how both curves are perfectly symmetrical about the y-axis. If we were to fold the graph along the y-axis, the two halves would match up perfectly.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Points to Remember]
#v(40pt)
#only("1-")[📌 Even power functions are symmetric about the y-axis]
#v(20pt)
#only("2-")[📌 They're not always increasing or decreasing]
#v(20pt)
#only("3-")[📌 The graph touches or crosses the x-axis only at the origin]

#only("1")[#voiceover("To summarize, the key point to remember is that even power functions are symmetric about the y-axis.")]
#only("2")[#voiceover("It's important to note that they're not always increasing or decreasing. They typically decrease, then increase (or vice versa), creating a U-shape or similar curve.")]
#only("3")[#voiceover("Lastly, the graph of an even power function always touches or crosses the x-axis at the origin, and nowhere else.")]
]