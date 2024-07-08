#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Cubic Function: $x^3$]
#v(40pt)

#only("1-")[Which of the following graphs belongs to the function $x^3$?]
#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y1 = x**3
y2 = x**2
y3 = 1/x
y4 = 1/(x**2)

plt.figure(figsize=(10, 8))
plt.plot(x, y1, 'pink', label='$x^3$')
plt.plot(x, y2, 'blue', label='$x^2$')
plt.plot(x, y3, 'green', label='$1/x$')
plt.plot(x, y4, 'orange', label='$1/x^2$')

plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')

plt.legend()
plt.title('Comparison of Functions')
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
#only("-1")[a) Pink Graph]#only("2-")[#text(fill:green)[a) Pink Graph]]
#v(10pt)
#only("-2")[b) Green Graph]#only("3-")[#text(fill:red)[b) Green Graph]]
#v(10pt)
#only("-3")[c) Blue Graph]#only("4-")[#text(fill:red)[c) Blue Graph]]
#v(10pt)
#only("-4")[d) Orange Graph]#only("5-")[#text(fill:red)[d) Orange Graph]]

#only("1")[#voiceover("Excellent job! You've correctly identified the graph of x cubed. Let's go through each option to understand why.")]
#only("2")[#voiceover("Option a, the pink graph, is indeed the correct answer. This is the graph of x cubed. It's characterized by its S-shape, passing through the origin, and extending to positive infinity in the first quadrant and negative infinity in the third quadrant.")]
#only("3")[#voiceover("Option b, the green graph, is incorrect. This is actually the graph of one over x. It has two separate parts and never crosses the x or y axes.")]
#only("4")[#voiceover("Option c, the blue graph, is also incorrect. This is the graph of x squared. It's a parabola that opens upward and touches the x-axis at the origin.")]
#only("5")[#voiceover("Lastly, option d, the orange graph, is incorrect as well. This graph represents one over x squared. It's similar to one over x, but it's always positive and approaches the x-axis as x approaches positive or negative infinity.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Characteristics of $x^3$]
#v(40pt)

#only("1-")[- Passes through origin (0,0) 🎯]
#v(20pt)
#only("2-")[- S-shaped curve 〰️]
#v(20pt)
#only("3-")[- Odd function (symmetrical about origin) 🔄]
#v(20pt)
#only("4-")[- No maximum or minimum 📈]

#only("1")[#voiceover("Let's discuss the key characteristics of the x cubed function. First, it passes through the origin, the point zero comma zero.")]
#only("2")[#voiceover("Second, it has a distinctive S-shaped curve. This shape is unique to cubic functions.")]
#only("3")[#voiceover("Third, x cubed is an odd function, meaning it's symmetrical about the origin. If you rotate the graph 180 degrees around the origin, it looks the same.")]
#only("4")[#voiceover("Lastly, unlike quadratic functions, x cubed has no maximum or minimum points. It continues to increase as x increases, and decrease as x decreases.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Comparing $x^3$ with Other Functions]
#v(40pt)

#only("1-")[- $x^3$ (Pink): Cubic function 🟥]
#v(20pt)
#only("2-")[- $x^2$ (Blue): Quadratic function 🟦]
#v(20pt)
#only("3-")[- $1/x$ (Green): Reciprocal function 🟩]
#v(20pt)
#only("4-")[- $1/x^2$ (Orange): Inverse square function 🟧]

#only("1")[#voiceover("Now, let's compare x cubed with the other functions in the graph. The pink curve represents x cubed, our cubic function.")]
#only("2")[#voiceover("The blue curve is x squared, a quadratic function. Unlike x cubed, it's always non-negative and has a U-shape.")]
#only("3")[#voiceover("The green curve shows one over x, a reciprocal function. It has two separate parts and approaches, but never touches, the x and y axes.")]
#only("4")[#voiceover("Finally, the orange curve is one over x squared, an inverse square function. It's similar to one over x, but it's always positive and approaches the x-axis more quickly as x increases or decreases.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)

#only("1-")[- $x^3$ has a unique S-shape 〰️]
#v(20pt)
#only("2-")[- It's the only function that crosses all quadrants ➕➖]
#v(20pt)
#only("3-")[- Understanding graph shapes helps identify functions 📊]
#v(20pt)
#only("4-")[- Practice comparing different function graphs 🏋️]

#only("1")[#voiceover("To summarize, x cubed has a unique S-shape that sets it apart from other common functions.")]
#only("2")[#voiceover("It's the only function among these that crosses all four quadrants of the coordinate plane.")]
#only("3")[#voiceover("Understanding the shapes of different function graphs is crucial in identifying and working with various types of functions.")]
#only("4")[#voiceover("Keep practicing by comparing different function graphs. This skill will be invaluable as you progress in your math studies. Great job on recognizing the x cubed function!")]
]