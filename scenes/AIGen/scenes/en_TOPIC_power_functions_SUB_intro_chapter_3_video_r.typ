#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Power Functions with Negative $a$ 📉]
  #v(40pt)
  #only("1-")[- Power functions: $f(x) = a x^n$ 🔢]
  #only("2-")[- Focus on negative coefficient $a$ 🔍]
  #only("3-")[- Effect on graph shape 🔄]

  #only("1")[
    #voiceover("Let's review power functions with a negative coefficient a. We'll start by recalling the general form of a power function.")
  ]
  #only("2")[
    #voiceover("In this review, we're focusing specifically on what happens when the coefficient a is negative.")
  ]
  #only("3")[
    #voiceover("We'll see how this negative coefficient affects the shape of the graph.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Effect of Negative $a$ 🔄]
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
y1 = x**2
y2 = -x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='$f(x) = x^2$', color='blue')
plt.plot(x, y2, label='$g(x) = -x^2$', color='red')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend(fontsize=12)
plt.title('Effect of Negative Coefficient', fontsize=16)
plt.xlabel('x', fontsize=14)
plt.ylabel('y', fontsize=14)
plt.grid(True)
plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]
  #v(20pt)
  #only("2-")[- Negative $a$ reflects graph across x-axis 🪞]
  #only("3-")[- Shape remains the same, orientation changes ↕️]

  #only("1")[
    #voiceover("Let's compare two power functions: f of x equals x squared, and g of x equals negative x squared.")
  ]
  #only("2")[
    #voiceover("As we can see, the negative coefficient a reflects the graph across the x-axis.")
  ]
  #only("3")[
    #voiceover("Notice that the overall shape of the function remains the same, but its orientation changes. The parabola that opened upward now opens downward.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary: Negative $a$ in Power Functions 📝]
  #v(40pt)
  #only("1-")[- Negative $a$ reflects graph across x-axis 🪞]
  #only("2-")[- Shape preserved, orientation flipped ↕️]
  #only("3-")[- Example: $f(x) = x^2$ vs $g(x) = -x^2$ 📊]
  #only("4-")[- Applies to all power functions 🔢]

  #only("1")[
    #voiceover("To recap, when the coefficient a in a power function is negative, it reflects the graph across the x-axis.")
  ]
  #only("2")[
    #voiceover("This reflection preserves the overall shape of the function but flips its orientation.")
  ]
  #only("3")[
    #voiceover("We saw this with our example of f of x equals x squared versus g of x equals negative x squared.")
  ]
  #only("4")[
    #voiceover("Remember, this principle applies to all power functions, regardless of the exponent.")
  ]
]