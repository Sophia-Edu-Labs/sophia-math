#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication]
#v(40pt)

#only("1-")[
$A = mat(2, 2; 2, 2)$  $B = mat(1, 1; 1, 1)$
]

#v(20pt)

#only("2-")[
$C = A dot B = mat(2, 2; 2, 2) dot mat(1, 1; 1, 1)$
]

#v(20pt)

#only("3-")[
$= mat((2 dot 1 + 2 dot 1), (2 dot 1 + 2 dot 1); (2 dot 1 + 2 dot 1), (2 dot 1 + 2 dot 1))$
]

#v(20pt)

#only("4-")[
$= mat(4, 4; 4, 4)$
]

#only("1")[
#voiceover("Great job! That's the correct answer. Let's walk through the solution step-by-step. We start with two 2x2 matrices: A and B.")
]

#only("2")[
#voiceover("To multiply these matrices, we'll use the standard matrix multiplication method. We multiply each row of A with each column of B.")
]

#only("3")[
#voiceover("Let's break it down: For the top-left element, we calculate 2 times 1 plus 2 times 1, which equals 4. We do this for all four elements of the resulting matrix.")
]

#only("4")[
#voiceover("After simplifying, we get our final result: a 2x2 matrix with all elements equal to 4. This matches our answer of double brackets 4, 4, 4, 4 double brackets.")
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

def matrix_plot(matrix, title):
    plt.imshow(matrix, cmap='viridis')
    plt.colorbar()
    for (i, j), value in np.ndenumerate(matrix):
        plt.text(j, i, f'{value:.0f}', ha='center', va='center')
    plt.title(title)
    plt.axis('off')

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

A = np.array([[2, 2], [2, 2]])
B = np.array([[1, 1], [1, 1]])
C = np.dot(A, B)

plt.sca(ax1)
matrix_plot(A, 'Matrix A')

plt.sca(ax2)
matrix_plot(B, 'Matrix B')

plt.sca(ax3)
matrix_plot(C, 'Result: A × B')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Here's a visual representation of our matrix multiplication. On the left, we have matrix A, all twos. In the middle, matrix B, all ones.")
]

#only("2")[
#voiceover("And on the right, we see our result: a matrix of all fours. This visualization helps us see how the values in A and B combine to give us our final result.")
]

#only("3")[
#voiceover("Remember, in matrix multiplication, each element in the result is the sum of products of corresponding row and column elements. That's why we get fours: two times one plus two times one, for each position.")
]
]