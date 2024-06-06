#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Function Behavior]
#v(40pt)
As $x$ approaches zero, what happens to $f(x) = x^4$?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Approaches zero]#only("2-")[#text(fill:green)[a) Approaches zero]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Approaches infinity]#only("3-")[#text(fill:red)[b) Approaches infinity]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Approaches a constant]#only("4-")[#text(fill:red)[c) Approaches a constant]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Oscillates]#only("5-")[#text(fill:red)[d) Oscillates]]
#only("1")[#voiceover("Not quite, but let's see why option a is the correct answer...")]
#only("2")[#voiceover("a) Approaches zero is correct. As x gets closer to 0, the value of x to the fourth power will also get closer to 0.")]
#only("3")[#voiceover("b) Approaches infinity is incorrect. As x gets smaller, x to the fourth power will also get smaller, not larger.")]
#only("4")[#voiceover("c) Approaches a constant is also incorrect. The value of the function changes as x changes, so it's not approaching a constant value.")]
#only("5")[#voiceover("And d) Oscillates is incorrect as well. The function doesn't alternate between positive and negative values as x approaches 0.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing $f(x) = x^4$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 1000)
y = x**4

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = x^4')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Graph of f(x) = x^4')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Let's examine the graph of $f(x) = x^4$:]
#v(20pt)
#only("2-")[- As $x$ approaches 0 from either side, $f(x)$ gets closer to 0 📉]
#only("3-")[- This is because any number raised to an even power is always non-negative 🔢]
#only("4-")[- So, as $x$ gets very small (close to 0), $x^4$ also becomes very small (close to 0) 🔍]

#only("1")[#voiceover("Let's take a look at the graph of f of x equals x to the fourth power to understand this behavior better.")]
#only("2")[#voiceover("Notice that as x approaches 0 from either the positive or negative side, the value of f of x also gets closer and closer to 0.")]
#only("3")[#voiceover("This is because when you raise any real number to an even power, like 4, the result is always non-negative.")]
#only("4")[#voiceover("So, as x gets very small in magnitude, meaning it gets close to 0, x to the fourth power will also become very small, approaching 0.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit Notation]
#v(40pt)
#only("1-")[We can express this behavior using limit notation:]
#v(20pt)
#only("2-")[$ lim_(x arrow 0) x^4 = 0 $]
#v(20pt)
#only("3-")[This reads as "the limit of $x^4$ as $x$ approaches 0 equals 0" 📖]
#v(20pt)
#only("4-")[It's a concise way to describe the function's behavior near a point 🎯]

#only("1")[#voiceover("We can express this behavior of the function using mathematical notation, specifically limit notation.")]
#only("2")[#voiceover("We write 'the limit of x to the fourth power, as x approaches 0, equals 0'.")]
#only("3")[#voiceover("This is read as 'the limit of x to the fourth power, as x approaches 0, equals 0'.")]
#only("4")[#voiceover("Limit notation is a concise and precise way to describe a function's behavior as the input gets close to a certain point.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
- For the power function $f(x) = x^4$:
  - As $x arrow 0$, $f(x) arrow 0$ ✅
  - This is because $x^4$ is always non-negative for real $x$ 📈
  - We can write this as $lim_(x arrow 0) x^4 = 0$ 📝
- Understanding limits is key to analyzing function behavior! 🔑

#only("1")[#voiceover("Let's recap what we've learned about the behavior of this power function f of x equals x to the fourth power.")]
#only("2")[#voiceover("As x approaches 0, f of x also approaches 0. This is because x to the fourth power is always non-negative for real values of x.")]
#only("3")[#voiceover("We can express this behavior concisely using limit notation, writing 'the limit of x to the fourth power, as x approaches 0, equals 0'.")]
#only("4")[#voiceover("Understanding limits is a key concept in analyzing the behavior of functions, especially as the input approaches certain key points.")]
]