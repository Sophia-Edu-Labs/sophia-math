#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Derivative Using Sum Rule]
  #v(40pt)

  #only("1-")[
    $f(x) = 2x^3 + x^2$
  ]
  #v(20pt)

  #only("2-")[
    - Apply sum rule: $f'(x) = (2x^3)' + (x^2)'$
  ]
  #v(20pt)

  #only("3-")[
    - Differentiate each term:
      $f'(x) = 6x^2 + 2x$
  ]
  #v(20pt)

  #only("4-")[
    - Evaluate at $x = 1$:
      $f'(1) = 6(1)^2 + 2(1) = 6 + 2 = 8$
  ]

  #only("1")[
    #voiceover("That's not quite right. Let's walk through the correct solution step by step. We start with the function f of x equals 2x cubed plus x squared.")
  ]

  #only("2")[
    #voiceover("First, we apply the sum rule of derivatives. This rule states that the derivative of a sum is the sum of the derivatives. So, we can differentiate each term separately.")
  ]

  #only("3")[
    #voiceover("Now, let's differentiate each term. The derivative of 2x cubed is 6x squared, and the derivative of x squared is 2x. So, f prime of x equals 6x squared plus 2x.")
  ]

  #only("4")[
    #voiceover("Finally, we evaluate this derivative at x equals 1. We substitute 1 for x in our expression. 6 times 1 squared is 6, and 2 times 1 is 2. Adding these, we get 8. Therefore, the value of the derivative at x equals 1 is 8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Graphical Interpretation]
  #v(20pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

        import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = 2*x**3 + x**2
dy = 6*x**2 + 2*x

fig, ax = plt.subplots(figsize=(10, 6))
ax.plot(x, y, label='f(x) = 2x³ + x²')
ax.plot(x, dy, label="f'(x) = 6x² + 2x")
ax.plot(1, 8, 'ro', markersize=10, label='f\'(1) = 8')
ax.axvline(x=1, color='g', linestyle='--', label='x = 1')
ax.axhline(y=8, color='g', linestyle='--')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()
ax.grid(True)
ax.set_title('Function and its Derivative')

plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]
]

  #only("1")[
    #voiceover("Let's visualize what we've calculated. The blue curve represents our original function, f of x equals 2x cubed plus x squared. The orange curve is its derivative, f prime of x equals 6x squared plus 2x.")
  ]

  #only("2")[
    #voiceover("The red dot on the orange curve shows the point we calculated: when x is 1, the derivative equals 8. This point represents the slope of the tangent line to the original function at x equals 1.")
  ]

  #only("3")[
    #voiceover("The green dashed lines help us see this point clearly. They intersect at x equals 1 and y equals 8, confirming our calculation.")
  ]
]