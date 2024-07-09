#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)
  #only("1-")[- Given equation: $x^2 + 4x + 4 = 0$]
  #v(20pt)
  #only("2-")[- We'll use the p-q formula: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Where $p = 4$ and $q = 4$]
  #only("1")[
    #voiceover("Great job on solving this quadratic equation! Let's go through the solution step-by-step. We start with the equation x squared plus 4x plus 4 equals zero.")
  ]
  #only("2")[
    #voiceover("To solve this, we'll use the p-q formula. This formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("3")[
    #voiceover("In our equation, p equals 4 and q equals 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Formula]
  #v(40pt)
  #only("1-")[- Step 1: $x = -4/2 ± sqrt((4/2)^2 - 4)$]
  #v(20pt)
  #only("2-")[- Step 2: $x = -2 ± sqrt(4 - 4)$]
  #v(20pt)
  #only("3-")[- Step 3: $x = -2 ± sqrt(0)$]
  #v(20pt)
  #only("4-")[- Step 4: $x = -2 ± 0$]
  #only("1")[
    #voiceover("Let's apply the formula. We substitute negative 4 over 2 for negative p over 2, and under the square root, we have 4 over 2 squared minus 4.")
  ]
  #only("2")[
    #voiceover("Simplifying, we get negative 2 plus or minus the square root of 4 minus 4.")
  ]
  #only("3")[
    #voiceover("This simplifies to negative 2 plus or minus the square root of 0.")
  ]
  #only("4")[
    #voiceover("The square root of 0 is 0, so we're left with negative 2 plus or minus 0.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Solution]
  #v(40pt)
  #only("1-")[- $x = -2 + 0$ or $x = -2 - 0$]
  #v(20pt)
  #only("2-")[- Both lead to: $x = -2$]
  #v(40pt)
  #only("3-")[💡 The equation has a single solution: $x = -2$]
  #only("1")[
    #voiceover("Now, we have x equals negative 2 plus 0, or x equals negative 2 minus 0.")
  ]
  #only("2")[
    #voiceover("Both of these lead to the same result: x equals negative 2.")
  ]
  #only("3")[
    #voiceover("This means our equation has a single solution: x equals negative 2. This is called a double root or a repeated root.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verification]
  #v(40pt)
  #only("1-")[- Let's substitute $x = -2$ into the original equation:]
  #v(20pt)
  #only("2-")[- $(-2)^2 + 4(-2) + 4 = 0$]
  #v(20pt)
  #only("3-")[- $4 - 8 + 4 = 0$]
  #v(20pt)
  #only("4-")[- $0 = 0$ ✅]
  #only("1")[
    #voiceover("To verify our solution, let's substitute x equals negative 2 back into the original equation.")
  ]
  #only("2")[
    #voiceover("We get negative 2 squared, plus 4 times negative 2, plus 4, equals 0.")
  ]
  #only("3")[
    #voiceover("This simplifies to 4 minus 8 plus 4 equals 0.")
  ]
  #only("4")[
    #voiceover("Which is indeed true: 0 equals 0. This confirms that our solution is correct!")
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

x = np.linspace(-5, 1, 100)
y = x**2 + 4*x + 4

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='y = x² + 4x + 4')
plt.axhline(y=0, color='r', linestyle='--', label='y = 0')
plt.axvline(x=-2, color='g', linestyle='--', label='x = -2')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of x² + 4x + 4 = 0')
plt.legend()
plt.grid(True)
plt.show()
        ```,
        width: 360pt),
        caption: []
      )
    ]
  ]
  #only("1")[
    #voiceover("Here's a graphical representation of our quadratic equation. The parabola touches the x-axis at exactly one point, x equals negative 2. This is another way to visualize that we have a single, repeated root.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- We solved $x^2 + 4x + 4 = 0$ using the p-q formula 📊]
  #v(20pt)
  #only("2-")[- The solution is $x = -2$ 🎯]
  #v(20pt)
  #only("3-")[- This is a special case with a double root 🔍]
  #v(20pt)
  #only("4-")[- Always verify your solution! ✅]
  #only("1")[
    #voiceover("To summarize, we solved the quadratic equation x squared plus 4x plus 4 equals 0 using the p-q formula.")
  ]
  #only("2")[
    #voiceover("We found that the solution is x equals negative 2.")
  ]
  #only("3")[
    #voiceover("This is a special case where we have a double root, meaning the parabola touches the x-axis at exactly one point.")
  ]
  #only("4")[
    #voiceover("Remember, it's always a good practice to verify your solution by substituting it back into the original equation. Great job on solving this problem!")
  ]
]