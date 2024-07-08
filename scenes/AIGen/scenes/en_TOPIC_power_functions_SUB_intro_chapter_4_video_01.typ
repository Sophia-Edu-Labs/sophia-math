#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Functions with Negative Exponents]
  #v(40pt)
  #only("1-")[📊 Exploring a new type of function]
  #v(20pt)
  #only("2-")[🔄 Reciprocal relationship]
  #v(20pt)
  #only("3-")[💡 Example: $f(x) = x^(-2)$]
  #v(20pt)
  #only("4-")[🧮 Connection to division]

  #only("1")[
    #voiceover("Welcome to our exploration of power functions with negative exponents! Today, we'll uncover how these functions behave and why they're important in mathematics.")
  ]
  #only("2")[
    #voiceover("Power functions with negative exponents have a special property: they represent reciprocal functions. But what does that mean exactly?")
  ]
  #only("3")[
    #voiceover("Let's consider an example. Imagine we have the function f of x equals x to the power of negative 2. How would this function behave?")
  ]
  #only("4")[
    #voiceover("To understand this, we need to recall a fundamental rule of exponents related to division. This connection will help us grasp the concept of reciprocal functions.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Understanding Reciprocal Functions]
  #v(40pt)
  #only("1-")[📐 Definition: $f(x) = 1/x^n$, where $n > 0$]
  #v(20pt)
  #only("2-")[🔢 Example: $f(x) = x^(-2) = 1/x^2$]
  #v(20pt)
  #only("3-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 1000)
y = 1 / (x**2)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = 1/x²')
plt.title('Graph of f(x) = x⁻²')
plt.xlabel('x')
plt.ylabel('y')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.ylim(0, 5)
plt.legend()
plt.grid(True)
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("A reciprocal function is defined as f of x equals one divided by x to the power of n, where n is a positive number. This form helps us understand the behavior of power functions with negative exponents.")
  ]
  #only("2")[
    #voiceover("Let's return to our example: f of x equals x to the power of negative 2. Using the definition of reciprocal functions, we can rewrite this as f of x equals one divided by x squared.")
  ]
  #only("3")[
    #voiceover("Here's a graph of our function. Notice how it approaches infinity as x gets close to zero from both sides, and how it approaches zero as x gets very large or very small. This shape is characteristic of reciprocal functions with even exponents.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Recap: Power Functions with Negative Exponents]
  #v(40pt)
  #only("1-")[🔄 Represent reciprocal functions]
  #v(20pt)
  #only("2-")[📊 Graph approaches ∞ near x = 0]
  #v(20pt)
  #only("3-")[🧮 $x^(-n) = 1/x^n$, where $n > 0$]
  #v(20pt)
  #only("4-")[💡 Important in various mathematical applications]

  #only("1")[
    #voiceover("To recap, power functions with negative exponents represent reciprocal functions.")
  ]
  #only("2")[
    #voiceover("Their graphs have a characteristic shape, approaching infinity near x equals zero.")
  ]
  #only("3")[
    #voiceover("We can always rewrite x to the power of negative n as one divided by x to the power of n, where n is positive.")
  ]
  #only("4")[
    #voiceover("Understanding these functions is crucial in many areas of mathematics and science, from physics to economics. They help us model situations where quantities have inverse relationships.")
  ]
]