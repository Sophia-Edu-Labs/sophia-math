#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Functions with Negative Exponents]
  #v(40pt)
  #only("1-")[- Function: $f(x) = 3 / x^2$]
  #v(20pt)
  #only("2-")[- Goal: Find $f(2)$]
  #v(20pt)
  #only("3-")[- Step-by-step solution 🔍]

  #only("1")[
    #voiceover("Great job on tackling this question! Let's break down the solution step by step. We're dealing with a power function that has a negative exponent.")
  ]
  #only("2")[
    #voiceover("Our function is f of x equals 3 divided by x squared. We need to find the value of f of 2, which means we need to evaluate the function when x equals 2.")
  ]
  #only("3")[
    #voiceover("Let's solve this problem step by step.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Substitute x with 2]
  #v(40pt)
  #only("1-")[- $f(2) = 3 / 2^2$]
  #v(20pt)
  #only("2-")[- Replace x with 2 in the original function]

  #only("1")[
    #voiceover("Our first step is to substitute x with 2 in our function. So, f of 2 equals 3 divided by 2 squared.")
  ]
  #only("2")[
    #voiceover("This is a crucial step in evaluating functions. We always replace the variable, in this case x, with the given value, which is 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Evaluate the Denominator]
  #v(40pt)
  #only("1-")[- $2^2 = 2 dot 2 = 4$]
  #v(20pt)
  #only("2-")[- $f(2) = 3 / 4$]

  #only("1")[
    #voiceover("Next, let's evaluate the denominator. 2 squared is equal to 2 times 2, which gives us 4.")
  ]
  #only("2")[
    #voiceover("So now our expression simplifies to 3 divided by 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Simplify the Fraction]
  #v(40pt)
  #only("1-")[- $3 / 4 = 0.75$]
  #v(20pt)
  #only("2-")[- Final answer: $f(2) = 0.75$ or $3/4$]

  #only("1")[
    #voiceover("Our final step is to simplify the fraction. 3 divided by 4 is equal to 0.75 in decimal form.")
  ]
  #only("2")[
    #voiceover("Therefore, our final answer is that f of 2 equals 0.75, or if we prefer to keep it as a fraction, 3 over 4.")
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

x = np.linspace(0.1, 4, 100)
y = 3 / x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y, 'b-', label='f(x) = 3/x²')
plt.plot(2, 0.75, 'ro', markersize=10, label='f(2) = 0.75')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Graph of f(x) = 3/x²')
plt.legend()
plt.grid(True)
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.text(2.1, 0.8, '(2, 0.75)', fontsize=12)
plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]]
  #v(20pt)
  #only("1")[
    #voiceover("Here's a visualization of our function f of x equals 3 divided by x squared. The red dot shows the point we calculated, f of 2, which is at the coordinates 2 comma 0.75. This graph helps us see how the function behaves and confirms our calculation.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)
  #only("1-")[- For $f(x) = 3 / x^2$, $f(2) = 3/4$ or $0.75$ 📊]
  #v(20pt)
  #only("2-")[- Steps: Substitute, evaluate, simplify 🔢]
  #v(20pt)
  #only("3-")[- Visualizing helps understand function behavior 📈]

  #only("1")[
    #voiceover("Let's recap what we've learned. For the function f of x equals 3 divided by x squared, we found that f of 2 equals 3 over 4 or 0.75.")
  ]
  #only("2")[
    #voiceover("We followed three main steps: substituting the value, evaluating the expression, and simplifying the result.")
  ]
  #only("3")[
    #voiceover("Finally, visualizing the function helps us understand its behavior and confirms our calculation. Great job on solving this problem!")
  ]
]