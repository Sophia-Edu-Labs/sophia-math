#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Adding Matrices 🧮]
#v(40pt)
#only("1-")[- Matrices are used in various applications 🌐]
#only("2-")[- Adding matrices is a fundamental operation 🔢]
#only("3-")[- Let's review the process step-by-step 📝]

#only("1")[
#voiceover("Let's review the concept of adding matrices. Matrices are powerful tools used in various fields, from computer graphics to data analysis.")
]
#only("2")[
#voiceover("Adding matrices is a fundamental operation that we often need to perform when working with these mathematical objects.")
]
#only("3")[
#voiceover("Let's go through the process step-by-step to refresh our understanding.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Addition: Rules 📏]
#v(40pt)
#only("1-")[- Matrices must have the same dimensions 📐]
#v(20pt)
#only("2-")[- Add corresponding elements 🔢]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create two 2x2 matrices
A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])

# Create a figure with 3 subplots
fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

# Plot matrix A
ax1.matshow(A, cmap='viridis')
ax1.set_title('Matrix A')
for (i, j), z in np.ndenumerate(A):
    ax1.text(j, i, f'{z}', ha='center', va='center')

# Plot matrix B
ax2.matshow(B, cmap='viridis')
ax2.set_title('Matrix B')
for (i, j), z in np.ndenumerate(B):
    ax2.text(j, i, f'{z}', ha='center', va='center')

# Plot the result of A + B
C = A + B
ax3.matshow(C, cmap='viridis')
ax3.set_title('A + B')
for (i, j), z in np.ndenumerate(C):
    ax3.text(j, i, f'{z}', ha='center', va='center')

# Remove axis ticks
for ax in [ax1, ax2, ax3]:
    ax.set_xticks([])
    ax.set_yticks([])

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [Matrix Addition Example],
)
]
]
]

#only("1")[
#voiceover("The first rule of matrix addition is that the matrices must have the same dimensions. This means they must have the same number of rows and columns.")
]
#only("2")[
#voiceover("To add matrices, we simply add the corresponding elements. That is, we add the elements in the same position in each matrix.")
]
#only("3")[
#voiceover("Let's look at an example. Here we have two 2-by-2 matrices, A and B. To add them, we add the corresponding elements. So, 1 plus 5 equals 6, 2 plus 6 equals 8, 3 plus 7 equals 10, and 4 plus 8 equals 12. The result is the matrix on the right.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary: Matrix Addition 📝]
#v(40pt)
#only("1-")[- Matrices must have same dimensions 📏]
#v(20pt)
#only("2-")[- Add corresponding elements 🔢]
#v(20pt)
#only("3-")[- Result: New matrix with same dimensions 🆕]
#v(20pt)
#only("4-")[- Useful in various applications 🌐]

#only("1")[
#voiceover("Let's recap what we've reviewed about matrix addition.")
]
#only("2")[
#voiceover("First, remember that we can only add matrices that have the same dimensions.")
]
#only("3")[
#voiceover("To add matrices, we add the corresponding elements in each position.")
]
#only("4")[
#voiceover("The result is a new matrix with the same dimensions as the original matrices.")
]
#only("5")[
#voiceover("This operation is crucial in various applications, from physics to computer science, making it an essential concept to understand in linear algebra.")
]
]