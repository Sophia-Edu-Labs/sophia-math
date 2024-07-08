#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphs of Power Functions]
#v(40pt)

#only("1-")[Which graph belongs to the function $x^3$?]
#v(20pt)

#only("-1")[a) Red Graph ($x^2$)]#only("2-")[#text(fill:red)[a) Red Graph ($x^2$)]]
#v(10pt)
#only("-2")[b) Green Graph ($1/x$)]#only("3-")[#text(fill:red)[b) Green Graph ($1/x$)]]
#v(10pt)
#only("-3")[c) Blue Graph ($x^3$)]#only("4-")[#text(fill:green)[c) Blue Graph ($x^3$)]]
#v(10pt)
#only("-4")[d) Orange Graph ($1/x^2$)]#only("5-")[#text(fill:red)[d) Orange Graph ($1/x^2$)]]

#only("1")[#voiceover("Not quite. Let's go through each option to understand the correct solution.")]
#only("2")[#voiceover("Option a, the red graph, represents x squared. This function creates a parabola that opens upward, which is different from the shape of x cubed.")]
#only("3")[#voiceover("Option b, the green graph, represents one over x. This function creates a hyperbola, which is quite different from the shape of x cubed.")]
#only("4")[#voiceover("Option c, the blue graph, is indeed x cubed. This is the correct answer. The function x cubed creates an S-shaped curve that passes through the origin.")]
#only("5")[#voiceover("Option d, the orange graph, represents one over x squared. This function creates a U-shaped curve that approaches but never touches the x-axis, unlike x cubed.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Graphs]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**2
y2 = 1/x
y3 = x**3
y4 = 1/(x**2)

plt.figure(figsize=(10, 6))
plt.plot(x, y1, 'r', label='$x^2$')
plt.plot(x, y2, 'g', label='$1/x$')
plt.plot(x, y3, 'b', label='$x^3$')
plt.plot(x, y4, 'orange', label='$1/x^2$')

plt.xlim(-2, 2)
plt.ylim(-8, 8)
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend()
plt.title('Comparison of Power Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Let's visualize these functions to better understand their shapes. Here we have all four graphs plotted together.")]
#only("2")[#voiceover("The red parabola is x squared, opening upward symmetrically around the y-axis.")]
#only("3")[#voiceover("The green hyperbola is one over x, approaching but never touching the x and y axes.")]
#only("4")[#voiceover("The blue S-shaped curve is x cubed, our correct answer. Notice how it passes through the origin and is symmetric when rotated 180 degrees.")]
#only("5")[#voiceover("The orange U-shaped curve is one over x squared, approaching but never touching the x-axis.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Characteristics of $x^3$]
#v(40pt)

#only("1-")[- Passes through the origin (0,0) 📍]
#v(20pt)
#only("2-")[- S-shaped curve 〰️]
#v(20pt)
#only("3-")[- Odd function (symmetric when rotated 180°) 🔄]
#v(20pt)
#only("4-")[- No horizontal asymptotes ↔️]

#only("1")[#voiceover("Now, let's focus on the characteristics of x cubed that make it unique.")]
#only("2")[#voiceover("First, x cubed always passes through the origin, the point zero, zero.")]
#only("3")[#voiceover("Second, it forms an S-shaped curve, also known as a cubic curve.")]
#only("4")[#voiceover("Third, x cubed is an odd function, meaning it's symmetric when rotated 180 degrees around the origin.")]
#only("5")[#voiceover("Lastly, unlike some of the other functions we saw, x cubed has no horizontal asymptotes. It continues to grow infinitely in both the positive and negative directions.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why Not the Other Options?]
#v(40pt)

#only("1-")[- $x^2$: Opens upward, even function 🔼]
#v(20pt)
#only("2-")[- $1/x$: Hyperbola, has horizontal asymptotes ↔️]
#v(20pt)
#only("3-")[- $1/x^2$: Always positive, has horizontal asymptote ➕]

#only("1")[#voiceover("Let's quickly review why the other options couldn't be x cubed.")]
#only("2")[#voiceover("x squared opens upward and is an even function, unlike x cubed which is odd.")]
#only("3")[#voiceover("One over x forms a hyperbola with horizontal asymptotes, which x cubed doesn't have.")]
#only("4")[#voiceover("One over x squared is always positive and has a horizontal asymptote at y equals zero, unlike x cubed which takes on both positive and negative values and has no horizontal asymptotes.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)

#only("1-")[- $x^3$ has a distinct S-shaped curve 〰️]
#v(20pt)
#only("2-")[- Always passes through (0,0) 📍]
#v(20pt)
#only("3-")[- Odd function 🔄]
#v(20pt)
#only("4-")[- No horizontal asymptotes ↔️]

#only("1")[#voiceover("To wrap up, let's review the key characteristics of x cubed that help us identify its graph.")]
#only("2")[#voiceover("It has a distinct S-shaped curve, unlike any of the other functions we looked at.")]
#only("3")[#voiceover("It always passes through the origin.")]
#only("4")[#voiceover("It's an odd function, symmetric when rotated 180 degrees.")]
#only("5")[#voiceover("And it has no horizontal asymptotes. Remember these features, and you'll always be able to spot the graph of x cubed!")]
]