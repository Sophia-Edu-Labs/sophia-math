#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Quadratic Equations 📊]
  #v(40pt)
  #only("1-")[- Quadratic equations model many real-world scenarios 🌍]
  #only("2-")[- They have a specific form and unique graph shape 📈]
  #only("3-")[- Let's recap their key features 🔑]

  #only("1")[
    #voiceover("Let's review quadratic equations. These equations are crucial in modeling various real-world scenarios.")
  ]
  #only("2")[
    #voiceover("They have a specific form and create a unique graph shape when plotted.")
  ]
  #only("3")[
    #voiceover("We'll recap their key features to reinforce our understanding.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Form of Quadratic Equations]
  #v(40pt)
  #only("1-")[General form: $a x^2 + b x + c = 0$]
  #v(20pt)
  #only("2-")[Where:]
  #only("3-")[- $a ≠ 0$ (coefficient of $x^2$)]
  #only("4-")[- $b$ (coefficient of $x$)]
  #only("5-")[- $c$ (constant term)]

  #only("1")[
    #voiceover("Let's review the general form of a quadratic equation. It's written as a x squared plus b x plus c equals zero.")
  ]
  #only("2")[
    #voiceover("In this equation:")
  ]
  #only("3")[
    #voiceover("a is the coefficient of x squared and must not be zero, as this is what makes the equation quadratic.")
  ]
  #only("4")[
    #voiceover("b is the coefficient of x,")
  ]
  #only("5")[
    #voiceover("and c is the constant term.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Graph of Quadratic Equations]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = x**2 - 2*x - 3

fig, ax = plt.subplots()
ax.plot(x, y, label='$f(x) = x^2 - 2x - 3$')
ax.axhline(y=0, color='k', linestyle='--')
ax.axvline(x=0, color='k', linestyle='--')
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()
ax.grid(True)
ax.set_title('Parabola: Graph of a Quadratic Equation')

plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]
  #v(20pt)
  #only("2-")[- Shape: Parabola 🛝]
  #only("3-")[- Opens upward if $a > 0$, downward if $a < 0$]
  #only("4-")[- Vertex: Highest or lowest point]

  #only("1")[
    #voiceover("When we graph a quadratic equation, we get a distinctive shape called a parabola. Here's an example of what it looks like.")
  ]
  #only("2")[
    #voiceover("The graph of every quadratic equation is a parabola, which looks like a U-shape or an inverted U-shape.")
  ]
  #only("3")[
    #voiceover("The parabola opens upward if a is positive, and downward if a is negative.")
  ]
  #only("4")[
    #voiceover("The vertex of the parabola represents either the highest or lowest point of the graph, depending on whether the parabola opens downward or upward.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Quadratic equation: $a x^2 + b x + c = 0$ ($a ≠ 0$)]
  #only("2-")[- Graph: Parabola 🛝]
  #only("3-")[- Real-world applications: Projectile motion, optimization 🚀]
  #only("4-")[- Solving methods: Factoring, quadratic formula 🧮]

  #only("1")[
    #voiceover("To recap, a quadratic equation has the form a x squared plus b x plus c equals zero, where a is not equal to zero.")
  ]
  #only("2")[
    #voiceover("Its graph is always a parabola.")
  ]
  #only("3")[
    #voiceover("Quadratic equations have many real-world applications, such as modeling projectile motion or solving optimization problems.")
  ]
  #only("4")[
    #voiceover("We can solve quadratic equations using methods like factoring or the quadratic formula, which we'll explore in more detail in future lessons.")
  ]
]