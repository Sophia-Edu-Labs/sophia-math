#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Functions]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = 27 / x**3

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = 27 / x³')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.title('Power Function: f(x) = 27 / x³')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.grid(True)
plt.show()

```
          ,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Not quite, but let's go over the correct solution step by step. We're dealing with the power function f of x equals 27 divided by x cubed. Here's a graph of this function to help us visualize it.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Function]
  #v(40pt)
  #only("1-")[- Power function: $f(x) = 27 / x^3$ 📊]
  #v(20pt)
  #only("2-")[- We need to find $f(1/3)$ 🎯]
  #only("1")[
    #voiceover("First, let's identify our function. We have f of x equals 27 divided by x cubed. This is a power function with a negative exponent.")
  ]
  #only("2")[
    #voiceover("Our task is to find f of one-third. In other words, we need to calculate what happens when we input one-third into our function.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Substitute the Value]
  #v(40pt)
  #only("1-")[- Replace $x$ with $1/3$ in the function]
  #v(20pt)
  #only("2-")[- $f(1/3) = 27 / (1/3)^3$ 🔢]
  #only("1")[
    #voiceover("Now, let's substitute one-third for x in our function.")
  ]
  #only("2")[
    #voiceover("This gives us f of one-third equals 27 divided by one-third cubed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Simplify the Expression]
  #v(40pt)
  #only("1-")[- Simplify $(1/3)^3$]
  #v(20pt)
  #only("2-")[- $(1/3)^3 = 1/27$ 🧮]
  #v(20pt)
  #only("3-")[- $f(1/3) = 27 / (1/27)$ 🔢]
  #only("1")[
    #voiceover("Let's start by simplifying one-third cubed.")
  ]
  #only("2")[
    #voiceover("One-third cubed is equal to one divided by 27.")
  ]
  #only("3")[
    #voiceover("So now our expression becomes 27 divided by one-twenty-seventh.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Calculate the Final Result]
  #v(40pt)
  #only("1-")[- $27 / (1/27) = 27 dot 27 = 729$ 🎉]
  #v(20pt)
  #only("2-")[- Therefore, $f(1/3) = 729$]
  #only("1")[
    #voiceover("Now, let's calculate 27 divided by one-twenty-seventh. This is equivalent to 27 multiplied by 27, which equals 729.")
  ]
  #only("2")[
    #voiceover("Therefore, f of one-third equals 729.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- We started with $f(x) = 27 / x^3$ 📊]
  #v(20pt)
  #only("2-")[- We calculated $f(1/3)$ 🧮]
  #v(20pt)
  #only("3-")[- The result is $f(1/3) = 729$ 🎉]
  #only("1")[
    #voiceover("To summarize, we started with the function f of x equals 27 divided by x cubed.")
  ]
  #only("2")[
    #voiceover("We calculated f of one-third by substituting one-third for x and simplifying the expression.")
  ]
  #only("3")[
    #voiceover("The final result is that f of one-third equals 729. Great job on solving this power function problem!")
  ]
]