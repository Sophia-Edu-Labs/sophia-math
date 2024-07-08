#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Functions with Negative Coefficient]
  #v(40pt)
  #only("1-")[📊 Exploring graph transformations]
  #v(20pt)
  #only("2-")[🔍 Focus: $f(x) = a x^n$, where $a < 0$]
  #v(20pt)
  #only("3-")[❓ How does a negative 'a' affect the graph?]

  #only("1")[
    #voiceover("Welcome to our exploration of power functions! Today, we're going to investigate a fascinating property of these functions.")
  ]
  #only("2")[
    #voiceover("Specifically, we'll be looking at power functions in the form f of x equals a times x to the power of n, where a is negative.")
  ]
  #only("3")[
    #voiceover("Our main question is: How does a negative coefficient a affect the graph of a power function? Let's find out!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Effect of Negative Coefficient]
  #v(40pt)
  #only("1-")[📈 Consider: $f(x) = x^2$ vs $g(x) = -x^2$]
  #v(20pt)
  #only("2-")[
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

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x) = x²')
plt.plot(x, y2, label='g(x) = -x²')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend()
plt.title('Comparison of f(x) = x² and g(x) = -x²')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]
  #v(20pt)
  #only("3-")[🔄 Observation: Graph is reflected across x-axis]

  #only("1")[
    #voiceover("Let's start by comparing two simple power functions: f of x equals x squared, and g of x equals negative x squared.")
  ]
  #only("2")[
    #voiceover("Here's a graph showing both functions. The blue curve represents f of x equals x squared, while the orange curve represents g of x equals negative x squared.")
  ]
  #only("3")[
    #voiceover("What do you notice? The graph of g of x looks like the graph of f of x reflected across the x-axis. This reflection is the key effect of the negative coefficient!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[📉 Negative coefficient 'a' in $f(x) = a x^n$]
  #v(20pt)
  #only("2-")[🪞 Reflects graph across x-axis]
  #v(20pt)
  #only("3-")[🔑 Key transformation for power functions]

  #only("1")[
    #voiceover("To summarize, when we have a negative coefficient a in a power function f of x equals a times x to the power of n,")
  ]
  #only("2")[
    #voiceover("it causes the graph to be reflected across the x-axis.")
  ]
  #only("3")[
    #voiceover("This reflection is a key transformation for power functions, allowing us to quickly visualize how the graph will change when we introduce a negative coefficient.")
  ]
]