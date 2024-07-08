#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Evaluating Power Functions]
  #v(40pt)
  #only("1-")[
    $f(x) = x^4$
  ]
  #v(20pt)
  #only("2-")[
    Evaluate $f(-2)$:
  ]
  #v(20pt)
  #only("3-")[
    $f(-2) = (-2)^4$
  ]
  #only("1")[
    #voiceover("Great job! Let's walk through the solution step-by-step. We're dealing with the power function f of x equals x to the fourth power.")
  ]
  #only("2")[
    #voiceover("Our task is to evaluate f of negative two.")
  ]
  #only("3")[
    #voiceover("To do this, we simply substitute negative two for x in our function.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating the Result]
  #v(40pt)
  #only("1-")[
    $f(-2) = (-2)^4$
  ]
  #v(20pt)
  #only("2-")[
    $= (-2) dot (-2) dot (-2) dot (-2)$
  ]
  #v(20pt)
  #only("3-")[
    $= 16$
  ]
  #only("1")[
    #voiceover("Now, let's calculate negative two to the fourth power.")
  ]
  #only("2")[
    #voiceover("This is equivalent to multiplying negative two by itself four times.")
  ]
  #only("3")[
    #voiceover("The result is positive sixteen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Understanding the Result]
  #v(40pt)
  #only("1-")[
    - Even powers of negative numbers are always positive 📊
  ]
  #v(20pt)
  #only("2-")[
    - $(-2)^4 = 16$
  ]
  #v(20pt)
  #only("3-")[
    - $(-2)^2 = 4$, $(-2)^4 = 16$, $(-2)^6 = 64$, ...
  ]
  #only("1")[
    #voiceover("It's important to understand why we got a positive result. Even powers of negative numbers are always positive.")
  ]
  #only("2")[
    #voiceover("In our case, negative two to the fourth power equals positive sixteen.")
  ]
  #only("3")[
    #voiceover("This pattern continues for all even powers: negative two squared is four, negative two to the fourth is sixteen, negative two to the sixth is sixty-four, and so on.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualizing Even Power Functions]
  #v(20pt)
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**4

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = x^4')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.plot(-2, 16, 'ro', markersize=10, label='f(-2) = 16')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Graph of f(x) = x^4')
plt.legend()
plt.grid(True)
plt.show()
        ```,
        width: 360pt),
      )
    ]
  ]
  #only("1")[
    #voiceover("Here's a graph of our function f of x equals x to the fourth power. Notice how the function is symmetric about the y-axis and always non-negative. The red dot shows our calculated point: when x is negative two, f of x is sixteen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[
    - For $f(x) = x^4$, we found that $f(-2) = 16$ 🎯
  ]
  #v(20pt)
  #only("2-")[
    - Even power functions always yield non-negative results 📈
  ]
  #v(20pt)
  #only("3-")[
    - Practice with different values to reinforce understanding! 💪
  ]
  #only("1")[
    #voiceover("To summarize, for our function f of x equals x to the fourth power, we found that f of negative two equals sixteen.")
  ]
  #only("2")[
    #voiceover("Remember, even power functions always yield non-negative results, regardless of whether the input is positive or negative.")
  ]
  #only("3")[
    #voiceover("To reinforce your understanding, try evaluating this function for different values. Keep up the great work!")
  ]
]