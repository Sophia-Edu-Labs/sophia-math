#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme

#slide()[
  #text(size: 30pt, weight: "bold")[Area Between Two Curves]
  #v(40pt)
  #only("1-")[- Region enclosed by two functions]
  #v(20pt)
  #only("2-")[- Calculated using integration]
  #only("1")[
    #voiceover("The area between two curves is the region that is enclosed by two functions.")
  ]
  #only("2")[
    #voiceover("This area can be calculated using integration.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Example]
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
plt.fill_between(x, y1, y2, where=(y1 >= y2), color='green', alpha=0.3)
plt.xlim(0, 2)
plt.ylim(0, 4)
plt.grid(True)
plt.legend()
plt.show()
```, width: 360pt),
        )
      ]
    ]
  ]
  #only("1")[
    #voiceover("Consider the functions f of x equals x squared and g of x equals x plus 1. The shaded region represents the area between these two curves.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Calculating the Area]
  #v(40pt)
  #only("1-")[- Find the intersection points]
  #v(20pt)
  #only("2-")[- Integrate the difference of the functions]
  #v(20pt)
  #only("3-")[$"Area" = ∫_a^b [f(x) - g(x)] dif x$]
  #only("1")[
    #voiceover("To calculate the area, first find the intersection points of the curves. These points will serve as the limits of integration.")
  ]
  #only("2")[
    #voiceover("Next, integrate the difference of the functions, with the upper function minus the lower function.")
  ]
  #only("3")[
    #voiceover("The general formula for the area is the integral from a to b of f of x minus g of x with respect to x, where a and b are the intersection points.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- Area between two curves 🌈 region enclosed by functions]
  #v(20pt)
  #only("2-")[- Calculated using integration ∫]
  #v(20pt)
  #only("3-")[- Intersection points 🔀 limits of integration]
  #only("1")[
    #voiceover("In summary, the area between two curves is the region enclosed by two functions.")
  ]
  #only("2")[
    #voiceover("This area is calculated using integration.")
  ]
  #only("3")[
    #voiceover("The intersection points of the curves serve as the limits of integration.")
  ]
]