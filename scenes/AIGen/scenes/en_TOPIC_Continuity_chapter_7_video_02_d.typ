#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity]
#v(40pt)
What is required for a function to be continuous at a point?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) The limit must exist]#only("2-")[#text(fill:green)[a) The limit must exist]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) The function must be defined at that point]#only("3-")[#text(fill:green)[b) The function must be defined at that point]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) The limit must equal the function's value at that point]#only("4-")[#text(fill:green)[c) The limit must equal the function's value at that point]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) All of the above]#only("5-")[#text(fill:green)[d) All of the above]]
#only("1")[#voiceover("Fantastic, that's absolutely correct! Let's go through each requirement one by one.")]
#only("2")[#voiceover("For a function to be continuous at a point, the limit must exist at that point. This means that the function approaches the same value from both sides.")]
#only("3")[#voiceover("Additionally, the function must be defined at that point. If there's a hole or gap in the function, it's not continuous there.")]
#only("4")[#voiceover("Furthermore, the limit must equal the function's value at that point. The function value and the limit value must coincide.")]
#only("5")[#voiceover("So in summary, all of these conditions - the limit existing, the function being defined, and the limit equaling the function value - must be met for a function to be continuous at a point. Great job recognizing that!")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
Let's look at an example:
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    if x < 1:
        return x
    elif x > 1:
        return x**2
    else:
        return 1

x = np.linspace(0, 2, 100)
y = [f(i) for i in x]

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x)')
plt.scatter([1], [1], color='red', label='(1, 1)')
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Is $f(x)$ continuous at $x=1$? 🤔]
#v(20pt)
#only("2-")[- The limit exists: $lim_(x->1^-) f(x) = lim_(x->1^+) f(x) = 1$ ✅]
#only("3-")[- $f(1)$ is defined: $f(1)=1$ ✅]
#only("4-")[- The limit equals the function value: $lim_(x->1) f(x) = f(1) = 1$ ✅]
#only("5-")[Therefore, $f(x)$ is continuous at $x=1$! 🎉]

#only("1")[#voiceover("Is the function f of x continuous at x equals 1? Let's check the conditions.")]
#only("2")[#voiceover("First, we see that the limit exists. As x approaches 1 from the left and right, f of x approaches 1.")]
#only("3")[#voiceover("Second, f of 1 is defined. The function has a value, 1, at x equals 1.")]
#only("4")[#voiceover("Third, the limit as x approaches 1 equals the function value at 1, which is 1.")]
#only("5")[#voiceover("Since all three conditions are met, we can conclude that f of x is indeed continuous at x equals 1. Excellent work understanding and applying the concept of continuity!")]
]