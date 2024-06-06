#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the behavior of power functions as x approaches zero.")
]
#text(size: 30pt, weight: "bold")[Power Functions as $x→0$]
// The title "Power Functions as x→0" is shown on this slide
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Define the power functions
def f1(x):
    return x**2
def f2(x):
    return x**3
def f3(x):
    return x**4

# Generate x values close to zero
x = np.linspace(-1, 1, 1000)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, f1(x), label='$f(x) = x^2$')
plt.plot(x, f2(x), label='$f(x) = x^3$')
plt.plot(x, f3(x), label='$f(x) = x^4$')

# Add annotations
plt.annotate('$(0, 0)$', xy=(0, 0), xytext=(-0.2, 0.1), fontsize=14, 
             arrowprops=dict(arrowstyle="->", connectionstyle="arc3"))

# Improve aesthetics
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.axhline(0, color='grey', lw=1)
plt.axvline(0, color='grey', lw=1)
plt.legend(fontsize=14)
plt.title('Power Functions as $x→0$', fontsize=16)
plt.xlabel('$x$', fontsize=14)
plt.ylabel('$f(x)$', fontsize=14)
plt.xlim(-1, 1)
plt.ylim(-0.5, 1)

plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows the graphs of power functions x^2, x^3, and x^4 as x approaches zero. All functions converge to the point (0, 0). This figure is shown from slide 2 onward.
#only("2")[
#voiceover("As x approaches zero, the value of a power function f of x equals x to the n, where n is a natural number, also approaches zero.")
]

#v(40pt)

#only("3-")[- As $x→0$, $f(x)=x^n→0$ for $n∈ℕ$]
// The key point is shown in bullet form from slide 3 onward

#only("3")[#voiceover("This is true for any natural number n. The graphs of various power functions with different natural number exponents all converge to the point zero, zero as x approaches zero.")]

#only("4-")[🎯 All power functions with natural exponents converge to $(0,0)$ as $x→0$]
// The main takeaway is shown with an emoji from slide 4 onward

#only("4")[#voiceover("So the key takeaway is that all power functions with natural number exponents converge to the point zero, zero as x approaches zero.")]

]