#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rank of a Matrix]
#v(40pt)
The rank of a matrix is the maximum number of ______.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) rows]#only("2-")[#text(fill:red)[a) rows]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) columns]#only("3-")[#text(fill:red)[b) columns]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) linearly independent row or column vectors]#only("4-")[#text(fill:green)[c) linearly independent row or column vectors]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) non-zero elements]#only("5-")[#text(fill:red)[d) non-zero elements]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("The rank is not defined by the number of rows in a matrix.")]
#only("3")[#voiceover("Similarly, it's not defined by the number of columns either.")]
#only("4")[#voiceover("The correct answer is c) linearly independent row or column vectors. The rank is the maximum number of linearly independent row or column vectors in a matrix.")]
#only("5")[#voiceover("The number of non-zero elements doesn't determine the rank. A matrix can have many non-zero elements but still have a low rank if these elements are not linearly independent.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[1) The rank is a measure of the "dimensionality" of the matrix 📏]
#v(20pt)
#only("2-")[2) It's the maximum number of linearly independent rows or columns 🪜]
#v(20pt)
#only("3-")[3) Linearly independent means no row/column can be expressed as a linear combination of others 🧮]
#v(20pt)
#only("4-")[4) Example: $mat(1, 0; 0, 1)$ has rank 2, as both rows/columns are linearly independent ✅]
#v(20pt)
#only("5-")[5) But $mat(1, 2; 2, 4)$ has rank 1, as the 2nd row/column is 2x the 1st 🔍]
#only("1")[#voiceover("The rank of a matrix is a measure of its dimensionality, in a sense.")]
#only("2")[#voiceover("More precisely, it's the maximum number of linearly independent rows or columns in the matrix.")]
#only("3")[#voiceover("Linearly independent means that no row or column can be expressed as a linear combination of the others.")]
#only("4")[#voiceover("For example, the identity matrix (1, 0; 0, 1) has rank 2, as both its rows and columns are linearly independent.")]
#only("5")[#voiceover("On the other hand, the matrix (1, 2; 2, 4) has rank 1, because the second row and column are just 2 times the first ones, so they're linearly dependent.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Geometric Interpretation]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure(figsize=(8, 8))

ax1 = fig.add_subplot(2, 2, 1, projection='3d')
xx, yy = np.meshgrid(range(2), range(2))
ax1.plot_surface(xx, yy, np.zeros((2, 2)), alpha=0.5)
ax1.set_title('Rank 2')

ax2 = fig.add_subplot(2, 2, 2, projection='3d')
xx, yy = np.meshgrid(range(2), range(2))
ax2.plot(xx, yy, np.zeros((2, 2)), 'o-', color='red')
ax2.set_title('Rank 1 (Line)')

ax3 = fig.add_subplot(2, 2, 3, projection='3d')
xx, yy = np.meshgrid(range(2), range(2))
ax3.plot(xx, yy, np.zeros((2, 2)), 'o-', color='green')
ax3.plot(xx, yy, np.ones((2, 2)), 'o-', color='green')
ax3.set_title('Rank 1 (Plane)')

ax4 = fig.add_subplot(2, 2, 4, projection='3d')
xx, yy = np.meshgrid(range(2), range(2))
ax4.scatter(1, 1, 0, color='blue', s=100)
ax4.set_title('Rank 0 (Point)')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- Rank 2: A plane 🛩]
#v(10pt)
#only("2-")[- Rank 1: A line 📏 or a plane in a specific direction 🧭]
#v(10pt)
#only("3-")[- Rank 0: A single point 🎯]
#only("1")[#voiceover("Geometrically, the rank of a matrix can be interpreted as the dimensionality of the space spanned by its columns or rows.")]
#only("2")[#voiceover("A matrix of rank 1 represents either a line, if all rows or columns are multiples of each other, or a plane in a specific direction if they're not.")]
#only("3")[#voiceover("A matrix of rank 0 collapses to a single point, as all its rows and columns are zero or multiples of each other.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Rank = maximum number of linearly independent rows/columns 🪜]
#v(20pt)
#only("2-")[- Linearly independent = no row/column is a linear combination of others 🧮]
#v(20pt)
#only("3-")[- Geometrically, rank represents the dimensionality of the matrix 📏]
#v(20pt)
#only("4-")[- Rank is a key concept in linear algebra and has many applications 🔑]
#only("1")[#voiceover("To summarize, the rank of a matrix is the maximum number of linearly independent rows or columns.")]
#only("2")[#voiceover("Linearly independent means that no row or column can be expressed as a linear combination of the others.")]
#only("3")[#voiceover("Geometrically, the rank represents the dimensionality of the space spanned by the matrix.")]
#only("4")[#voiceover("Understanding rank is crucial in linear algebra and has numerous applications in mathematics, physics, engineering, and computer science.")]
]