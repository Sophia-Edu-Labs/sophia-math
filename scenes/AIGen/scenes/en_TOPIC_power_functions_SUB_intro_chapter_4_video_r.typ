#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Power Functions with Negative Exponents 📉]
  #v(40pt)
  #only("1-")[- Recall: Power functions have form $f(x) = x^b$ 🔢]
  #only("2-")[- What happens when $b < 0$? 🤔]
  #only("3-")[- Let's review their behavior and properties 🔍]

  #only("1")[
    #voiceover("Let's review power functions with negative exponents. We'll start by recalling that power functions have the general form f of x equals x to the power of b.")
  ]
  #only("2")[
    #voiceover("But what happens when b is less than zero? This is an interesting case that leads to some unique properties.")
  ]
  #only("3")[
    #voiceover("Let's review the behavior and properties of these functions with negative exponents.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Negative Exponents and Reciprocals 🔄]
  #v(40pt)
  #only("1-")[- For $b < 0$, $f(x) = x^b = 1/(x^(-b))$ 🔀]
  #v(20pt)
  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0.1, 5, 1000)
y1 = x**(-2)
y2 = 1/(x**2)

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='$x^{-2}$', color='blue')
plt.plot(x, y2, label='$1/x^2$', color='red', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Comparison of $x^{-2}$ and $1/x^2$')
plt.legend()
plt.grid(True)
plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]

  #only("1")[
    #voiceover("When b is negative, we can rewrite our power function in a special way. For any negative b, x to the power of b is equal to 1 divided by x to the power of negative b.")
  ]
  #only("2")[
    #voiceover("Let's visualize this with an example. Here, we've plotted y equals x to the power of negative 2 in blue, and y equals 1 divided by x squared in red. As we can see, these functions are identical, confirming our equation.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Properties of Negative Power Functions 📊]
  #v(40pt)
  #only("1-")[- Domain: All real numbers except 0 ❌0️⃣]
  #only("2-")[- Range: All positive real numbers 📈]
  #only("3-")[- As $x$ increases, $f(x)$ decreases 📉]
  #only("4-")[- Asymptotes: $x = 0$ and $y = 0$ 📊]

  #only("1")[
    #voiceover("Let's review some key properties of power functions with negative exponents. First, the domain of these functions includes all real numbers except zero.")
  ]
  #only("2")[
    #voiceover("The range of these functions consists of all positive real numbers.")
  ]
  #only("3")[
    #voiceover("An important characteristic is that as x increases, f of x decreases. This gives these functions their distinctive shape.")
  ]
  #only("4")[
    #voiceover("Finally, these functions have two asymptotes: one at x equals zero, and another at y equals zero.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Recap: Negative Power Functions 🔁]
  #v(40pt)
  #only("1-")[- $f(x) = x^b$ where $b < 0$ 📉]
  #only("2-")[- Equivalent to reciprocal functions: $f(x) = 1/(x^(-b))$ 🔄]
  #only("3-")[- Decreasing functions with vertical and horizontal asymptotes 📊]
  #only("4-")[- Important in various applications (e.g., physics, economics) 🌍]

  #only("1")[
    #voiceover("Let's recap what we've reviewed about power functions with negative exponents. These are functions of the form f of x equals x to the power of b, where b is less than zero.")
  ]
  #only("2")[
    #voiceover("We've seen that these functions are equivalent to reciprocal functions, where f of x equals 1 divided by x to the power of negative b.")
  ]
  #only("3")[
    #voiceover("They are decreasing functions with both vertical and horizontal asymptotes, giving them their characteristic shape.")
  ]
  #only("4")[
    #voiceover("Understanding these functions is crucial as they appear in various real-world applications, from physics to economics.")
  ]
]