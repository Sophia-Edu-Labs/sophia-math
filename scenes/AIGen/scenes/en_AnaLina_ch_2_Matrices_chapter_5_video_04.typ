#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication Recap 🎓]

#v(40pt)

#only("1-")[
- Multiply rows by columns 🔢
]

#v(20pt)

#only("2-")[
- Combine results to form new matrix 🆕
]

#v(40pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])
C = np.dot(A, B)

fig, ax = plt.subplots(figsize=(6, 6))

ax.matshow(A, cmap='Reds')
for i in range(2):
    for j in range(2):
        c = A[j,i]
        ax.text(i, j, str(c), va='center', ha='center', fontsize=20)

ax.matshow(B, cmap='Blues')
for i in range(2):
    for j in range(2):
        c = B[j,i]
        ax.text(i+2.5, j, str(c), va='center', ha='center', fontsize=20)

ax.matshow(C, cmap='Greens')
for i in range(2):
    for j in range(2):
        c = C[j,i]
        ax.text(i+5, j, str(c), va='center', ha='center', fontsize=20)

ax.set_xticks([])
ax.set_yticks([])
ax.set_xlim(-0.5, 7.5)
ax.set_ylim(1.5, -0.5)

ax.text(1, -0.5, r'$A$', fontsize=20, va='top', ha='center')
ax.text(3.5, -0.5, r'$B$', fontsize=20, va='top', ha='center')
ax.text(6, -0.5, r'$C = AB$', fontsize=20, va='top', ha='center')
ax.text(4.5, 0.5, r'$\\times$', fontsize=30, va='center', ha='center')
ax.text(2.5, 0.5, r'$=$', fontsize=30, va='center', ha='center')

plt.tight_layout()
plt.show()
```, width: 360pt))
]
]

#only("1")[
#voiceover("Matrix multiplication involves multiplying rows by columns.")
]

#only("2")[
#voiceover("The results of these multiplications are then combined to form a new matrix.")
]

#only("3")[
#voiceover("For example, when we multiply matrix A by matrix B, we multiply the rows of A by the columns of B. This gives us the elements of the resulting matrix C.")
]

#v(40pt)

#only("4-")[
$mat(A)_(m × n) · mat(B)_(n × p) = mat(C)_(m × p)$
]

#only("4")[
#voiceover("In general, if we multiply an m by n matrix A with an n by p matrix B, the resulting matrix C will have dimensions m by p.")
]

]
]