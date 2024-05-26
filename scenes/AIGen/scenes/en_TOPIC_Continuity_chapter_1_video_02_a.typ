#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[One-Sided Limits]
#v(40pt)
What is a one-sided limit?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) A limit that considers the behavior of the function from both sides]#only("2-")[#text(fill:red)[a) A limit that considers the behavior of the function from both sides]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) A limit that considers the behavior of the function from one side]#only("3-")[#text(fill:green)[b) A limit that considers the behavior of the function from one side]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) A limit that considers the behavior of the function at infinity]#only("4-")[#text(fill:red)[c) A limit that considers the behavior of the function at infinity]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) A limit that considers the behavior of the function at zero]#only("5-")[#text(fill:red)[d) A limit that considers the behavior of the function at zero]]

#only("1")[#voiceover("Not quite. Let's review the correct solution.")]
#only("2")[#voiceover("Option a is incorrect because a one-sided limit does not consider the behavior of the function from both sides, but only from one side.")]
#only("3")[#voiceover("Option b is the correct answer. A one-sided limit indeed considers the behavior of the function as the input approaches a certain value from one side, either from the left or from the right.")]
#only("4")[#voiceover("Option c is incorrect. While limits at infinity are a type of limit, they are not the same as one-sided limits. One-sided limits can be evaluated at any point, not just infinity.")]
#only("5")[#voiceover("Option d is also incorrect. While the limit of a function can be evaluated at zero, this is not the defining characteristic of a one-sided limit. A one-sided limit can be evaluated at any point, considering the function's behavior from one side of that point.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[One-Sided Limits: Example]
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
    return np.piecewise(x, [x < 0, x >= 0], [lambda x: x**2, lambda x: x])

x = np.linspace(-2, 2, 1000)
y = f(x)

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y)
ax.scatter(0, 0, color='red', zorder=2)
ax.annotate('Approaching from the left', xy=(-0.5, 0.25), xytext=(-1.5, 1), 
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Approaching from the right', xy=(0.5, 0.5), xytext=(1.5, 1), 
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.grid(True)
ax.set_xlabel('x')
ax.set_ylabel('f(x)')
ax.set_title('One-Sided Limits')
plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- Consider the function $f(x) = (x^2 "for" x < 0; x "for" x >= 0)$]
#v(10pt)
#only("2-")[- The #text(fill:red)[left-hand limit] as $x$ approaches 0 is 0]
#v(10pt)
#only("3-")[- The #text(fill:blue)[right-hand limit] as $x$ approaches 0 is also 0]
#v(10pt)
#only("4-")[- Both one-sided limits exist and are equal, so the limit exists]

#only("1")[#voiceover("Consider the function f of x which equals x squared for x less than 0, and x for x greater than or equal to 0.")]
#only("2")[#voiceover("As we approach 0 from the left, the function values are getting closer and closer to 0. This is the left-hand limit.")]
#only("3")[#voiceover("Similarly, as we approach 0 from the right, the function values are also getting closer to 0. This is the right-hand limit.")]
#only("4")[#voiceover("In this case, both one-sided limits exist and are equal to each other. Therefore, we can say that the limit of the function as x approaches 0 exists and is equal to 0.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
- One-sided limits consider the behavior of a function from one side 🔍
#v(20pt)
- They can be left-hand limits (approaching from the left) or right-hand limits (approaching from the right) ⬅️➡️
#v(20pt)
- If both one-sided limits exist and are equal, then the limit of the function exists 🎯
#v(20pt)
- One-sided limits are a fundamental concept in understanding the behavior of functions 📈

#only("1")[#voiceover("To summarize, one-sided limits consider the behavior of a function as the input approaches a certain value from one side.")]
#only("2")[#voiceover("They can be left-hand limits, where we approach the point from the left, or right-hand limits, where we approach from the right.")]
#only("3")[#voiceover("If both one-sided limits exist and are equal to each other, then we can say that the limit of the function at that point exists.")]
#only("4")[#voiceover("Understanding one-sided limits is crucial for analyzing the behavior of functions, especially at points of discontinuity.")]
]