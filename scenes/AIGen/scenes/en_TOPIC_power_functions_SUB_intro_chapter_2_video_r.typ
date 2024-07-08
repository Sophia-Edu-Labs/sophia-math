#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Even and Odd Power Functions 📊]
  #v(40pt)
  #only("1-")[- Power functions: $f(x) = x^n$ where $n$ is an integer 🔢]
  #only("2-")[- Even powers: $n$ is even (e.g., 2, 4, 6, ...) 🔄]
  #only("3-")[- Odd powers: $n$ is odd (e.g., 1, 3, 5, ...) ↔️]
  #only("1")[
    #voiceover("Let's review power functions and their symmetry properties. A power function is of the form f of x equals x to the power of n, where n is an integer.")
  ]
  #only("2")[
    #voiceover("When n is even, meaning it's a number like 2, 4, 6, and so on, we call it an even power function.")
  ]
  #only("3")[
    #voiceover("When n is odd, like 1, 3, 5, and so on, we call it an odd power function.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Symmetry of Even Power Functions 🔄]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**2

fig, ax = plt.subplots()
ax.plot(x, y, label='$f(x) = x^2$')
ax.axvline(x=0, color='k', linestyle='--')
ax.axhline(y=0, color='k', linestyle='--')
ax.legend()
ax.set_title('Even Power Function: $f(x) = x^2$')
ax.set_xlabel('x')
ax.set_ylabel('y')
plt.grid(True)
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]
  #v(20pt)
  #only("2-")[- Symmetric about y-axis 🪞]
  #only("3-")[- $f(-x) = f(x)$ for all $x$]
  #only("1")[
    #voiceover("Let's look at an example of an even power function, f of x equals x squared.")
  ]
  #only("2")[
    #voiceover("Notice how the graph is symmetric about the y-axis. This means if we were to fold the graph along the y-axis, the two halves would perfectly overlap.")
  ]
  #only("3")[
    #voiceover("Mathematically, we express this symmetry as f of negative x equals f of x for all x. This means that for any x value, the function gives the same output whether we input x or negative x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Symmetry of Odd Power Functions ↔️]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**3

fig, ax = plt.subplots()
ax.plot(x, y, label='$f(x) = x^3$')
ax.axvline(x=0, color='k', linestyle='--')
ax.axhline(y=0, color='k', linestyle='--')
ax.legend()
ax.set_title('Odd Power Function: $f(x) = x^3$')
ax.set_xlabel('x')
ax.set_ylabel('y')
plt.grid(True)
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]
  #v(20pt)
  #only("2-")[- Symmetric about origin (0,0) 🎯]
  #only("3-")[- $f(-x) = -f(x)$ for all $x$]
  #only("1")[
    #voiceover("Now, let's review an odd power function, f of x equals x cubed.")
  ]
  #only("2")[
    #voiceover("Observe that this graph is symmetric about the origin, point (0,0). If we were to rotate the graph 180 degrees around the origin, it would look exactly the same.")
  ]
  #only("3")[
    #voiceover("Mathematically, we express this symmetry as f of negative x equals negative f of x for all x. This means that for any x value, the function output for negative x is the negative of the output for x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Even power functions: symmetric about y-axis 🔄]
  #only("2-")[- Odd power functions: symmetric about origin ↔️]
  #only("3-")[- Even: $f(-x) = f(x)$, Odd: $f(-x) = -f(x)$ 🧮]
  #only("4-")[- Symmetry helps in graphing and understanding function behavior 📊]
  #only("1")[
    #voiceover("To recap, even power functions are symmetric about the y-axis,")
  ]
  #only("2")[
    #voiceover("while odd power functions are symmetric about the origin.")
  ]
  #only("3")[
    #voiceover("For even functions, f of negative x equals f of x, and for odd functions, f of negative x equals negative f of x.")
  ]
  #only("4")[
    #voiceover("Understanding these symmetry properties helps us graph these functions more easily and understand their behavior across the entire real number line.")
  ]
]