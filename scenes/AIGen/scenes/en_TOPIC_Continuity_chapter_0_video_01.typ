#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Functions]
#v(40pt)
#only("1-")[- Describe behavior as input approaches a value]
#v(20pt)
#only("2-")[- Example: $lim_(x->2) f(x) = 4$]
#v(20pt)
#only("3-")[- Notation: $lim_(x->a) f(x) = L$]
#only("1")[
#voiceover("The limit of a function describes how the function behaves as the input value gets closer and closer to a certain point.")
]
#only("2")[
#voiceover("For example, if the limit of f of x as x approaches 2 equals 4, it means that as x gets arbitrarily close to 2, the function value f of x gets arbitrarily close to 4.")
]
#only("3")[
#voiceover("In general, we write 'the limit of f of x as x approaches a equals L' to denote that the function f of x gets arbitrarily close to the value L as x gets arbitrarily close to a.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Limits]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return (x**2 - 4) / (x - 2)

x = np.linspace(-1, 5, 100)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', label='f(x)')
plt.axhline(y=4, color='red', linestyle='--', label='y = 4')
plt.axvline(x=2, color='green', linestyle='--', label='x = 2')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Limit of f(x) as x approaches 2')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's visualize this concept. Here, we have a function f of x equals x squared minus 4 over x minus 2. As x approaches 2, marked by the green line, the function values, shown by the blue curve, approach 4, marked by the red line. This is what we mean when we say 'the limit of f of x as x approaches 2 is 4'.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Important Points]
#v(40pt)
#only("1-")[- Limits describe local behavior 🔍]
#v(20pt)
#only("2-")[- Function need not be defined at the point 🚫]
#v(20pt)
#only("3-")[- Limits from left and right must agree ⬅➡]
#only("1")[
#voiceover("It's important to note that limits describe the local behavior of a function near a point. They don't necessarily tell us anything about the function value at that exact point.")
]
#only("2")[
#voiceover("In fact, a function doesn't even need to be defined at a point for the limit at that point to exist.")
]
#only("3")[
#voiceover("However, for the limit to exist, the function must approach the same value whether we approach the point from the left or from the right.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Limits describe local behavior of functions 📈]
#v(20pt)
#only("2-")[- Notation: $lim_(x->a) f(x) = L$]
#v(20pt)
#only("3-")[- Key to understanding continuity and derivatives 🔑]
#only("1")[
#voiceover("In summary, limits are a fundamental concept in calculus that describe the local behavior of a function as the input approaches a certain value.")
]
#only("2")[
#voiceover("We denote this using the notation 'the limit of f of x as x approaches a equals L'.")
]
#only("3")[
#voiceover("Understanding limits is key to understanding other important calculus concepts like continuity and derivatives.")
]
]