#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuous Extendability]
#v(40pt)
#only("1-")[When is a function continuously extendable?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) When it is already continuous]#only("2-")[#text(fill:red)[a) When it is already continuous]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) When it can be made continuous by defining or redefining its value at certain points]#only("3-")[#text(fill:green)[b) When it can be made continuous by defining or redefining its value at certain points]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) When it is differentiable]#only("4-")[#text(fill:red)[c) When it is differentiable]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) When it is integrable]#only("5-")[#text(fill:red)[d) When it is integrable]]
#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Option a) is incorrect because a function that is already continuous does not need to be extended.")]
#only("3")[#voiceover("Option b) is the correct answer. A function is continuously extendable when it can be made continuous by defining or redefining its value at certain points.")]
#only("4")[#voiceover("Option c) is incorrect. Differentiability is a stronger condition than continuity and does not imply continuous extendability.")]
#only("5")[#voiceover("Option d) is also incorrect. Integrability is not directly related to continuous extendability.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider the function $f(x) = (x^2 - 1)/(x - 1)$.]
#v(20pt)
#only("2-")[- $f(x)$ is not defined at $x = 1$ 🚫]
#v(20pt)
#only("3-")[- But $\lim_(x->1) f(x) = \lim_(x->1) (x + 1) = 2$ ✅]
#v(20pt)
#only("4-")[- So if we define $f(1) = 2$, $f(x)$ becomes continuous at $x = 1$ 🌟]
#v(20pt)
#only("5-")[- Therefore, $f(x)$ is continuously extendable at $x = 1$ 🎉]

#only("1")[#voiceover("Let's look at an example to understand continuous extendability better.")]
#only("2")[#voiceover("The function f of x equals x squared minus 1 over x minus 1 is not defined at x equals 1, because it would lead to division by zero.")]
#only("3")[#voiceover("However, the limit of f of x as x approaches 1 exists and equals 2. We can find this by simplifying the function to x plus 1 and then evaluating at x equals 1.")]
#only("4")[#voiceover("So if we define f of 1 to be equal to 2, the function becomes continuous at x equals 1.")]
#only("5")[#voiceover("Therefore, the function f of x is continuously extendable at x equals 1. We were able to make it continuous by defining its value at the problematic point.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.divide(x**2-1, x-1, out=np.zeros_like(x), where=x!=1)

x = np.linspace(0, 2, 1000)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x)')
plt.scatter([1], [2], color='red', label='Defined point (1,2)')

plt.xlim(0.5, 1.5)
plt.ylim(0, 4)

plt.grid(True)
plt.legend()
plt.title('Continuous Extension of f(x) = (x^2 - 1)/(x - 1)')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Here's a graph that illustrates the continuous extension of our function f of x.")]
#only("2")[#voiceover("The red point at (1,2) shows where we defined the function's value to make it continuous.")]
#only("3")[#voiceover("Without this definition, there would be a hole in the graph at x equals 1.")]
#only("4")[#voiceover("But by setting f of 1 equal to 2, we extend the function continuously, filling in the hole and making the function continuous everywhere.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
- A function is #text(weight: "bold")[continuously extendable] if it can be made continuous by defining or redefining its value at certain points 🔑
- This involves checking the #text(weight: "bold")[limit] of the function at the problematic point(s) 🔍
- If the limit exists, we can #text(weight: "bold")[define the function's value] to be equal to this limit at that point 📝
- This makes the function #text(weight: "bold")[continuous] at the point, extending it continuously 🌈

#only("1")[#voiceover("To summarize, a function is continuously extendable if it can be made continuous by defining or redefining its value at certain points.")]
#only("2")[#voiceover("To check for continuous extendability, we examine the limit of the function at the problematic points.")]
#only("3")[#voiceover("If the limit exists, we can define the function's value to be equal to this limit at that point.")]
#only("4")[#voiceover("This makes the function continuous at the point, effectively extending it continuously. Remember, continuous extendability is all about patching up discontinuities to make a function continuous everywhere.")]
]