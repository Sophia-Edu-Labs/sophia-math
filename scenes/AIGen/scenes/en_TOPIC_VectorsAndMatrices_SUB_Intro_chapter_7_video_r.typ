#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Matrix Dimensions 📏]
#v(40pt)
#only("1-")[- Matrices are fundamental in linear algebra 🧮]
#only("2-")[- Dimensions help describe matrix structure 🏗️]
#only("3-")[- Let's review how we define matrix dimensions 🔍]

#only("1")[
#voiceover("Let's review the concept of matrix dimensions. Matrices are fundamental tools in linear algebra, used to represent systems of linear equations and linear transformations.")
]

#only("2")[
#voiceover("The dimensions of a matrix help us describe its structure and are crucial for various matrix operations.")
]

#only("3")[
#voiceover("Let's review how we define and understand matrix dimensions.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Dimensions]
#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create a 3x4 matrix
matrix = np.array([[1, 2, 3, 4],
                   [5, 6, 7, 8],
                   [9, 10, 11, 12]])

fig, ax = plt.subplots(figsize=(8, 6))

# Plot the matrix
im = ax.imshow(matrix, cmap='coolwarm')

# Add text annotations
for i in range(matrix.shape[0]):
    for j in range(matrix.shape[1]):
        text = ax.text(j, i, matrix[i, j], ha="center", va="center", color="black")

ax.set_title("3x4 Matrix")
ax.set_xlabel("Columns")
ax.set_ylabel("Rows")

# Add arrows and labels for dimensions
ax.annotate('', xy=(4, 1.5), xytext=(0, 1.5), arrowprops=dict(arrowstyle='<->'))
ax.text(2, 1.8, '4 columns', ha='center', va='center')

ax.annotate('', xy=(-0.5, 0), xytext=(-0.5, 3), arrowprops=dict(arrowstyle='<->'))
ax.text(-0.8, 1.5, '3 rows', ha='center', va='center', rotation=90)

plt.colorbar(im)
plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]
]

#only("1")[
#voiceover("Let's consider this example of a matrix. As we can see, this matrix has 3 rows and 4 columns.")
]

#only("2-")[Dimensions: $3 times 4$ or $3 × 4$]

#only("2")[
#voiceover("We describe the dimensions of this matrix as 3 by 4, or 3 times 4. This notation tells us the number of rows followed by the number of columns.")
]

#only("3-")[General form: $m times n$ matrix]
#v(10pt)
#only("3-")[- $m$: number of rows]
#only("3-")[- $n$: number of columns]

#only("3")[
#voiceover("In general, we describe a matrix with m rows and n columns as an m by n matrix. Here, m represents the number of rows, and n represents the number of columns.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Matrix dimensions: rows × columns 🔢]
#only("2-")[- Example: $3 times 4$ matrix has 3 rows, 4 columns]
#only("3-")[- Notation: $m times n$ (m rows, n columns)]
#only("4-")[- Important for matrix operations ✖️➕]

#only("1")[
#voiceover("To summarize, the dimensions of a matrix are given as the number of rows by the number of columns.")
]

#only("2")[
#voiceover("For example, a 3 by 4 matrix has 3 rows and 4 columns.")
]

#only("3")[
#voiceover("We use the notation m by n to describe a matrix with m rows and n columns.")
]

#only("4")[
#voiceover("Understanding matrix dimensions is crucial for performing various matrix operations, such as addition and multiplication.")
]
]