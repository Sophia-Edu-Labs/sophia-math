#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Matrices]
#v(40pt)

#only("1-")[
$A = mat(1, 1; 1, 1)$
]

#v(20pt)

#only("2-")[
$B = mat(2, 2; 2, 2)$
]

#v(20pt)

#only("3-")[
$A + B = mat(1, 1; 1, 1) + mat(2, 2; 2, 2)$
]

#v(20pt)

#only("4-")[
$= mat(1+2, 1+2; 1+2, 1+2)$
]

#v(20pt)

#only("5-")[
$= mat(3, 3; 3, 3)$
]

#only("1")[
#voiceover("Not quite. Let's review the correct solution step-by-step. We start with matrix A, which is a 2 by 2 matrix.")
]

#only("2")[
#voiceover("Next, we have matrix B, which is also a 2 by 2 matrix.")
]

#only("3")[
#voiceover("To add these matrices, we add the corresponding elements in each position.")
]

#only("4")[
#voiceover("We add 1 and 2 in each position of the resulting matrix.")
]

#only("5")[
#voiceover("This gives us our final result: a 2 by 2 matrix with all elements equal to 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def plot_matrix(ax, matrix, pos, title):
    ax.matshow(matrix, cmap='Blues')
    for (i, j), z in np.ndenumerate(matrix):
        ax.text(j, i, f'{z}', ha='center', va='center')
    ax.set_xticks([])
    ax.set_yticks([])
    ax.set_title(title)

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

A = np.array([[1, 1], [1, 1]])
B = np.array([[2, 2], [2, 2]])
C = A + B

plot_matrix(ax1, A, 131, 'Matrix A')
plot_matrix(ax2, B, 132, 'Matrix B')
plot_matrix(ax3, C, 133, 'A + B')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Here's a visual representation of our matrix addition. We can see Matrix A on the left, with all elements being 1.")
]

#only("2")[
#voiceover("In the middle, we have Matrix B, where all elements are 2.")
]

#only("3")[
#voiceover("And on the right, we see the result of A plus B, where all elements are 3. This visual clearly shows how we add corresponding elements from each matrix.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Points]
#v(40pt)

#only("1-")[- Matrix addition is element-wise 🧮]
#v(20pt)
#only("2-")[- Matrices must have same dimensions ↔️↕️]
#v(20pt)
#only("3-")[- Result has same dimensions as original matrices 📏]
#v(20pt)
#only("4-")[- Commutative: $A + B = B + A$ 🔄]

#only("1")[
#voiceover("Let's recap some key points about matrix addition. First, matrix addition is performed element-wise. We add corresponding elements from each matrix.")
]

#only("2")[
#voiceover("It's important to note that we can only add matrices of the same dimensions. In this case, both A and B were 2 by 2 matrices.")
]

#only("3")[
#voiceover("The resulting matrix will always have the same dimensions as the original matrices.")
]

#only("4")[
#voiceover("Lastly, matrix addition is commutative. This means A plus B equals B plus A.")
]
]