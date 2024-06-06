#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions Recap]

#only("1-")[
- Form: $f(x) = x^n$, $n ∈ NN$
]

#only("1")[
#voiceover("Power functions are functions of the form f of x equals x to the power of n, where n is a natural number.")
]

#only("2-")[
- Examples: $x^2$, $x^3$, $x^4$, ...
]

#only("2")[
#voiceover("Some examples of power functions are x squared, x cubed, x to the fourth power, and so on.")
]

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

plt.figure(figsize=(8, 6))

for n in [2, 3, 4]:
    y = x**n
    plt.plot(x, y, label=f'$x^{n}$')

plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Power Functions')
plt.legend()
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.show()
```,
width: 360pt),
)
]
]

#only("3")[
#voiceover("Here's a plot showing some power functions. Notice how they all pass through the point (1, 1) and get steeper as the power increases.")
]

#only("4-")[
- Even powers: symmetric about y-axis 📈
- Odd powers: symmetric about origin 🔄
]

#only("4")[
#voiceover("Even power functions, like x squared, are symmetric about the y-axis. Odd power functions, like x cubed, are symmetric about the origin.")
]

#only("5-")[
- As $x → ±∞$, $f(x) → ±∞$ 🚀
]

#only("5")[
#voiceover("As x approaches positive or negative infinity, the value of the power function also approaches positive or negative infinity.")
]

#only("6-")[
- Derivative: $f'(x) = n x^(n-1)$ 📉
]

#only("6")[
#voiceover("The derivative of a power function is n times x to the power of n minus 1.")
]

#only("7-")[
- Integral: $∫x^n dif x = (x^(n+1))/(n+1) + C$ 📈
]

#only("7")[
#voiceover("The integral of a power function is x to the power of n plus 1, divided by n plus 1, plus a constant C.")
]
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#only("1-")[
- Power functions: $f(x) = x^n$, $n ∈ NN$ 💪
- Even powers symmetric about y-axis, odd about origin 🔍
- Approach ±∞ as $x → ±∞$ 📈
- Derivative: $f'(x) = n x^(n-1)$ 📉
- Integral: $∫x^n dif x = (x^(n+1))/(n+1) + C$ 📊
]

#only("1")[
#voiceover("To summarize, power functions are of the form f of x equals x to the power of n, where n is a natural number. Even powers are symmetric about the y-axis, odd powers about the origin. They approach positive or negative infinity as x approaches positive or negative infinity. The derivative is n times x to the power of n minus 1, and the integral is x to the power of n plus 1, divided by n plus 1, plus a constant C.")
]

]