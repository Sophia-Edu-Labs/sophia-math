#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
What does the area between two curves represent?
#v(40pt)
#only("-1")[a) The sum of the functions]#only("2-")[#text(fill:red)[a) The sum of the functions]]
#v(10pt)
#only("-2")[b) The difference of the functions]#only("3-")[#text(fill:red)[b) The difference of the functions]]
#v(10pt)
#only("-3")[c) The product of the functions]#only("4-")[#text(fill:red)[c) The product of the functions]]
#v(10pt)
#only("-4")[d) The region enclosed by the functions]#only("5-")[#text(fill:green)[d) The region enclosed by the functions]]

#only("1")[#voiceover("Let's consider each option.")"]
#only("2")[#voiceover("The sum of the functions, f of x plus g of x, would result in a new function, not an area.")]
#only("3")[#voiceover("Similarly, the difference of the functions, would also result in a new function, not an area.")]
#only("4")[#voiceover("The product of the functions, again, would result in a new function, not an area.")]
#only("5")[#voiceover("The correct answer is d The region enclosed by the functions. The area between two curves represents the region bounded by the graphs of f of x and g of x.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
def f(x):
  return x**2
def g(x):
  return x + 1
x = np.linspace(0, 2, 100)
y1 = f(x)
y2 = g(x)
plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x) = x^2')
plt.plot(x, y2, label='g(x) = x + 1')
plt.fill_between(x, y1, y2, where=(y1 >= y2), color='green', alpha=0.3, label='Area')
plt.xlim(0, 2)
plt.ylim(0, 4)
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[#voiceover("Here's a visual representation. Consider two functions, $f(x) = x^2$ and $g(x) = x + 1$, over the interval $[0, 2]$.")]
#only("2")[#voiceover("The shaded region represents the area between the two curves, where $f(x) >= g(x)$.")]
#only("3")[#voiceover("This area is the region enclosed by the functions $f(x)$ and $g(x)$, not their sum, difference, or product.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
- The area between two curves represents the #text(fill:green)[region enclosed by the functions]
- It is #text(fill:red)[not] the sum, difference, or product of the functions
- The area can be calculated using #text(fill:blue)[integration]
]