#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Excellent work! You've correctly identified the power function. Let's break down the solution step by step.")
]

#text(size: 30pt, weight: "bold")[Power Function with Negative Coefficient]

#v(40pt)

#only("2-")[#text()[$ f(x) = -5x^2 $]]

#only("2")[
#voiceover("We're looking at the power function f of x equals negative five times x squared.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding the Components]

#v(40pt)

#only("1-")[- Coefficient ($a$): $-5$]
#v(20pt)
#only("2-")[- Variable ($x$)]
#v(20pt)
#only("3-")[- Exponent ($b$): $2$]

#only("1")[
#voiceover("Let's break down the components of our function. First, we have the coefficient a, which is negative five.")
]

#only("2")[
#voiceover("Next, we have our variable x.")
]

#only("3")[
#voiceover("Finally, we have the exponent b, which is 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verifying the Solution]

#v(40pt)

#only("1-")[1. Negative coefficient ✅]
#v(20pt)
#only("2-")[2. Passes through (1, -5) ❓]
#v(20pt)
#only("3-")[3. Exponent $b = 2$ ✅]

#only("1")[
#voiceover("Now, let's verify if our function meets all the requirements. First, we can see that the coefficient is indeed negative, which satisfies our first condition.")
]

#only("2")[
#voiceover("Next, we need to check if the function passes through the point (1, -5).")
]

#only("3")[
#voiceover("Lastly, we can confirm that the exponent b is equal to 2, as required.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Checking the Point (1, -5)]

#v(40pt)

#only("1-")[$ f(1) = -5 dot (1)^2 $]
#v(20pt)
#only("2-")[$ f(1) = -5 dot 1 $]
#v(20pt)
#only("3-")[$ f(1) = -5 $]

#only("1")[
#voiceover("Let's verify if our function passes through the point (1, -5). We'll do this by plugging x equals 1 into our function. So, f of 1 equals negative five times one squared.")
]

#only("2")[
#voiceover("One squared is just one, so we're left with negative five times one.")
]

#only("3")[
#voiceover("This simplifies to negative five, which is indeed the y-coordinate of our point. So our function does pass through the point (1, -5).")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Function]

#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = -5 * x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = -5x²')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.plot(1, -5, 'ro', label='(1, -5)')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of f(x) = -5x²')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
caption: [Graph of $f(x) = -5x^2$]
)
]
]

#only("1")[
#voiceover("Here's a visual representation of our function. As we can see, it's a parabola that opens downward due to the negative coefficient. The red dot represents the point (1, -5), which our function passes through.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Function: $ f(x) = -5x^2 $ 📊]
#v(20pt)
#only("2-")[- Negative coefficient: $a = -5$ ➖]
#v(20pt)
#only("3-")[- Passes through (1, -5) ✅]
#v(20pt)
#only("4-")[- Exponent $b = 2$ 🔢]

#only("1")[
#voiceover("To summarize, our power function f of x equals negative five x squared meets all the required conditions.")
]

#only("2")[
#voiceover("It has a negative coefficient of negative five,")
]

#only("3")[
#voiceover("passes through the point (1, -5),")
]

#only("4")[
#voiceover("and has an exponent b equal to 2. Well done on solving this problem!")
]
]