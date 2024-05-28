#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[One-Sided Limits]
#v(40pt)
What do one-sided limits check?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) The behavior of the function from both sides]#only("2-")[#text(fill:red)[a) The behavior of the function from both sides]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) The behavior of the function from one side]#only("3-")[#text(fill:green)[b) The behavior of the function from one side]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) The behavior of the function at infinity]#only("4-")[#text(fill:red)[c) The behavior of the function at infinity]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) The behavior of the function at zero]#only("5-")[#text(fill:red)[d) The behavior of the function at zero]]
#only("1")[#voiceover("That's correct! Great job. One-sided limits check the behavior of the function from one side.")]
#only("2")[#voiceover("Option a) is incorrect. One-sided limits do not check the behavior of the function from both sides, but rather from one specific side, either left or right.")]
#only("3")[#voiceover("Option b) is the correct answer. One-sided limits indeed check the behavior of the function as the input approaches a certain value from one side, either from the left or from the right.")]
#only("4")[#voiceover("Option c) is incorrect. One-sided limits are not concerned with the behavior of the function at infinity.")]
#only("5")[#voiceover("Option d) is also incorrect. One-sided limits do not specifically check the behavior of the function at zero, but at any given point, approaching from one side.")]
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
    return np.piecewise(x, [x < 0, x >= 0], [lambda x: x**2, lambda x: x])

x = np.linspace(-2, 2, 1000)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y)
plt.scatter(0, 0, color='red', zorder=2)
plt.annotate('Discontinuity at x=0', xy=(0, 0), xytext=(0.5, 0.5), arrowprops=dict(facecolor='black', shrink=0.05))
plt.grid(True)
plt.xlim(-2, 2)
plt.ylim(-0.5, 4)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('One-Sided Limits Example')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Consider the function: ]
#v(10pt)
#only("2-")[$ f(x) = (x^2, x < 0; x, x >= 0) $]
#v(40pt)
#only("3-")[- The #text(fill:orange)[left-hand limit] at $x=0$ is $lim_(x -> 0^-) f(x) = 0$]
#only("4-")[- The #text(fill:blue)[right-hand limit] at $x=0$ is $lim_(x -> 0^+) f(x) = 0$]
#only("5-")[- The #text(weight: "bold")[one-sided limits] exist, but are not equal 🚫]

#only("1")[#voiceover("Consider this piecewise function f of x, which is equal to x squared for x less than 0, and equal to x for x greater than or equal to 0.")]
#only("2")[#voiceover("There is a discontinuity at x equals 0, where the function changes abruptly.")]
#only("3")[#voiceover("The left-hand limit of f of x as x approaches 0 is equal to 0. This is the limit as we approach 0 from the negative side.")]
#only("4")[#voiceover("The right-hand limit of f of x as x approaches 0 is also equal to 0. This is the limit as we approach 0 from the positive side.")]
#only("5")[#voiceover("In this case, both one-sided limits exist and are equal to each other. However, the function is not continuous at x equals 0 because the function value at 0 is not defined. This demonstrates how one-sided limits can be used to analyze the behavior of a function near a point of discontinuity.")]
]