#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Matrices]
#v(40pt)

#only("1-")[Given matrices:]
#v(10pt)
#only("1-")[A = $mat(1, 2; 3, 4)$]
#v(10pt)
#only("1-")[B = $mat(2, 0; 1, 3)$]
#v(20pt)

#only("2-")[Step 1: Add corresponding elements]
#v(10pt)
#only("2-")[$mat(1+2, 2+0; 3+1, 4+3)$]
#v(20pt)

#only("3-")[Step 2: Perform the addition]
#v(10pt)
#only("3-")[$mat(3, 2; 4, 7)$]

#only("1")[
#voiceover("Not quite. Let's review the correct solution step-by-step. We start with two matrices, A and B.")
]

#only("2")[
#voiceover("To add matrices, we add the corresponding elements. That means we add the elements in the same position in each matrix.")
]

#only("3")[
#voiceover("After performing the addition, we get our result: a 2 by 2 matrix with 3 in the top left, 2 in the top right, 4 in the bottom left, and 7 in the bottom right.")
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

def create_matrix_plot(matrix, title):
    fig, ax = plt.subplots(figsize=(4, 4))
    ax.matshow(matrix, cmap='viridis')
    for (i, j), z in np.ndenumerate(matrix):
        ax.text(j, i, f'{z}', ha='center', va='center', color='white', fontweight='bold')
    ax.set_xticks([])
    ax.set_yticks([])
    ax.set_title(title)
    return fig

A = np.array([[1, 2], [3, 4]])
B = np.array([[2, 0], [1, 3]])
C = A + B

fig1 = create_matrix_plot(A, 'Matrix A')
fig2 = create_matrix_plot(B, 'Matrix B')
fig3 = create_matrix_plot(C, 'Result: A + B')

plt.close(fig1)
plt.close(fig2)
plt.close(fig3)

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

ax1.imshow(A, cmap='viridis')
ax1.set_title('Matrix A')
ax2.imshow(B, cmap='viridis')
ax2.set_title('Matrix B')
ax3.imshow(C, cmap='viridis')
ax3.set_title('Result: A + B')

for ax in (ax1, ax2, ax3):
    ax.set_xticks([])
    ax.set_yticks([])

for (i, j), z in np.ndenumerate(A):
    ax1.text(j, i, f'{z}', ha='center', va='center', color='white', fontweight='bold')
for (i, j), z in np.ndenumerate(B):
    ax2.text(j, i, f'{z}', ha='center', va='center', color='white', fontweight='bold')
for (i, j), z in np.ndenumerate(C):
    ax3.text(j, i, f'{z}', ha='center', va='center', color='white', fontweight='bold')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Let's visualize this addition process. Here we have our matrices A and B represented visually, with each element shown in its position.")
]

#only("2")[
#voiceover("As we add these matrices, we combine the values in corresponding positions. The result is our new matrix, shown on the right.")
]

#only("3")[
#voiceover("This visual representation helps us see how each element in the result matrix is formed by adding the corresponding elements from matrices A and B.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Points 🔑]
#v(40pt)

#only("1-")[- Matrix addition is element-wise 🧮]
#v(20pt)
#only("2-")[- Matrices must have the same dimensions ↔️↕️]
#v(20pt)
#only("3-")[- Result has the same dimensions as original matrices 📏]

#only("1")[
#voiceover("Let's recap some key points about matrix addition. First, matrix addition is performed element-wise. This means we add corresponding elements from each matrix.")
]

#only("2")[
#voiceover("Secondly, it's crucial to remember that we can only add matrices that have the same dimensions. In this case, both our matrices were 2 by 2.")
]

#only("3")[
#voiceover("Lastly, the resulting matrix will always have the same dimensions as the original matrices. Here, our result is also a 2 by 2 matrix.")
]
]