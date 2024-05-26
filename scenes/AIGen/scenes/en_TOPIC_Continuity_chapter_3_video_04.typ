#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity Recap]
#v(40pt)
#only("1-")[- A function $f$ is continuous at a point $a$ if:]
#v(20pt)
#only("2-")[  1. $f(a)$ is defined]
#v(10pt)
#only("3-")[  2. $lim_(x->a) f(x)$ exists]
#v(10pt)
#only("4-")[  3. $lim_(x->a) f(x) = f(a)$]
#only("1")[
#voiceover("Let's recap the concept of continuity. A function f is continuous at a point a if three conditions are met:")
]
#only("2")[
#voiceover("First, the function value at a, denoted as f of a, must be defined.")
]
#only("3")[
#voiceover("Second, the limit of the function f as x approaches a must exist.")
]
#only("4")[
#voiceover("And third, this limit must be equal to the function value at a, that is, the limit of f of x as x approaches a equals f of a.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Continuity]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.sin(x)

x = np.linspace(-2*np.pi, 2*np.pi, 1000)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', label='f(x) = sin(x)')
plt.scatter(0, 0, color='red', s=100, label='f(0) = 0')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Continuous Function')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of a continuous function, the sine function. Notice how the function is defined everywhere, and there are no breaks or gaps in the graph. The red dot represents the point (0, f(0)), and we can see that the limit of the function as x approaches 0 is equal to the function value at 0, which is 0.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Continuity and Limits]
#v(40pt)
#only("1-")[- Continuity is closely related to limits 🔗]
#v(20pt)
#only("2-")[- If a function is continuous at a point, the limit exists at that point ✅]
#v(20pt)
#only("3-")[- But the existence of a limit doesn't guarantee continuity ⚠]
#only("1")[
#voiceover("It's important to note that continuity is closely related to the concept of limits.")
]
#only("2")[
#voiceover("If a function is continuous at a point, then the limit of the function as x approaches that point must exist.")
]
#only("3")[
#voiceover("However, just because a limit exists at a point doesn't necessarily mean the function is continuous there. The limit must also equal the function value at that point for continuity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Continuity Summary]
#v(40pt)
#only("1-")[- Continuity means no breaks or gaps in the function 📈]
#v(20pt)
#only("2-")[- Requires the existence of the limit and the function value 🎯]
#v(20pt)
#only("3-")[- The limit must equal the function value for continuity ⚖]
#only("1")[
#voiceover("In summary, continuity means that a function has no breaks or gaps in its graph.")
]
#only("2")[
#voiceover("For a function to be continuous at a point, both the limit of the function as x approaches that point and the function value at that point must exist.")
]
#only("3")[
#voiceover("And crucially, the limit must be equal to the function value for the function to be continuous at that point.")
]
]