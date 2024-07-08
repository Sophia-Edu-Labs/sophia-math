#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Functions]
  #v(40pt)
  #only("1-")[- Function: $f(x) = 4x^3$ 📊]
  #v(20pt)
  #only("2-")[- Task: Find $f(2)$ 🔍]
  #only("1")[
    #voiceover("Not quite, but no worries! Let's walk through the correct solution step-by-step. We're dealing with a power function f of x equals 4 times x cubed.")
  ]
  #only("2")[
    #voiceover("Our task is to find the value of f of 2, which means we need to calculate what happens when we input 2 into our function.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Substitute x with 2]
  #v(40pt)
  #only("1-")[- $f(2) = 4(2)^3$ 🔢]
  #v(20pt)
  #only("2-")[- Remember: $(2)^3 = 2 × 2 × 2$ 🧮]
  #only("1")[
    #voiceover("The first step is to substitute x with 2 in our function. This gives us f of 2 equals 4 times 2 cubed.")
  ]
  #only("2")[
    #voiceover("Remember, 2 cubed means 2 multiplied by itself three times, or 2 times 2 times 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate the Exponent]
  #v(40pt)
  #only("1-")[- $(2)^3 = 2 × 2 × 2 = 8$ 📈]
  #v(20pt)
  #only("2-")[- $f(2) = 4 × 8$ ✖️]
  #only("1")[
    #voiceover("Let's calculate 2 cubed first. 2 times 2 times 2 equals 8.")
  ]
  #only("2")[
    #voiceover("Now our equation looks like f of 2 equals 4 times 8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Final Calculation]
  #v(40pt)
  #only("1-")[- $f(2) = 4 × 8 = 32$ 🎉]
  #v(20pt)
  #only("2-")[- Therefore, $f(2) = 32$ ✅]
  #only("1")[
    #voiceover("The final step is to multiply 4 by 8. 4 times 8 equals 32.")
  ]
  #only("2")[
    #voiceover("Therefore, we've found that f of 2 equals 32. That's our final answer!")
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

x = np.linspace(-2, 2, 100)
y = 4 * x**3

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = 4x³')
plt.scatter(2, 32, color='red', s=100, label='f(2) = 32')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Power Function: f(x) = 4x³')
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
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
    #voiceover("Here's a visual representation of our power function. The red dot shows the point we calculated, where x is 2 and f of x is 32. Notice how the function curves upward rapidly due to the cubic term.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- Power function: $f(x) = 4x^3$ 📊]
  #v(20pt)
  #only("2-")[- We found: $f(2) = 32$ 🎯]
  #v(20pt)
  #only("3-")[- Steps: Substitute, Calculate, Multiply 🔢]
  #only("1")[
    #voiceover("To summarize, we started with the power function f of x equals 4 x cubed.")
  ]
  #only("2")[
    #voiceover("We found that when x equals 2, f of 2 equals 32.")
  ]
  #only("3")[
    #voiceover("We did this by substituting 2 for x, calculating 2 cubed, and then multiplying by 4. Great work on solving this power function problem!")
  ]
]