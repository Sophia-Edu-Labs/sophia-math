#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Addition]
#v(40pt)

#only("1-")[
$A = mat(3, 4; 1, 2)$
]

#v(20pt)

#only("2-")[
$B = mat(0, 5; 7, 8)$
]

#v(20pt)

#only("3-")[
$A + B = mat(3, 4; 1, 2) + mat(0, 5; 7, 8)$
]

#v(20pt)

#only("4-")[
$= mat(3+0, 4+5; 1+7, 2+8)$
]

#v(20pt)

#only("5-")[
$= mat(3, 9; 8, 10)$
]

#only("1")[
#voiceover("Great job! You've correctly added these matrices. Let's go through the solution step-by-step. First, we have matrix A.")
]

#only("2")[
#voiceover("Next, we have matrix B.")
]

#only("3")[
#voiceover("To add these matrices, we add the corresponding elements in each position.")
]

#only("4")[
#voiceover("So, we add 3 and 0, 4 and 5, 1 and 7, and finally 2 and 8.")
]

#only("5")[
#voiceover("This gives us our final result: a matrix with elements 3, 9, 8, and 10.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Matrix Addition]
#v(40pt)

#only("1-")[
- Add corresponding elements 🧮
]

#v(20pt)

#only("2-")[
- Matrices must have same dimensions 📏
]

#v(20pt)

#only("3-")[
- Result has same dimensions as operands 🔄
]

#v(20pt)

#only("4-")[
- Commutative: $A + B = B + A$ ↔️
]

#only("1")[
#voiceover("Let's understand some key points about matrix addition. First, we add the corresponding elements in each position.")
]

#only("2")[
#voiceover("It's important to note that for matrix addition to be possible, the matrices must have the same dimensions.")
]

#only("3")[
#voiceover("The resulting matrix will always have the same dimensions as the operand matrices.")
]

#only("4")[
#voiceover("Lastly, matrix addition is commutative, meaning A plus B equals B plus A.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Matrix Addition]
#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def plot_matrix(ax, matrix, pos, title):
    ax.table(cellText=matrix, loc='center', cellLoc='center')
    ax.set_title(title)
    ax.axis('off')

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

A = np.array([[3, 4], [1, 2]])
B = np.array([[0, 5], [7, 8]])
C = A + B

plot_matrix(ax1, A, [0, 0], 'Matrix A')
plot_matrix(ax2, B, [0, 0], 'Matrix B')
plot_matrix(ax3, C, [0, 0], 'A + B')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Here's a visual representation of our matrix addition. We can see matrix A on the left, matrix B in the middle, and the result of A plus B on the right.")
]

#only("2")[
#voiceover("Notice how each element in the result matrix is the sum of the corresponding elements from A and B.")
]

#only("3")[
#voiceover("This visual helps us understand that matrix addition is really just element-wise addition of corresponding values.")
]
]