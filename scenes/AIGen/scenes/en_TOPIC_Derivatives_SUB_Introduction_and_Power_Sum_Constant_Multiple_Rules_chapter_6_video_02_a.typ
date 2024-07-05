#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Sum Rule for Derivatives]
  #v(40pt)

  #only("1-")[
    $f(x) = x^2 + 3x$
  ]

  #v(20pt)

  #only("2-")[
    $f'(x) = (x^2)' + (3x)'$
  ]

  #v(20pt)

  #only("3-")[
    $f'(x) = 2x + 3$
  ]

  #only("1")[
    #voiceover("Great job! You've correctly applied the sum rule for derivatives. Let's break down the solution step by step.")
  ]

  #only("2")[
    #voiceover("We start with the function f of x equals x squared plus 3x. To find its derivative, we apply the sum rule, which states that the derivative of a sum is the sum of the derivatives. So, we can differentiate each term separately.")
  ]

  #only("3")[
    #voiceover("Now, let's differentiate each term. The derivative of x squared is 2x, and the derivative of 3x is simply 3. Adding these together, we get f prime of x equals 2x plus 3, which is our final answer.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualizing the Derivative]
  #v(20pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**2 + 3*x
y2 = 2*x + 3

fig, ax = plt.subplots(figsize=(10, 6))

ax.plot(x, y1, label='f(x) = x² + 3x', color='blue')
ax.plot(x, y2, label="f'(x) = 2x + 3", color='red')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Function and its Derivative')
ax.legend()
ax.grid(True)

plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]
]

#only("1")[
  #voiceover("Let's visualize our function and its derivative. The blue curve represents our original function, f of x equals x squared plus 3x. The red line represents its derivative, f prime of x equals 2x plus 3.")
]

#only("2")[
  #voiceover("Notice how the derivative is a straight line, while the original function is a parabola. This is because the derivative of a quadratic function is always a linear function.")
]

#only("3")[
  #voiceover("Also, observe that where the blue curve has a minimum, the red line crosses the x-axis. This illustrates a key property: at the minimum point of a function, its derivative equals zero.")
]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Key Points]
  #v(40pt)

  #only("1-")[- Sum Rule: $(f(x) + g(x))' = f'(x) + g'(x)$ 📏]
  #v(20pt)
  #only("2-")[- Power Rule: $(x^n)' = n x^(n-1)$ 🔢]
  #v(20pt)
  #only("3-")[- Constant Multiple Rule: $(c x)' = c$ 🔀]

  #only("1")[
    #voiceover("Let's recap the key points. First, we used the sum rule, which states that the derivative of a sum is the sum of the derivatives.")
  ]

  #only("2")[
    #voiceover("We also applied the power rule to differentiate x squared. The power rule says that the derivative of x to the n is n times x to the n minus 1.")
  ]

  #only("3")[
    #voiceover("Finally, we used the constant multiple rule, which states that the derivative of a constant times x is simply the constant.")
  ]
]