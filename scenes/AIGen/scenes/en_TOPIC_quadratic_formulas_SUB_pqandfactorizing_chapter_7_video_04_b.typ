#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)
  #only("1-")[- Equation: $x^2 + 2x - 8 = 0$]
  #v(20pt)
  #only("2-")[- Using p-q formula: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Where $p = 2$ and $q = -8$]
  #only("1")[
    #voiceover("Not quite, but let's go through the correct solution step-by-step. We start with the equation x squared plus 2x minus 8 equals zero.")
  ]
  #only("2")[
    #voiceover("To solve this, we'll use the p-q formula. This formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("3")[
    #voiceover("In our equation, p equals 2 and q equals negative 8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Formula]
  #v(40pt)
  #only("1-")[- $x = -2/2 ± sqrt((2/2)^2 - (-8))$]
  #v(20pt)
  #only("2-")[- $x = -1 ± sqrt(1 + 8)$]
  #v(20pt)
  #only("3-")[- $x = -1 ± sqrt(9)$]
  #v(20pt)
  #only("4-")[- $x = -1 ± 3$]
  #only("1")[
    #voiceover("Now, let's plug these values into our formula. We get x equals negative 2 over 2, plus or minus the square root of 2 over 2 squared minus negative 8.")
  ]
  #only("2")[
    #voiceover("Simplifying, we get x equals negative 1, plus or minus the square root of 1 plus 8.")
  ]
  #only("3")[
    #voiceover("This simplifies to x equals negative 1, plus or minus the square root of 9.")
  ]
  #only("4")[
    #voiceover("The square root of 9 is 3, so we end up with x equals negative 1, plus or minus 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Solution]
  #v(40pt)
  #only("1-")[- $x = -1 + 3$ or $x = -1 - 3$]
  #v(20pt)
  #only("2-")[- $x = 2$ or $x = -4$]
  #v(40pt)
  #only("3-")[🎉 Solution: $x = -4$ or $x = 2$]
  #only("1")[
    #voiceover("Now we can solve for our two solutions. We have x equals negative 1 plus 3, or x equals negative 1 minus 3.")
  ]
  #only("2")[
    #voiceover("Simplifying, we get x equals 2, or x equals negative 4.")
  ]
  #only("3")[
    #voiceover("Therefore, our final solution is x equals negative 4 or x equals 2. Well done on solving this quadratic equation using the p-q formula!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Graphical Representation]
  #v(20pt)
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 3, 100)
y = x**2 + 2*x - 8

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='$f(x) = x^2 + 2x - 8$')
plt.axhline(y=0, color='r', linestyle='--', label='y = 0')
plt.axvline(x=-4, color='g', linestyle=':', label='x = -4')
plt.axvline(x=2, color='g', linestyle=':', label='x = 2')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Quadratic Function $f(x) = x^2 + 2x - 8$')
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
    #voiceover("Here's a graphical representation of our quadratic function. The parabola crosses the x-axis at two points: negative 4 and 2. These are our solutions, where the function equals zero.")
  ]
]