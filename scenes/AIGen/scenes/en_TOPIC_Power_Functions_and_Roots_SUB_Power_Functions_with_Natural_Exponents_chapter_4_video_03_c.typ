#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavior as $x$ Approaches Zero]
#v(40pt)
#only("1-")[- Consider $f(x) = x^7$ as $x$ approaches zero 🔍]
#only("2-")[- As $x$ gets closer to zero, $x^7$ gets closer to zero too]
#only("3-")[- Example: $0.1^7 = 0.0000001$, $0.01^7 = 0.0000000001$ 🧮]
#only("4-")[- In the limit: $lim_(x->0) x^7 = 0$ ✅]
#only("1")[
#voiceover("That's not quite right. Let's look at the correct solution. We're considering the function f of x equals x to the power of 7 and we want to know what happens as x approaches zero.")
]
#only("2")[
#voiceover("As x gets closer and closer to zero, x to the power of 7 also gets closer and closer to zero.")
]
#only("3")[
#voiceover("For example, 0.1 to the power of 7 is 0.0000001, and 0.01 to the power of 7 is 0.0000000001. As x gets smaller, x to the power of 7 gets much smaller.")
]
#only("4")[
#voiceover("In the limit, as x approaches 0, x to the power of 7 approaches 0. We write this as the limit of x to the power of 7 as x approaches 0 equals 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-1, 1, 1000)
y = x**7

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y, linewidth=2, color='blue', label='$f(x) = x^7$')
ax.set_xlabel('$x$', fontsize=14)
ax.set_ylabel('$f(x)$', fontsize=14)
ax.set_title('Graph of $f(x) = x^7$', fontsize=16)
ax.grid(True, linestyle='--', alpha=0.7)
ax.axhline(0, color='black', linewidth=0.8)
ax.axvline(0, color='black', linewidth=0.8)

# Highlighting the behavior near zero
ax.set_xlim(-0.5, 0.5)
ax.set_ylim(-0.01, 0.01)

# Adding arrow and text
ax.annotate('As $x$ approaches 0,\n$f(x)$ approaches 0',
            xy=(0, 0), xycoords='data',
            xytext=(0.2, 0.002), textcoords='data',
            arrowprops=dict(arrowstyle='->',
                            connectionstyle="arc3"),
            fontsize=12, ha='center')

ax.legend(fontsize=12)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a graph of the function f of x equals x to the power of 7. Notice how as x gets close to 0, the function value also gets very close to 0, just as we discussed. The arrow on the graph highlights this behavior - as x approaches 0, f of x also approaches 0.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- For power functions $f(x) = x^n$ with $n$ > 0:]
#only("2-")[    - As $x$ approaches 0, $f(x)$ also approaches 0 📉]
#only("3-")[    - The larger $n$ is, the faster $f(x)$ approaches 0 🏃‍♂️💨]
#only("4-")[- This behavior is due to the properties of exponents 🔢]
#only("1")[
#voiceover("In general, for power functions f of x equals x to the power of n where n is positive, we see this same behavior.")
]
#only("2")[
#voiceover("As x approaches 0, f of x also approaches 0.")
]
#only("3")[
#voiceover("Moreover, the larger n is, the faster f of x approaches 0 as x approaches 0.")
]
#only("4")[
#voiceover("This behavior stems from the fundamental properties of exponents. Great work on this problem! You've got a solid understanding of the behavior of power functions near zero.")
]
]