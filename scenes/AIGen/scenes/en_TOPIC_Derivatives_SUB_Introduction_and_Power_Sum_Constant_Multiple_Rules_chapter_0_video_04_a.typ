#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Positive Derivative and Function Behavior]
#v(40pt)

If the derivative of a function is positive at a point, what can you infer about the function at that point?

#v(20pt)
#only("-1")[a) The function is increasing]#only("2-")[#text(fill:green)[a) The function is increasing]]
#v(10pt)
#only("-2")[b) The function is decreasing]#only("3-")[#text(fill:red)[b) The function is decreasing]]
#v(10pt)
#only("-3")[c) The function has a maximum]#only("4-")[#text(fill:red)[c) The function has a maximum]]
#v(10pt)
#only("-4")[d) The function is constant]#only("5-")[#text(fill:red)[d) The function is constant]]

#only("1")[#voiceover("Excellent work! You've answered correctly. Let's break down why this is the right answer and why the other options are incorrect.")]

#only("2")[#voiceover("Option a is correct. When the derivative of a function is positive at a point, it means the function is increasing at that point. The derivative represents the slope of the tangent line to the function at any given point. A positive slope indicates that the function is moving upwards as we move from left to right.")]

#only("3")[#voiceover("Option b is incorrect. If the function were decreasing, its derivative would be negative, not positive. A negative derivative indicates that the function is moving downwards as we move from left to right.")]

#only("4")[#voiceover("Option c is incorrect. A maximum point occurs where the derivative changes from positive to negative, passing through zero. At a maximum, the derivative is zero, not positive.")]

#only("5")[#voiceover("Option d is also incorrect. If the function were constant, its derivative would be zero everywhere, not positive. A constant function has a horizontal graph with no change in y-values as x changes.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Positive Derivative]
#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**2 + 2*x

x = np.linspace(-3, 3, 100)
y = f(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = x² + 2x')
plt.axvline(x=0, color='r', linestyle='--', label='x = 0')
plt.plot(0, f(0), 'ro', markersize=10)
plt.arrow(0, f(0), 0.5, f(0.5)-f(0), head_width=0.15, head_length=0.3, fc='r', ec='r')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Function with Positive Derivative at x = 0')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#v(20pt)
#only("1-")[- Red dot: Point where derivative is positive]
#only("2-")[- Red arrow: Direction of increase]
#only("3-")[- Curve: Clearly increasing at the red dot]

#only("1")[#voiceover("Let's visualize what a positive derivative means for a function. In this graph, we have the function f of x equals x squared plus 2x.")]

#only("2")[#voiceover("The red dot represents a point where the derivative is positive. Notice the red arrow pointing upwards from this point. This arrow represents the positive slope of the tangent line at this point, which is the same as the derivative.")]

#only("3")[#voiceover("Observe how the curve is clearly increasing at the red dot. This is what we mean when we say a positive derivative indicates an increasing function. As we move right from the point, the y-values of the function are getting larger.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)

#only("1-")[- Positive derivative ⇒ Increasing function 📈]
#v(20pt)
#only("2-")[- Slope of tangent line = Derivative 📐]
#v(20pt)
#only("3-")[- Derivative gives rate of change 🔄]

#only("1")[#voiceover("Let's summarize the key points. First and foremost, a positive derivative at a point means the function is increasing at that point. This is the fundamental relationship we've been discussing.")]

#only("2")[#voiceover("Remember, the derivative at a point is equal to the slope of the tangent line at that point. This geometric interpretation helps us visualize why a positive derivative means an increasing function.")]

#only("3")[#voiceover("Lastly, the derivative gives us the instantaneous rate of change of the function. When this rate is positive, it means the function's values are increasing as we move to the right on the x-axis.")]
]