#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Dimensions]
#v(40pt)

#only("1-")[What are the dimensions of the matrix [[1, 2, 3], [4, 5, 6]]?]
#v(20pt)

#only("-1")[a) 2x3]#only("2-")[#text(fill:green)[a) 2x3]]
#v(10pt)
#only("-2")[b) 3x2]#only("3-")[#text(fill:red)[b) 3x2]]
#v(10pt)
#only("-3")[c) 1x6]#only("4-")[#text(fill:red)[c) 1x6]]
#v(10pt)
#only("-4")[d) 6x1]#only("5-")[#text(fill:red)[d) 6x1]]

#only("1")[#voiceover("Great job! You've answered this question correctly. Let's break down why 2x3 is the right answer and why the other options are incorrect.")]

#only("2")[#voiceover("Option a, 2x3, is indeed the correct answer. The dimensions of a matrix are always given as rows by columns. In this case, we have 2 rows and 3 columns, hence 2x3.")]

#only("3")[#voiceover("Option b, 3x2, is incorrect. This would describe a matrix with 3 rows and 2 columns, which is not what we have here.")]

#only("4")[#voiceover("Option c, 1x6, is also incorrect. This would describe a matrix with 1 row and 6 columns, essentially a row vector with 6 elements.")]

#only("5")[#voiceover("Lastly, option d, 6x1, is incorrect as well. This would describe a matrix with 6 rows and 1 column, which is a column vector with 6 elements.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Matrix Dimensions]
#v(20pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

matrix = np.array([[1, 2, 3], [4, 5, 6]])

fig, ax = plt.subplots(figsize=(8, 6))
ax.matshow(matrix, cmap='viridis')

for (i, j), value in np.ndenumerate(matrix):
    ax.text(j, i, f'{value}', ha='center', va='center', fontsize=20)

ax.set_xticks(np.arange(matrix.shape[1]))
ax.set_yticks(np.arange(matrix.shape[0]))

plt.title('2x3 Matrix', fontsize=16)
plt.xlabel('Columns', fontsize=14)
plt.ylabel('Rows', fontsize=14)

plt.show()

```,
width: 360pt),
)
]
]
]

#v(20pt)

#only("2-")[- 2 rows ↔️]
#only("3-")[- 3 columns ⬇️]
#only("4-")[- Dimensions: 2x3 📏]

#only("1")[#voiceover("Let's visualize the 2x3 matrix we're dealing with. Here's a colorful representation of our matrix [[1, 2, 3], [4, 5, 6]].")]

#only("2")[#voiceover("As we can see, this matrix has 2 rows. We count the rows from top to bottom.")]

#only("3")[#voiceover("And it has 3 columns. We count the columns from left to right.")]

#only("4")[#voiceover("Therefore, the dimensions of this matrix are 2x3. Remember, we always state the number of rows first, then the number of columns. This is crucial when working with matrices, especially in operations like matrix multiplication where the dimensions need to match in a specific way.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(20pt)

#only("1-")[- Matrix dimensions: rows x columns 🔢]
#v(10pt)
#only("2-")[- Count rows from top to bottom ⬇️]
#v(10pt)
#only("3-")[- Count columns from left to right ➡️]
#v(10pt)
#only("4-")[- Order matters: rows first, then columns! 🔑]

#only("1")[#voiceover("Let's recap the key points about matrix dimensions.")]

#only("2")[#voiceover("First, remember that matrix dimensions are always given as rows by columns.")]

#only("3")[#voiceover("When counting rows, we start from the top and move downwards.")]

#only("4")[#voiceover("For columns, we count from left to right.")]

#only("5")[#voiceover("And crucially, the order matters! We always state the number of rows first, then the number of columns. This 2x3 matrix has 2 rows and 3 columns, not 3 columns and 2 rows. Keeping this in mind will help you avoid mistakes in future matrix problems.")]
]