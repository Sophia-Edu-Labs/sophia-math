#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Function with Negative Coefficient]
  #v(40pt)
  #only("1-")[
    $f(x) = -2x^3$
  ]
  #v(20pt)
  #only("2-")[
    Find: $f(3)$
  ]
  #only("1")[
    #voiceover("Let's go through the correct solution step by step for this problem. We're dealing with a power function f of x equals negative two times x cubed.")
  ]
  #only("2")[
    #voiceover("Our task is to find the value of f of 3, which means we need to evaluate the function at x equals 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Substitute x with 3]
  #v(40pt)
  #only("1-")[
    $f(3) = -2(3)^3$
  ]
  #v(20pt)
  #only("2-")[
    💡 Remember: Parentheses are important!
  ]
  #only("1")[
    #voiceover("The first step is to substitute x with 3 in our function. This gives us f of 3 equals negative two times 3 cubed.")
  ]
  #only("2")[
    #voiceover("It's important to use parentheses here to ensure we cube 3 before multiplying by negative two.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Evaluate the Exponent]
  #v(40pt)
  #only("1-")[
    $f(3) = -2(27)$
  ]
  #v(20pt)
  #only("2-")[
    $3^3 = 3 dot 3 dot 3 = 27$
  ]
  #only("1")[
    #voiceover("Now, let's evaluate 3 cubed. 3 cubed equals 27, so our expression becomes negative two times 27.")
  ]
  #only("2")[
    #voiceover("Remember, 3 cubed means 3 times 3 times 3, which equals 27.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Multiply]
  #v(40pt)
  #only("1-")[
    $f(3) = -54$
  ]
  #v(20pt)
  #only("2-")[
    Final Answer: $-54$
  ]
  #only("1")[
    #voiceover("The last step is to multiply negative two by 27. Negative two times 27 equals negative 54.")
  ]
  #only("2")[
    #voiceover("Therefore, our final answer is that f of 3 equals negative 54.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualization]
  #v(20pt)
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = -2 * x**3

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = -2x³')
plt.axhline(y=0, color='k', linestyle='--', linewidth=0.5)
plt.axvline(x=0, color='k', linestyle='--', linewidth=0.5)
plt.plot(3, -54, 'ro', markersize=10, label='f(3) = -54')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Graph of f(x) = -2x³')
plt.legend()
plt.grid(True)
plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]]
  #only("1")[
    #voiceover("Here's a visualization of our function f of x equals negative two x cubed. The red dot shows the point we calculated, where x is 3 and f of x is negative 54. Notice how the function decreases rapidly as x increases, due to the negative coefficient and the cube power.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- Function: $f(x) = -2x^3$ 📊]
  #v(20pt)
  #only("2-")[- Evaluated at $x = 3$ 🎯]
  #v(20pt)
  #only("3-")[- Result: $f(3) = -54$ 🎉]
  #only("1")[
    #voiceover("To summarize, we started with the function f of x equals negative two x cubed.")
  ]
  #only("2")[
    #voiceover("We evaluated this function at x equals 3.")
  ]
  #only("3")[
    #voiceover("And we found that f of 3 equals negative 54. Great job solving this power function problem!")
  ]
]