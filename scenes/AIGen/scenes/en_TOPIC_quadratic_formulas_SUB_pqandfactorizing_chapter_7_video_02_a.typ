#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)
  #only("1-")[- Given equation: $x^2 + 6x + 9 = 0$]
  #v(20pt)
  #only("2-")[- We'll use the p-q formula: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Where $p = 6$ and $q = 9$]
  
  #only("1")[
    #voiceover("Great job! You've correctly identified that x equals negative 3 is the solution. Let's walk through the solution step-by-step using the p-q formula. We start with the quadratic equation x squared plus 6x plus 9 equals 0.")
  ]
  #only("2")[
    #voiceover("To solve this, we'll use the p-q formula. This formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("3")[
    #voiceover("In our equation, p equals 6 and q equals 9.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the p-q Formula]
  #v(40pt)
  #only("1-")[- $x = -6/2 ± sqrt((6/2)^2 - 9)$]
  #v(20pt)
  #only("2-")[- $x = -3 ± sqrt(3^2 - 9)$]
  #v(20pt)
  #only("3-")[- $x = -3 ± sqrt(9 - 9)$]
  #v(20pt)
  #only("4-")[- $x = -3 ± sqrt(0)$]
  
  #only("1")[
    #voiceover("Now, let's substitute these values into our formula. We get x equals negative 6 over 2, plus or minus the square root of 6 over 2 squared minus 9.")
  ]
  #only("2")[
    #voiceover("Simplifying, we get x equals negative 3, plus or minus the square root of 3 squared minus 9.")
  ]
  #only("3")[
    #voiceover("3 squared is 9, so we have x equals negative 3, plus or minus the square root of 9 minus 9.")
  ]
  #only("4")[
    #voiceover("9 minus 9 is 0, so our equation simplifies to x equals negative 3, plus or minus the square root of 0.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Solution]
  #v(40pt)
  #only("1-")[- $x = -3 ± 0$]
  #v(20pt)
  #only("2-")[- $x = -3$]
  #v(40pt)
  #only("3-")[💡 The equation has only one solution!]
  
  #only("1")[
    #voiceover("The square root of 0 is 0, so our equation becomes x equals negative 3, plus or minus 0.")
  ]
  #only("2")[
    #voiceover("Plus or minus 0 doesn't change the value, so our final solution is x equals negative 3.")
  ]
  #only("3")[
    #voiceover("It's interesting to note that this quadratic equation has only one solution. This is because the graph of this function touches the x-axis at exactly one point, known as a tangent point.")
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

x = np.linspace(-6, 0, 100)
y = x**2 + 6*x + 9

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='$f(x) = x^2 + 6x + 9$')
plt.axhline(y=0, color='r', linestyle='--')
plt.axvline(x=-3, color='g', linestyle='--')
plt.plot(-3, 0, 'ro', markersize=10)
plt.text(-3.5, -1, '(-3, 0)', fontsize=12)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of $f(x) = x^2 + 6x + 9$')
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
    #voiceover("Here's a graph of our quadratic function. As you can see, the parabola touches the x-axis at exactly one point: negative 3, 0. This point is where x equals negative 3, confirming our algebraic solution.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- We solved $x^2 + 6x + 9 = 0$ using the p-q formula 📊]
  #v(20pt)
  #only("2-")[- The solution is $x = -3$ ✅]
  #v(20pt)
  #only("3-")[- This quadratic equation has only one solution 🎯]
  
  #only("1")[
    #voiceover("To summarize, we solved the quadratic equation x squared plus 6x plus 9 equals 0 using the p-q formula.")
  ]
  #only("2")[
    #voiceover("We found that the solution is x equals negative 3.")
  ]
  #only("3")[
    #voiceover("Importantly, we discovered that this quadratic equation has only one solution, which corresponds to the point where the parabola touches the x-axis. Great work on solving this problem!")
  ]
]