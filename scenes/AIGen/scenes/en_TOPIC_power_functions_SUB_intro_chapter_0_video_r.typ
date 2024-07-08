#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Quadratic Functions 📊]
  #v(40pt)
  #only("1-")[- Modeling real-world scenarios 🌍]
  #only("2-")[- Parabolic shapes in nature and engineering 🏗️]
  #only("3-")[- Let's recap the standard form 📝]

  #only("1")[
    #voiceover("Let's review quadratic functions, which are essential for modeling various real-world scenarios.")
  ]
  #only("2")[
    #voiceover("These functions create parabolic shapes that we often see in nature and engineering, like the path of a projectile or the shape of satellite dishes.")
  ]
  #only("3")[
    #voiceover("Let's recap the standard form of quadratic functions.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Standard Form]
  #v(40pt)
  #only("1-")[
    #align(center)[
      $f(x) = a x^2 + b x + c$
    ]
  ]
  #v(20pt)
  #only("2-")[- $a$: leading coefficient (≠ 0) 🔑]
  #only("3-")[- $b$: linear coefficient]
  #only("4-")[- $c$: constant term]

  #only("1")[
    #voiceover("The standard form of a quadratic function is f of x equals a x squared plus b x plus c.")
  ]
  #only("2")[
    #voiceover("Here, a is the leading coefficient. It's crucial to note that a cannot be zero, as this would make the function linear instead of quadratic.")
  ]
  #only("3")[
    #voiceover("b is the linear coefficient, which affects the position of the parabola's axis of symmetry.")
  ]
  #only("4")[
    #voiceover("And c is the constant term, which determines where the parabola intersects the y-axis.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualizing Quadratic Functions]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y1 = x**2
y2 = 2*x**2
y3 = -0.5*x**2 + 2*x + 1

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='$f(x) = x^2$')
plt.plot(x, y2, label='$g(x) = 2x^2$')
plt.plot(x, y3, label='$h(x) = -0.5x^2 + 2x + 1$')

plt.title('Different Quadratic Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')

plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]
  
  #only("1")[
    #voiceover("Let's visualize some quadratic functions. The blue parabola represents f of x equals x squared, which is our basic quadratic function. The orange curve shows g of x equals 2 x squared, where a larger a value makes the parabola narrower. The green curve represents h of x equals negative 0.5 x squared plus 2x plus 1, demonstrating how negative a values flip the parabola and how b and c shift its position.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Standard form: $f(x) = a x^2 + b x + c$ 📊]
  #only("2-")[- $a$ determines opening direction and width 🔍]
  #only("3-")[- $b$ and $c$ affect position 📍]
  #only("4-")[- Versatile for modeling various phenomena 🌟]

  #only("1")[
    #voiceover("To summarize, we've reviewed that quadratic functions have the standard form f of x equals a x squared plus b x plus c.")
  ]
  #only("2")[
    #voiceover("The coefficient a determines whether the parabola opens upward or downward and how wide it is.")
  ]
  #only("3")[
    #voiceover("The coefficients b and c affect the position of the parabola on the coordinate plane.")
  ]
  #only("4")[
    #voiceover("Understanding these components allows us to use quadratic functions to model a wide variety of real-world phenomena, from projectile motion to optimization problems.")
  ]
]