#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Derivative of Polynomial Functions]
  #v(40pt)

  #only("1-")[
    Given function: $f(x) = 4x^4 + 2x^3$
  ]

  #v(20pt)

  #only("2-")[
    Step 1: Apply the power rule
    - $f'(x) = 16x^3 + 6x^2$
  ]

  #v(20pt)

  #only("3-")[
    Step 2: Evaluate at $x = 1$
    - $f'(1) = 16(1)^3 + 6(1)^2$
  ]

  #v(20pt)

  #only("4-")[
    Step 3: Simplify
    - $f'(1) = 16 + 6 = 22$
  ]

  #only("1")[
    #voiceover("Great job! You got the correct answer. Let's walk through the solution step by step. We start with the given function f of x equals 4x to the fourth plus 2x cubed.")
  ]

  #only("2")[
    #voiceover("First, we apply the power rule to each term. For 4x to the fourth, we multiply by the exponent 4 and reduce the power by 1, giving us 16x cubed. For 2x cubed, we multiply by 3 and reduce the power to 2, giving us 6x squared. So, the derivative f prime of x equals 16x cubed plus 6x squared.")
  ]

  #only("3")[
    #voiceover("Next, we need to evaluate this derivative at x equals 1. We substitute 1 for x in our derivative expression.")
  ]

  #only("4")[
    #voiceover("Finally, we simplify. 16 times 1 cubed is just 16, and 6 times 1 squared is 6. Adding these together, we get 22. Therefore, the value of the derivative at x equals 1 is 22.")
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

def f(x):
    return 4*x**4 + 2*x**3

def f_prime(x):
    return 16*x**3 + 6*x**2

x = np.linspace(-1, 2, 1000)
y = f(x)
y_prime = f_prime(x)

fig, ax = plt.subplots(figsize=(10, 6))

ax.plot(x, y, label='f(x) = 4x⁴ + 2x³')
ax.plot(x, y_prime, label="f'(x) = 16x³ + 6x²")
ax.plot(1, f_prime(1), 'ro', markersize=10, label="f'(1) = 22")

ax.set_xlim(-1, 2)
ax.set_ylim(-5, 30)
ax.axhline(y=0, color='k', linestyle='--')
ax.axvline(x=0, color='k', linestyle='--')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()
ax.grid(True)

plt.title("Function and its Derivative")
plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]
]

#only("1")[
  #voiceover("Let's visualize our solution. This graph shows both the original function f of x in blue and its derivative f prime of x in orange. The red dot indicates the point we calculated: when x is 1, the derivative equals 22.")
]

#only("2")[
  #voiceover("Notice how the derivative function is always positive in this range, which corresponds to the original function always increasing. The steeper the original function, the higher the value of its derivative.")
]

#only("3")[
  #voiceover("This graphical representation helps us understand the relationship between a function and its derivative. The derivative at a point gives us the slope of the tangent line to the original function at that point.")
]]