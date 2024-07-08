#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Evaluating Quadratic Functions]
  #v(40pt)
  #only("1-")[
    $f(x) = 3x^2 + 2x + 1$
  ]
  #v(20pt)
  #only("2-")[
    Find $f(2)$
  ]
  #only("1")[
    #voiceover("Great job! Let's walk through the solution step-by-step. We're dealing with the quadratic function f of x equals 3x squared plus 2x plus 1.")
  ]
  #only("2")[
    #voiceover("Our task is to find f of 2, which means we need to evaluate the function at x equals 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Substitute x with 2]
  #v(40pt)
  #only("1-")[
    $f(2) = 3(2)^2 + 2(2) + 1$
  ]
  #v(20pt)
  #only("2-")[
    $f(2) = 3 dot 4 + 2 dot 2 + 1$
  ]
  #only("1")[
    #voiceover("The first step is to substitute x with 2 in our function. This gives us f of 2 equals 3 times 2 squared, plus 2 times 2, plus 1.")
  ]
  #only("2")[
    #voiceover("Now, let's simplify the exponent. 2 squared is 4, so we have 3 times 4, plus 2 times 2, plus 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Multiply]
  #v(40pt)
  #only("1-")[
    $f(2) = 12 + 4 + 1$
  ]
  #v(20pt)
  #only("2-")[
    💡 Remember order of operations!
  ]
  #only("1")[
    #voiceover("Next, we'll perform the multiplications. 3 times 4 is 12, and 2 times 2 is 4. So our equation becomes 12 plus 4 plus 1.")
  ]
  #only("2")[
    #voiceover("It's important to remember the order of operations here. We always do multiplication before addition.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Add]
  #v(40pt)
  #only("1-")[
    $f(2) = 17$
  ]
  #v(20pt)
  #only("2-")[
    🎉 We've found our answer!
  ]
  #only("1")[
    #voiceover("The final step is to add these numbers together. 12 plus 4 plus 1 equals 17.")
  ]
  #only("2")[
    #voiceover("And there we have it! We've found that f of 2 equals 17. Great work solving this quadratic function!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualizing the Solution]
  #v(40pt)
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 4, 100)
y = 3*x**2 + 2*x + 1

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = 3x² + 2x + 1')
plt.plot(2, 17, 'ro', label='f(2) = 17')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Quadratic Function: f(x) = 3x² + 2x + 1')
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
    #voiceover("Here's a visual representation of our quadratic function. The blue curve shows the function f of x equals 3x squared plus 2x plus 1. The red dot highlights our solution, showing that when x is 2, f of x is indeed 17.")
  ]
]