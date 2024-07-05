#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Derivative and Extrema]
#v(40pt)
If the derivative of a function at a point is zero, what can you infer about the function at that point?
#v(20pt)
#only("-1")[a) The function has a maximum or minimum]#only("2-")[#text(fill:green)[a) The function has a maximum or minimum]]
#v(10pt)
#only("-2")[b) The function is increasing]#only("3-")[#text(fill:red)[b) The function is increasing]]
#v(10pt)
#only("-3")[c) The function is decreasing]#only("4-")[#text(fill:red)[c) The function is decreasing]]
#v(10pt)
#only("-4")[d) The function is constant]#only("5-")[#text(fill:red)[d) The function is constant]]

#only("1")[#voiceover("Not quite. Let's go over the correct solution and see why option a is the right choice and why the others are incorrect.")]
#only("2")[#voiceover("Option a is correct. When the derivative of a function is zero at a point, it indicates that the function could have a maximum or minimum at that point. This is because the derivative represents the slope of the tangent line to the function, and a slope of zero means the function is flat at that point, which occurs at maxima and minima.")]
#only("3")[#voiceover("Option b is incorrect. A zero derivative doesn't necessarily mean the function is increasing. In fact, at a maximum or minimum point, the function transitions from increasing to decreasing or vice versa.")]
#only("4")[#voiceover("Similarly, option c is incorrect. A zero derivative doesn't imply the function is decreasing. As mentioned before, it could be transitioning between increasing and decreasing.")]
#only("5")[#voiceover("Lastly, option d is incorrect. While a constant function would have a zero derivative everywhere, a zero derivative at a single point doesn't mean the entire function is constant.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Extrema]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**3 - 3*x

x = np.linspace(-2, 2, 200)
y = f(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = x³ - 3x')
plt.plot(x, 3*x**2 - 3, label="f'(x) = 3x² - 3")
plt.axhline(y=0, color='r', linestyle='--')
plt.axvline(x=-1, color='g', linestyle=':', label='x = -1')
plt.axvline(x=1, color='g', linestyle=':', label='x = 1')
plt.scatter([-1, 1], [f(-1), f(1)], color='red', s=50, zorder=5)
plt.legend()
plt.title("Function and its Derivative")
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- Blue curve: $f(x) = x^3 - 3x$]
#only("2-")[- Orange curve: $f'(x) = 3x^2 - 3$]
#only("3-")[- Red dots: Extrema where $f'(x) = 0$]
#only("4-")[- Green dotted lines: $x = -1$ and $x = 1$]

#only("1")[#voiceover("Let's visualize this concept with a specific function. Here we have the function f of x equals x cubed minus 3x, shown in blue.")]
#only("2")[#voiceover("The orange curve represents its derivative, f prime of x, which is 3x squared minus 3.")]
#only("3")[#voiceover("Notice the red dots on the blue curve. These are the extrema of the function, occurring where the derivative equals zero.")]
#only("4")[#voiceover("The green dotted lines show where these extrema occur: at x equals negative 1 and x equals 1. At these points, the orange derivative curve crosses the x-axis, confirming that the derivative is zero.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Zero derivative ≠ Always extremum 🚫]
#v(20pt)
#only("2-")[- Need to check:
  - Second derivative 📊
  - Behavior around point 🔍]
#v(20pt)
#only("3-")[- Extrema types:
  - Local maximum 🏔️
  - Local minimum 🏚️
  - Saddle point 🏇]

#only("1")[#voiceover("It's important to note that while a zero derivative indicates a potential extremum, it doesn't always guarantee one.")]
#only("2")[#voiceover("To confirm whether a point with zero derivative is indeed an extremum, we need to check additional conditions. This might involve examining the second derivative or analyzing the function's behavior around the point.")]
#only("3")[#voiceover("Finally, remember that extrema can be of different types. We have local maxima, which are the highest points in their immediate neighborhood, local minima, which are the lowest points nearby, and saddle points, which are neither maxima nor minima but still have zero derivatives.")]
]