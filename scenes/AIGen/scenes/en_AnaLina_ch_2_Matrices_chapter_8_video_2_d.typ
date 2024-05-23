#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Transposition]
#v(40pt)
What is the transpose of $mat(1, 2; 3, 4)$?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) $mat(1, 2; 3, 4)$]#only("2-")[#text(fill:red)[a) $mat(1, 2; 3, 4)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $mat(2, 1; 4, 3)$]#only("3-")[#text(fill:red)[b) $mat(2, 1; 4, 3)$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) $mat(1, 3; 2, 4)$]#only("4-")[#text(fill:green)[c) $mat(1, 3; 2, 4)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $mat(4, 3; 2, 1)$]#only("5-")[#text(fill:red)[d) $mat(4, 3; 2, 1)$]]

#only("1")[#voiceover("That's okay! Let's review the correct solution.")]
#only("2")[#voiceover("Option a is incorrect because it's the original matrix, not the transpose.")]
#only("3")[#voiceover("Option b is also incorrect. It swaps some elements but not in the right way for a transpose.")]
#only("4")[#voiceover("Option c is correct! The transpose is obtained by interchanging the rows and columns.")]
#only("5")[#voiceover("And option d is incorrect. It's close to the transpose but the elements are in the wrong order.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
Let's see how to find the transpose step by step:
#v(20pt)
#only("1-")[- Start with the original matrix: $mat(1, 2; 3, 4)$]
#v(20pt)
#only("2-")[- Interchange the first row with the first column: $mat(1, 3; 2, 4)$]
#v(20pt)
#only("3-")[- The result is the transpose: $mat(1, 3; 2, 4)$ ✅]
#v(40pt)
#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

matrix = np.array([[1, 2], [3, 4]])
transpose = matrix.T

ax1.matshow(matrix, cmap='viridis')
for i in range(matrix.shape[0]):
    for j in range(matrix.shape[1]):
        c = matrix[i,j]
        ax1.text(j, i, str(c), va='center', ha='center')
ax1.set_title("Original Matrix")

ax2.matshow(transpose, cmap='viridis')
for i in range(transpose.shape[0]):
    for j in range(transpose.shape[1]):
        c = transpose[i,j]
        ax2.text(j, i, str(c), va='center', ha='center')
ax2.set_title("Transposed Matrix")

plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]

#only("1")[#voiceover("We start with the original matrix, which is 1, 2; 3, 4.")]
#only("2")[#voiceover("To find the transpose, we interchange the first row with the first column, and the second row with the second column. This gives us 1, 3; 2, 4.")]
#only("3")[#voiceover("And that's it! The resulting matrix, 1, 3; 2, 4, is the transpose of our original matrix.")]
#only("4")[#voiceover("Here's a visual representation. On the left is our original matrix, and on the right is the transposed matrix. Notice how the rows and columns have been interchanged.")]
]
]