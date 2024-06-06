#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Derivative of $f(x) = x^5$]
#v(40pt)
#only("1-")[- Power function: $f(x) = x^n$]
#v(20pt)
#only("2-")[- Derivative rule: $f'(x) = n ⋅ x^(n-1)$]
#v(20pt)
#only("3-")[- For $f(x) = x^5$: $n = 5$]
#v(20pt)
#only("4-")[- $f'(x) = 5 ⋅ x^(5-1) = 5 ⋅ x^4$]
#only("1")[
#voiceover("That's not quite right. Let's look at the correct solution for finding the derivative of the function f of x equals x to the power of 5.")
]
#only("2")[
#voiceover("To find the derivative, we use the power rule. The derivative of a power function f of x equals x to the power of n is f prime of x equals n times x to the power of n minus 1.")
]
#only("3")[
#voiceover("In our case, the function is f of x equals x to the power of 5. So n equals 5.")
]
#only("4")[
#voiceover("Applying the power rule, we get f prime of x equals 5 times x to the power of 5 minus 1, which simplifies to 5 times x to the power of 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📈]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

def f(x):
    return x**5

def f_prime(x):
    return 5*x**4

fig, ax = plt.subplots(figsize=(8, 6))
ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('center')
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

ax.plot(x, f(x), 'b', linewidth=2, label='$f(x) = x^5$')
ax.plot(x, f_prime(x), 'r', linewidth=2, label='$f\'(x) = 5x^4$')

ax.set_xlim([-2, 2])
ax.set_ylim([-10, 10])

ax.legend(loc='upper left', frameon=False)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a graph that shows both the original function f of x equals x to the power of 5 in blue, and its derivative f prime of x equals 5 times x to the power of 4 in red.")
]
#v(40pt)
#only("2-")[💡 The derivative is the slope of the tangent line at each point of the original function.]
#only("2")[
#voiceover("Remember, the derivative at each point gives the slope of the tangent line to the original function at that point.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- To find the derivative of $f(x) = x^n$, use the power rule: $f'(x) = n ⋅ x^(n-1)$]
#v(20pt)
#only("2-")[- For $f(x) = x^5$, $f'(x) = 5 ⋅ x^4$ 🎉]
#only("1")[
#voiceover("In summary, to find the derivative of a power function f of x equals x to the power of n, we use the power rule: f prime of x equals n times x to the power of n minus 1.")
]  
#only("2")[
#voiceover("So for the specific function f of x equals x to the power of 5, its derivative is f prime of x equals 5 times x to the power of 4. Well done!")
]
]