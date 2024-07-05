#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Derivative as Rate of Change]
#v(40pt)

What does a derivative represent?

#v(20pt)
#only("-1")[a) The area under a curve]#only("2-")[#text(fill:red)[a) The area under a curve]]
#v(10pt)
#only("-2")[b) The rate of change]#only("3-")[#text(fill:green)[b) The rate of change]]
#v(10pt)
#only("-3")[c) The maximum value]#only("4-")[#text(fill:red)[c) The maximum value]]
#v(10pt)
#only("-4")[d) The minimum value]#only("5-")[#text(fill:red)[d) The minimum value]]

#only("1")[#voiceover("Excellent job! You've answered correctly. Let's break down why b) The rate of change is the right answer, and why the others are incorrect.")]

#only("2")[#voiceover("Option a) The area under a curve is incorrect. This actually describes the integral, not the derivative. The integral and derivative are related, but they represent different concepts.")]

#only("3")[#voiceover("Option b) The rate of change is correct! The derivative represents how quickly a function is changing at any given point. It's like the speed of the function at that moment.")]

#only("4")[#voiceover("Option c) The maximum value is incorrect. While derivatives can help us find maximum values, the derivative itself doesn't represent the maximum.")]

#only("5")[#voiceover("Similarly, option d) The minimum value is also incorrect. Derivatives can help locate minimums, but they don't represent the minimum value themselves.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Derivative]
#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**2

def df(x):
    return 2*x

x = np.linspace(-2, 2, 100)
y = f(x)
dy = df(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = x²', color='blue')
plt.plot(x, dy, label="f'(x) = 2x", color='red', linestyle='--')
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.5)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.5)
plt.legend()
plt.title("Function and its Derivative")
plt.xlabel("x")
plt.ylabel("y")
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#v(20pt)
#only("1-")[- Blue curve: Original function $f(x) = x^2$]
#only("2-")[- Red dashed curve: Derivative $f'(x) = 2x$]
#only("3-")[- Derivative shows slope of tangent line at each point]
#only("4-")[- Steeper curve → Larger derivative value]

#only("1")[#voiceover("Let's visualize how a derivative represents the rate of change. Here, we have a graph showing a function and its derivative.")]

#only("2")[#voiceover("The blue curve represents the original function, f of x equals x squared. The red dashed curve represents its derivative, f prime of x equals 2x.")]

#only("3")[#voiceover("At any point on the blue curve, the derivative (red curve) shows the slope of the tangent line at that point. This slope represents the instantaneous rate of change of the function.")]

#only("4")[#voiceover("Notice how the steeper parts of the blue curve correspond to larger values on the red curve. This illustrates that a steeper slope means a faster rate of change, and thus a larger derivative value.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-world Application]
#v(20pt)

#only("1-")[📈 Example: Car's Position Over Time]
#v(10pt)
#only("2-")[- Function $s(t)$: Car's position at time $t$]
#only("3-")[- Derivative $s'(t)$: Car's velocity at time $t$]
#v(20pt)
#only("4-")[💡 The derivative (velocity) represents:]
#only("5-")[   - How quickly position is changing]
#only("6-")[   - The rate of change of position with respect to time]

#only("1")[#voiceover("To understand how derivatives represent rates of change in the real world, let's consider an example of a car's motion.")]

#only("2")[#voiceover("Imagine we have a function s of t that represents a car's position at any given time t.")]

#only("3")[#voiceover("The derivative of this function, s prime of t, would represent the car's velocity at any time t.")]

#only("4")[#voiceover("In this context, the derivative (which is velocity) represents:")]

#only("5")[#voiceover("How quickly the car's position is changing,")]

#only("6")[#voiceover("Or in other words, the rate of change of position with respect to time. This illustrates how derivatives capture rates of change in various real-world scenarios, not just in abstract mathematical contexts.")]
]