#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Basis of a Vector Space]
#v(40pt)
#only("1-")[A basis is a set of vectors that ____ a vector space.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) span]#only("2-")[#text(fill:green)[a) span]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) intersect]#only("3-")[#text(fill:red)[b) intersect]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) divide]#only("4-")[#text(fill:red)[c) divide]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) none of the above]#only("5-")[#text(fill:red)[d) none of the above]]

#only("1")[#voiceover("Great job! That's absolutely correct. Let's see why...")]
#only("2")[#voiceover("a) span is the correct answer. A basis is indeed a set of vectors that span a vector space.")]
#only("3")[#voiceover("b) intersect is incorrect. Basis vectors don't necessarily intersect, they span the space.")]
#only("4")[#voiceover("c) divide is also incorrect. Division isn't a relevant concept for basis vectors.")]
#only("5")[#voiceover("And d) none of the above is incorrect, because a) is the correct answer.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Spanning a Vector Space]
#v(40pt)
#only("1-")[What does it mean for vectors to span a space? 🤔]
#v(20pt)
#only("2-")[- Every vector in the space can be written as a linear combination of the basis vectors. 🎨]
#v(20pt)
#only("3-")[- Example: In $RR^2$, $mat(1;0)$ and $mat(0;1)$ span the space. 📏]
#v(20pt)
#only("4-")[- Any vector $mat(a;b)$ can be written as $a mat(1;0) + b mat(0;1)$. ✍]

#only("1")[#voiceover("Let's dive deeper into what it means for vectors to span a space.")]
#only("2")[#voiceover("When we say that vectors span a space, we mean that every vector in that space can be written as a linear combination of those vectors.")]
#only("3")[#voiceover("For example, in the two-dimensional real space R 2, the standard basis vectors (1; 0) and (0; 1) span the entire space.")]
#only("4")[#voiceover("This means that any vector (a; b) in R 2 can be written as a linear combination of these basis vectors: a times (1; 0) plus b times (0; 1).")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Spanning]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

v1 = np.array([1, 0])
v2 = np.array([0, 1])

origin = np.array([[0, 0],[0, 0]]) 
plt.quiver(*origin, v1[0], v1[1], color='r', angles='xy', scale_units='xy', scale=1, label='(1, 0)')
plt.quiver(*origin, v2[0], v2[1], color='g', angles='xy', scale_units='xy', scale=1, label='(0, 1)')

x = np.linspace(-5, 5, 10)
y = np.linspace(-5, 5, 10)
X, Y = np.meshgrid(x, y)

plt.figure(figsize=(6, 6))
plt.quiver(X, Y, X, Y, color='b', angles='xy', scale_units='xy', scale=1)
plt.quiver(*origin, v1[0], v1[1], color='r', angles='xy', scale_units='xy', scale=1, label='(1, 0)')
plt.quiver(*origin, v2[0], v2[1], color='g', angles='xy', scale_units='xy', scale=1, label='(0, 1)')
plt.xlim(-6, 6)
plt.ylim(-6, 6)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
plt.grid()
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a visualization: 📊]
#v(20pt)
#only("2-")[- The red and green arrows are the basis vectors $mat(1;0)$ and $mat(0;1)$. 🔴🟢]
#v(20pt)
#only("3-")[- The blue arrows represent all possible vectors in $RR^2$. 🔵]
#v(20pt)
#only("4-")[- Every blue arrow can be reached by a combination of the red and green arrows. 🎯]

#only("1")[#voiceover("Let's visualize this concept to make it clearer.")]
#only("2")[#voiceover("In this plot, the red and green arrows represent the basis vectors (1; 0) and (0; 1) respectively.")]
#only("3")[#voiceover("The blue arrows represent all possible vectors in the two-dimensional space R 2.")]
#only("4")[#voiceover("As you can see, every blue arrow, i.e., every vector in R 2, can be reached by some combination of the red and green basis vectors. This is what it means for the basis vectors to span the space.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- A basis is a set of vectors that span a vector space. 🎯]
#v(20pt)
#only("2-")[- Spanning means every vector in the space can be written as a linear combination of the basis vectors. 📐]
#v(20pt)
#only("3-")[- In $RR^2$, $mat(1;0)$ and $mat(0;1)$ form a standard basis that spans the space. 🔴🟢]
#v(20pt)
#only("4-")[Great work on understanding this fundamental concept! 🌟]

#only("1")[#voiceover("To summarize, a basis is a set of vectors that span a vector space.")]
#only("2")[#voiceover("Spanning means that every vector in the space can be written as a linear combination of the basis vectors.")]
#only("3")[#voiceover("In the two-dimensional real space R 2, the vectors (1; 0) and (0; 1) form a standard basis that spans the entire space.")]
#only("4")[#voiceover("Great work on understanding this fundamental concept of linear algebra! Keep up the good work.")]
]