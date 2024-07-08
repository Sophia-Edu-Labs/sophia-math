#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Function Evaluation]
  #v(40pt)
  #only("1-")[- Given: $f(x) = -5x^4$]
  #v(20pt)
  #only("2-")[- Find: $f(2)$]
  #v(20pt)
  #only("3-")[- Step 1: Substitute $x$ with 2]
  #v(20pt)
  #only("4-")[- Step 2: Calculate the result]

  #only("1")[
    #voiceover("Great job! Let's walk through the solution step-by-step. We're dealing with a power function f of x equals negative five times x to the fourth power.")
  ]
  #only("2")[
    #voiceover("We need to find the value of f of 2, which means we need to evaluate the function at x equals 2.")
  ]
  #only("3")[
    #voiceover("Our first step is to substitute x with 2 in our function.")
  ]
  #only("4")[
    #voiceover("Then, we'll calculate the result.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Substitution and Calculation]
  #v(40pt)
  #only("1-")[- $f(2) = -5(2)^4$]
  #v(20pt)
  #only("2-")[- $f(2) = -5 dot 16$]
  #v(20pt)
  #only("3-")[- $f(2) = -80$]

  #only("1")[
    #voiceover("Let's substitute 2 for x in our function. We get f of 2 equals negative five times 2 to the fourth power.")
  ]
  #only("2")[
    #voiceover("Now, let's calculate 2 to the fourth power. 2 to the fourth is 16. So our equation becomes negative five times 16.")
  ]
  #only("3")[
    #voiceover("Finally, we multiply negative five by 16. Negative five times 16 equals negative 80.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The value of $f(2)$ is $-80$]]
  #v(40pt)
  #only("2-")[💡 Remember: Order of operations is crucial!]

  #only("1")[
    #voiceover("So, our final answer is that f of 2 equals negative 80.")
  ]
  #only("2")[
    #voiceover("Remember, in problems like this, the order of operations is crucial. Always calculate the exponent before multiplication!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualizing the Function]
  #v(20pt)
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = -5 * x**4

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = -5x^4')
plt.scatter(2, -80, color='red', s=100, label='f(2) = -80')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Graph of f(x) = -5x^4')
plt.legend()
plt.grid(True)
plt.show()
        ```,
        width: 360pt),
      )
    ]
  ]

  #only("1")[
    #voiceover("Here's a visualization of our function f of x equals negative five x to the fourth power. The red dot shows the point we calculated, f of 2, which equals negative 80. Notice how the function decreases rapidly as x moves away from zero in either direction.")
  ]
]