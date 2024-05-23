#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse Functions]
#v(40pt)
How can you identify an inverse function on a graph?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) It is the reflection over the x-axis]#only("2-")[#text(fill:red)[a) It is the reflection over the x-axis]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) It is the reflection over the y-axis]#only("3-")[#text(fill:red)[b) It is the reflection over the y-axis]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) It is the reflection over the line $y = x$]#only("4-")[#text(fill:green)[c) It is the reflection over the line $y = x$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) It is the reflection over the origin]#only("5-")[#text(fill:red)[d) It is the reflection over the origin]]

#only("1")[#voiceover("Great job! That's absolutely right. Let's see why...")]
#only("2")[#voiceover("Option a) is incorrect. A reflection over the x-axis would flip the function vertically, but it wouldn't give us the inverse.")]
#only("3")[#voiceover("Option b) is also incorrect. A reflection over the y-axis would flip the function horizontally, but again, it wouldn't give us the inverse.")]
#only("4")[#voiceover("Option c) is correct! The inverse of a function is indeed the reflection of the original function over the line $y = x$.")]
#only("5")[#voiceover("Finally, option d) is incorrect. A reflection over the origin would rotate the function 180 degrees around the origin, but it wouldn't give us the inverse.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Inverses]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y1 = x**2
y2 = np.sqrt(x)

fig, ax = plt.subplots(figsize=(8, 8))
ax.plot(x, y1, label='$f(x) = x^2$')
ax.plot(x, y2, label='$f^{-1}(x) = sqrt(x)$')
ax.plot(x, x, '--', color='gray', label='$y = x$')
ax.set_xlim(-5, 5)
ax.set_ylim(-5, 5)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()
ax.grid(True)
ax.set_aspect('equal')

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's an example:]
#v(20pt)
#only("2-")[- The blue curve is $f(x) = x^2$]
#only("3-")[- The orange curve is its inverse, $f^{-1}(x) = sqrt(x)$]
#only("4-")[- Notice how they are reflections of each other over the line $y = x$ (the dashed line)]

#only("1")[#voiceover("Let's visualize this concept with an example.")]
#only("2")[#voiceover("The blue curve represents the function $f$ of $x$ equals $x$ squared.")]
#only("3")[#voiceover("The orange curve is its inverse function, $f$ inverse of $x$ equals square root of $x$.")]
#only("4")[#voiceover("Notice how the two curves are reflections of each other over the line $y = x$, which is represented by the dashed line. This is the key characteristic of inverse functions when viewed on a graph.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Inverse functions are reflections over the line $y = x$ 📈]
#v(20pt)
#only("2-")[- Not reflections over x-axis, y-axis, or origin ❌]
#v(20pt)
#only("3-")[- Graphing is a great way to visualize inverses 👀]
#v(20pt)
#only("4-")[- Always look for that characteristic reflection! 🪞]

#only("1")[#voiceover("To summarize, inverse functions are reflections of the original function over the line $y = x$.")]
#only("2")[#voiceover("They are not reflections over the x-axis, y-axis, or the origin.")]
#only("3")[#voiceover("Graphing is a fantastic tool to visualize inverse functions and understand their relationship.")]
#only("4")[#voiceover("Always look for that characteristic reflection over the line $y = x$. That's the hallmark of an inverse function on a graph.")]
]