#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Function Evaluation]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0.1, 5, 100)
y = 10 / x

plt.figure(figsize=(8, 6))
plt.plot(x, y, 'b-', label='f(x) = 10/x')
plt.axvline(x=2, color='r', linestyle='--', label='x = 2')
plt.axhline(y=5, color='g', linestyle='--', label='y = 5')
plt.plot(2, 5, 'ro', markersize=10)
plt.text(2.1, 5.1, '(2, 5)', fontsize=12)

plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of f(x) = 10/x')
plt.legend()
plt.grid(True)
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step-by-step. We're dealing with the power function f of x equals 10 divided by x. Our task is to find f of 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Function]
  #v(40pt)
  #only("1-")[- Given: $f(x) = 10 / x$]
  #v(20pt)
  #only("2-")[- This is a power function with negative exponent]
  #only("1")[
    #voiceover("First, let's identify our function. We're given that f of x equals 10 divided by x.")
  ]
  #only("2")[
    #voiceover("This is actually a power function with a negative exponent. We could rewrite it as 10 times x to the power of negative 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Evaluate at x = 2]
  #v(40pt)
  #only("1-")[- We need to find $f(2)$]
  #v(20pt)
  #only("2-")[- Substitute $x$ with $2$ in the function]
  #v(20pt)
  #only("3-")[- $f(2) = 10 / 2$]
  #only("1")[
    #voiceover("Now, we need to find f of 2. This means we're looking for the value of the function when x equals 2.")
  ]
  #only("2")[
    #voiceover("To do this, we substitute x with 2 in our function.")
  ]
  #only("3")[
    #voiceover("So, f of 2 equals 10 divided by 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate the Result]
  #v(40pt)
  #only("1-")[- $f(2) = 10 / 2 = 5$]
  #v(20pt)
  #only("2-")[💡 The result is 5]
  #only("1")[
    #voiceover("Let's calculate this. 10 divided by 2 equals 5.")
  ]
  #only("2")[
    #voiceover("Therefore, the value of f of 2 is 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Interpretation]
  #v(40pt)
  #only("1-")[- When $x = 2$, $f(x) = 5$]
  #v(20pt)
  #only("2-")[- On the graph, this is the point $(2, 5)$]
  #v(20pt)
  #only("3-")[🔍 This point is where the vertical line $x = 2$ intersects the function]
  #only("1")[
    #voiceover("Let's interpret this result. When x equals 2, f of x equals 5.")
  ]
  #only("2")[
    #voiceover("On the graph of the function, this corresponds to the point 2 comma 5.")
  ]
  #only("3")[
    #voiceover("You can see this point where the vertical line x equals 2 intersects with our function.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- For the function $f(x) = 10 / x$]
  #v(20pt)
  #only("2-")[- We found that $f(2) = 5$]
  #v(20pt)
  #only("3-")[🎉 Well done on solving this power function problem!]
  #only("1")[
    #voiceover("To summarize, for the function f of x equals 10 divided by x,")
  ]
  #only("2")[
    #voiceover("we found that f of 2 equals 5.")
  ]
  #only("3")[
    #voiceover("Well done on solving this power function problem! Remember, practice makes perfect when dealing with these types of functions.")
  ]
]