Here's the Typst-video for Chapter 2: The Newton Method Formula, Video 1:

#import "../sophiatheme.typ": * //apply theme (and default setup)
#show: sophia-theme

#slide()[
  #only("1")[
    #voiceover("Let's derive the formula for the Newton Method, which is used to find the roots of a function.")
  ]
  The Newton Method Formula
  #v(40pt)
  #only("2-")[
    - Find roots of a function
    - Iterative method
  ]
  #only("2")[
    #voiceover("The Newton Method is an iterative method, meaning it starts with an initial guess and improves it step by step.")
  ]
]

#slide()[
  #only("1")[
    #voiceover("We start with a function f(x) and an initial guess x_0.")
  ]
  #text(size: 30pt, weight: "bold")[Derivation]
  #v(40pt)
  #only("1-")[
    - Function: $f(x)$
    - Initial guess: $x_0$
  ]
  #only("2")[
    #voiceover("The goal is to find the root of f(x), which is the x-value where f(x) = 0.")
  ]
  #only("3")[
    #voiceover("To improve our guess, we use the tangent line at the current point (x_n, f(x_n)).")
  ]
  #only("4")[
    #voiceover("The slope of the tangent line is given by the derivative f'(x_n).")
  ]
  #only("5")[
    #voiceover("The equation of the tangent line is:")
  ]
  #only("5-")[
    $y - f(x_n) = f'(x_n)(x - x_n)$
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Derivation (cont.)]
  #v(40pt)
  #only("1")[
    #voiceover("We want to find where the tangent line intersects the x-axis, so we set y = 0:")
  ]
  #only("1-")[
    $0 - f(x_n) = f'(x_n)(x - x_n)$
  ]
  #only("2")[
    #voiceover("Solving for x gives us the next guess, x_(n+1):")
  ]
  #only("3-")[
    $x_(n+1) = x_n - f(x_n) / f'(x_n)$
  ]
  #only("3")[
    #voiceover("This is the Newton Method formula. It tells us how to improve our guess at each step.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Visualization]
  #only("1")[
    #voiceover("Let's visualize the process.")
  ]
  #v(60pt)
  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**3 - 3*x**2 + 4

x = np.linspace(-2, 4, 100)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x)')
plt.plot([-2, 4], [0, 0], color='red', linestyle='--', label='Tangent')
plt.scatter([2], [0], color='black', label='P(2, 0)')
plt.scatter([2], [0], color='red')  # Adding red dot at x=2, y=0
plt.xlim(-2, 4)
plt.ylim(-5, 10)
plt.grid(True)
plt.legend()
plt.show()
          ```, width: 360pt),
        )
      ]
    ]
  ]
  #only("2")[
    #voiceover("The red line is the tangent at the current point, and the red dot is where it intersects the x-axis, giving us the next guess.")
  ]
]

#slide()[
  #only("1")[
    #voiceover("In summary, the Newton Method formula is:")
  ]
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("2-")[
    $x_(n+1) = x_n - f(x_n) / f'(x_n)$
  ]
  #only("2")[
    #voiceover("It allows us to iteratively improve our guess for the root of a function.")
  ]
  #only("3")[
    #voiceover("The method converges quickly when the initial guess is close to the root.")
  ]
  #only("4")[
    #voiceover("However, it may diverge if the initial guess is too far from the root or if the derivative is close to zero.")
  ]
]