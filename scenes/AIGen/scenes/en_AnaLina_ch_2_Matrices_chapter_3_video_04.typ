#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap scalar multiplication of matrices.")
]
#text(size: 30pt, weight: "bold")[Scalar Multiplication]
// The title "Scalar Multiplication" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("When we multiply a matrix by a scalar, we multiply each element of the matrix by that scalar.")
]
#only("2-")[
- Multiply each element by scalar
]
// The bullet point is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("For example, if we have a matrix A equals mat 1, 2; 3, 4 and multiply it by the scalar 2, we get...")
]
#only("3-")[
$A = mat(1, 2; 3, 4)$
]
// Matrix A is shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("2 times mat 1, 2; 3, 4 equals mat 2, 4; 6, 8.")
]
#only("4-")[
$2A = mat(2, 4; 6, 8)$
]
// The result of scalar multiplication is shown from slide 4 onward
#v(40pt)
#only("5")[
#voiceover("Each element of the original matrix is multiplied by 2.")
]
#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(1, 2, figsize=(10, 4))

A = np.array([[1, 2], [3, 4]])
scaled_A = 2 * A

ax[0].matshow(A, cmap='viridis')
for i in range(2):
    for j in range(2):
        c = A[j,i]
        ax[0].text(i, j, str(c), va='center', ha='center')
ax[0].set_title('Matrix A')

ax[1].matshow(scaled_A, cmap='viridis')
for i in range(2):
    for j in range(2):
        c = scaled_A[j,i]
        ax[1].text(i, j, str(c), va='center', ha='center')
ax[1].set_title('2A')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows the original matrix A and the result of scalar multiplication 2A, with the elements of the matrices displayed. This figure is shown from slide 5 onward.
#only("6")[
#voiceover("This operation preserves the structure of the matrix while scaling each element.")
]
#only("6-")[
- Preserves matrix structure 🧱
- Scales each element 📏
]
// The bullet points are shown from slide 6 onward
]