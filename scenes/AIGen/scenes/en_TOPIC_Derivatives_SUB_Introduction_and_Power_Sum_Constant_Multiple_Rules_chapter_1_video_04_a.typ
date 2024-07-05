#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Rule for Derivatives]
  #v(40pt)

  #only("1-")[- Function: $f(x) = 4x^5$]
  #v(20pt)
  #only("2-")[- Power Rule: $dif/dif x (x^n) = n x^(n-1)$]
  #v(20pt)
  #only("3-")[- Derivative: $f'(x) = 4 dot 5x^4$]
  #v(20pt)
  #only("4-")[- At $x = 1$: $f'(1) = 4 dot 5 dot 1^4 = 20$]

  #only("1")[
    #voiceover("Great job! You got the correct answer. Let's walk through the solution step-by-step. We start with the function f of x equals 4 x to the fifth power.")
  ]

  #only("2")[
    #voiceover("To find the derivative, we'll use the Power Rule. This rule states that the derivative of x to the n-th power is n times x to the power of n minus 1.")
  ]

  #only("3")[
    #voiceover("Applying this rule to our function, we get f prime of x equals 4 times 5 x to the fourth power. The 4 comes out front as a constant, and 5 is the new coefficient from the power rule.")
  ]

  #only("4")[
    #voiceover("Now, we need to evaluate this at x equals 1. Plugging in 1 for x, we get 4 times 5 times 1 to the fourth power. Since any number to the power of 4 is just itself, this simplifies to 4 times 5, which equals 20.")
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

x = np.linspace(-1, 1.5, 1000)
y = 4 * x**5
dy = 20 * x**4

fig, ax = plt.subplots(figsize=(10, 6))

ax.plot(x, y, label='f(x) = 4x^5', color='blue')
ax.plot(x, dy, label="f'(x) = 20x^4", color='red')
ax.plot([1], [20], 'ro', markersize=10, label="f'(1) = 20")

ax.axhline(y=0, color='k', linestyle='--', linewidth=0.5)
ax.axvline(x=0, color='k', linestyle='--', linewidth=0.5)

ax.set_xlim(-1, 1.5)
ax.set_ylim(-5, 25)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()
ax.grid(True, linestyle=':', alpha=0.7)

plt.title('Function and its Derivative')
plt.tight_layout()
plt.show()
        ```,
        width: 360pt
      ),
      caption: [],
    )
  ]
]

  #only("1")[
    #voiceover("Let's visualize what we've calculated. The blue curve represents our original function, f of x equals 4 x to the fifth power. The red curve shows its derivative, f prime of x equals 20 x to the fourth power.")
  ]

  #only("2")[
    #voiceover("Notice the red dot on the derivative curve at x equals 1. This point has a y-value of 20, which is exactly what we calculated for f prime of 1.")
  ]

  #only("3")[
    #voiceover("This graph helps us understand that the derivative at a point represents the slope of the tangent line to the original function at that point. At x equals 1, this slope is 20.")
  ]
]