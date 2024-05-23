#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[What is a Matrix? 🤔]
#v(40pt)
#only("1-")[- Rectangular array of numbers]
#v(20pt)
#only("2-")[- Arranged in rows and columns 📊]
#v(20pt)
#only("3-")[- Example: $mat(1, 2; 3, 4)$]
#only("1")[
#voiceover("A matrix is a rectangular array of numbers.")
]
#only("2")[
#voiceover("These numbers are arranged in rows and columns.")
]
#only("3")[
#voiceover("For example, this is a 2 by 2 matrix with elements 1, 2, 3, and 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Notation 📝]
#v(40pt)
#only("1-")[- Rows: Horizontal lines ↔]
#v(20pt)
#only("2-")[- Columns: Vertical lines ↕]
#v(20pt)
#only("3-")[- Elements: Numbers inside the matrix]
#only("1")[
#voiceover("In a matrix, the horizontal lines are called rows.")
]
#only("2")[
#voiceover("The vertical lines are called columns.")
]
#only("3")[
#voiceover("And the numbers inside the matrix are called elements or entries.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimensions 📏]
#v(40pt)
#only("1-")[- Number of rows × Number of columns]
#v(20pt)
#only("2-")[- Example: $mat(1, 2; 3, 4)$ is a 2×2 matrix]
#only("1")[
#voiceover("The dimensions of a matrix are given by the number of rows times the number of columns.")
]
#only("2")[
#voiceover("Our example matrix has 2 rows and 2 columns, so it's a 2 by 2 matrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 👀]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a sample matrix
matrix = np.array([[1, 2], [3, 4]])

# Create a figure and axis
fig, ax = plt.subplots()

# Display the matrix as an image
ax.imshow(matrix, cmap='viridis', interpolation='nearest')

# Add grid lines
ax.grid(which='major', axis='both', linestyle='-', color='w', linewidth=2)

# Remove ticks
ax.set_xticks([])
ax.set_yticks([])

# Add labels for rows and columns
for i in range(matrix.shape[0]):
    ax.text(-0.3, i, f'Row {i+1}', horizontalalignment='right', verticalalignment='center')
for j in range(matrix.shape[1]):
    ax.text(j, -0.3, f'Column {j+1}', horizontalalignment='center', verticalalignment='top')

# Add labels for elements
for i in range(matrix.shape[0]):
    for j in range(matrix.shape[1]):
        ax.text(j, i, matrix[i, j], ha="center", va="center", color="w")

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of our example matrix. The rows and columns are labeled, and each element is shown in its respective position.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- Matrix: Rectangular array of numbers 📜]
#v(20pt)
#only("2-")[- Rows: Horizontal lines ↔]
#v(20pt)
#only("3-")[- Columns: Vertical lines ↕]
#v(20pt)
#only("4-")[- Elements: Numbers inside the matrix 🔢]
#v(20pt)
#only("5-")[- Dimensions: Number of rows × Number of columns 📏]
#only("1")[
#voiceover("To summarize, a matrix is a rectangular array of numbers.")
]
#only("2")[
#voiceover("It has horizontal lines called rows,")
]
#only("3")[
#voiceover("vertical lines called columns,")
]
#only("4")[
#voiceover("and the numbers inside are called elements.")
]
#only("5")[
#voiceover("The dimensions of a matrix are given by the number of rows times the number of columns.")
]
]