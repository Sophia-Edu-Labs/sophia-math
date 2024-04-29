#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[When setting up the integral to find the area between two curves, what do the boundaries represent?]
#v(40pt)
#only("2-")[- The intersection points of the curves]
#v(10pt)
#only("3-")[- The maximum and minimum points of the functions]
#v(10pt)
#only("4-7")[#text(fill:green)[- The limits of integration]]
#v(10pt)
#only("5-")[- The domain of the functions]

#only("1")[#voiceover("That's right, well done!. So we're considering the following question: When setting up the integral to find the area between two curves, what do the boundaries represent?")]
#only("2")[#voiceover("Do the boundaries represent the intersection points of the curves? Let's think about this.")]
#only("3")[#voiceover("Could they represent the maximum and minimum points of the functions? That doesn't seem quite right.")]
#only("4")[#voiceover("The correct answer is that the boundaries represent the limits of integration. When setting up the integral, we need to know where to start and where to end the integration.")]
#only("5")[#voiceover("The boundaries tell us these starting and ending points, which are the limits of integration.")]
#only("6")[#voiceover("They don't necessarily represent the domain of the functions, as the area we're interested in might only be a portion of the domain.")]
#only("7")[#voiceover("So, to recap, when setting up the integral to find the area between two curves, the boundaries represent the limits of integration. 📏")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#only("1-")[Let's visualize this concept with an example.]
#v(40pt)
#only("2-")[
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
x = np.linspace(-1, 3, 100)
y1 = f(x)
y2 = g(x)
plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x) = x^2')
plt.plot(x, y2, label='g(x) = x + 1')
plt.fill_between(x, y1, y2, where=(x >= 0) & (x <= 2), alpha=0.3, label='Area')
plt.xlim(-1, 3)
plt.ylim(-1, 5)
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("2")[#voiceover("Here we have two functions, $f(x) = x^2$ and $g(x) = x + 1$. The shaded region represents the area between these two curves.")]
#only("3")[#voiceover("The boundaries of the shaded region, 0 and 2 on the x-axis, are the limits of integration. They tell us where to start and end the integration when calculating the area.")]
#only("4")[#voiceover("So, when setting up the integral, we would use 0 and 2 as the lower and upper limits, respectively. 🧮")]
]