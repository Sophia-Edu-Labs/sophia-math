#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Even and Odd Power Functions]
  #v(40pt)
  
  #only("1-")[📊 Power functions: $f(x) = x^n$]
  #v(20pt)
  #only("2-")[🔢 $n$ can be even or odd]
  #v(20pt)
  #only("3-")[🔄 Different symmetries and behaviors]
  #v(20pt)
  #only("4-")[🤔 Why does this matter?]

  #only("1")[
    #voiceover("Let's explore an interesting aspect of power functions. Power functions are functions of the form f of x equals x to the power of n.")
  ]
  #only("2")[
    #voiceover("The exponent n in a power function can be either even or odd. This simple difference leads to some fascinating properties.")
  ]
  #only("3")[
    #voiceover("Depending on whether n is even or odd, these functions exhibit different symmetries and behaviors. This affects how they look on a graph and how they behave mathematically.")
  ]
  #only("4")[
    #voiceover("You might wonder why this matters. Well, understanding these differences is crucial in many areas of mathematics and its applications. It helps us predict function behavior, solve equations, and model real-world phenomena more accurately.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Even Power Functions]
  #v(40pt)
  
  #only("1-")[📐 Example: $f(x) = x^2$]
  #v(20pt)
  #only("2-")[🪞 Symmetric about y-axis]
  #v(20pt)
  #only("3-")[↕️ U-shaped parabola]
  #v(20pt)
  #only("4-")[➕ Always non-negative]

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

plt.plot(x, y)
plt.title('f(x) = x²')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's start with even power functions. A simple example is f of x equals x squared.")
  ]
  #only("2")[
    #voiceover("One key characteristic of even power functions is that they're symmetric about the y-axis. This means if you fold the graph along the y-axis, both sides will perfectly overlap.")
  ]
  #only("3")[
    #voiceover("As we can see in the graph, an even power function like x squared forms a U-shaped parabola.")
  ]
  #only("4")[
    #voiceover("Another important property is that even power functions are always non-negative for real inputs. This means their graphs never go below the x-axis.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Odd Power Functions]
  #v(40pt)
  
  #only("1-")[📏 Example: $f(x) = x^3$]
  #v(20pt)
  #only("2-")[🔄 Rotationally symmetric]
  #v(20pt)
  #only("3-")[↗️↘️ S-shaped curve]
  #v(20pt)
  #only("4-")[➕➖ Can be positive or negative]

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

plt.plot(x, y)
plt.title('f(x) = x³')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Now, let's look at odd power functions. A common example is f of x equals x cubed.")
  ]
  #only("2")[
    #voiceover("Odd power functions have rotational symmetry. If you rotate the graph 180 degrees around the origin, it will look the same.")
  ]
  #only("3")[
    #voiceover("As we can see in the graph, an odd power function like x cubed forms an S-shaped curve.")
  ]
  #only("4")[
    #voiceover("Unlike even power functions, odd power functions can be both positive and negative. Their graphs pass through both the upper right and lower left quadrants.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  
  #only("1-")[📊 Power functions: $f(x) = x^n$]
  #v(20pt)
  #only("2-")[🔢 Even $n$: symmetric, U-shaped, non-negative]
  #v(20pt)
  #only("3-")[🔢 Odd $n$: rotational symmetry, S-shaped, pos/neg]
  #v(20pt)
  #only("4-")[🧠 Understanding these differences is crucial!]

  #only("1")[
    #voiceover("To summarize, we've explored power functions of the form f of x equals x to the power of n.")
  ]
  #only("2")[
    #voiceover("When n is even, the function is symmetric about the y-axis, forms a U-shaped graph, and is always non-negative.")
  ]
  #only("3")[
    #voiceover("When n is odd, the function has rotational symmetry, forms an S-shaped graph, and can be both positive and negative.")
  ]
  #only("4")[
    #voiceover("Understanding these differences is crucial for analyzing function behavior, solving equations, and modeling real-world phenomena. In our next lessons, we'll dive deeper into how these properties affect differentiation and other mathematical operations.")
  ]
]