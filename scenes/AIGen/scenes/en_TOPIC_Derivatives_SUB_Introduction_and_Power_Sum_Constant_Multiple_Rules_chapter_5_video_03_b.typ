#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Rule Application]
  #v(40pt)

  #only("1-")[- Given function: $f(x) = 7x^6$]
  #v(20pt)
  #only("2-")[- Power Rule: $dif/dif x (x^n) = n dot x^(n-1)$]
  #v(20pt)
  #only("3-")[- $f'(x) = 7 dot 6x^5 = 42x^5$]
  #v(20pt)
  #only("4-")[- Evaluate at $x = 2$: $f'(2) = 42 dot 2^5$]
  #v(20pt)
  #only("5-")[- $f'(2) = 42 dot 32 = 1344$]

  #only("1")[
    #voiceover("That's not quite right. Let's go through the correct solution step by step. We start with the given function f of x equals 7 times x to the sixth power.")
  ]

  #only("2")[
    #voiceover("To find the derivative, we'll use the Power Rule. This rule states that the derivative of x to the n-th power is n times x to the power of n minus 1.")
  ]

  #only("3")[
    #voiceover("Applying this to our function, we get f prime of x equals 7 times 6 times x to the fifth power, which simplifies to 42 times x to the fifth power.")
  ]

  #only("4")[
    #voiceover("Now, we need to evaluate this at x equals 2. So we substitute 2 for x, giving us 42 times 2 to the fifth power.")
  ]

  #only("5")[
    #voiceover("2 to the fifth power is 32, so our final calculation is 42 times 32, which equals 1344.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualization of $f(x)$ and $f'(x)$]
  #v(20pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 1000)
f = 7 * x**6
f_prime = 42 * x**5

fig, ax = plt.subplots(figsize=(10, 6))

ax.plot(x, f, label='f(x) = 7x^6', color='blue')
ax.plot(x, f_prime, label="f'(x) = 42x^5", color='red')
ax.axvline(x=2, color='green', linestyle='--', label='x = 2')
ax.axhline(y=1344, color='purple', linestyle=':', label="f'(2) = 1344")

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('f(x) and its derivative')
ax.legend()
ax.grid(True)

plt.show()
        ```,
        width: 360pt
      ),
    )
  ]]

  #only("1")[
    #voiceover("Here's a visualization of our function f of x in blue and its derivative f prime of x in red. The green dashed line shows where x equals 2, and the purple dotted line shows the value of the derivative at this point, which is 1344.")
  ]

  #only("2")[
    #voiceover("Notice how steep the derivative is at x equals 2. This reflects the rapid rate of change of the original function at this point.")
  ]

  #only("3")[
    #voiceover("This visualization helps us understand why the derivative value is so large at x equals 2. The original function is growing very quickly at this point, leading to a steep slope and thus a large derivative value.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[- Power Rule is crucial for polynomial derivatives 📊]
  #v(20pt)
  #only("2-")[- Careful application of the rule leads to correct results 🎯]
  #v(20pt)
  #only("3-")[- Visualization helps understand the meaning of derivatives 📈]

  #only("1")[
    #voiceover("Let's summarize what we've learned. First, the Power Rule is a crucial tool for finding derivatives of polynomial functions.")
  ]

  #only("2")[
    #voiceover("Second, careful application of this rule, step by step, leads us to the correct result. Always double-check your work!")
  ]

  #only("3")[
    #voiceover("Finally, visualizing the function and its derivative can help us understand what the derivative actually means in terms of the rate of change of the original function.")
  ]
]