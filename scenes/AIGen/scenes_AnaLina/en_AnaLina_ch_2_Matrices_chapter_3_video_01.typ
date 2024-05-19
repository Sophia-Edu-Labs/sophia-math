#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Scalar Multiplication of Matrices]
#v(40pt)
#only("1-")[- Multiply each element of the matrix by a scalar]
// The main point about scalar multiplication is shown from slide 1 onward
#v(20pt)
#only("2-")[- Example: $2 mat(1, 2; 3, 4) = mat(2, 4; 6, 8)$]
// The example of scalar multiplication is shown from slide 2 onward
#only("1")[
#voiceover("Scalar multiplication of a matrix involves multiplying each element of the matrix by a scalar, which is a single number.")
]
#only("2")[
#voiceover("For example, if we multiply the matrix with elements 1, 2, 3, and 4 by the scalar 2, we get a new matrix where each element is multiplied by 2, resulting in 2, 4, 6, and 8.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

matrix = np.array([[1, 2], [3, 4]])
scalar = 2
result = scalar * matrix

ax1.matshow(matrix, cmap='viridis')
for i in range(matrix.shape[0]):
    for j in range(matrix.shape[1]):
        ax1.text(j, i, str(matrix[i, j]), va='center', ha='center')
ax1.set_title('Original Matrix')
ax1.axis('off')

ax2.matshow(result, cmap='viridis')
for i in range(result.shape[0]):
    for j in range(result.shape[1]):
        ax2.text(j, i, str(result[i, j]), va='center', ha='center')
ax2.set_title('Scalar Multiplied Matrix')
ax2.axis('off')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// The visual representation of scalar multiplication is shown using a matplotlib plot
#only("1")[
#voiceover("Here's a visual representation of scalar multiplication. On the left, we have the original matrix, and on the right, we have the result after multiplying each element by 2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Properties]
#v(40pt)
#only("1-")[- Commutative: $c mat(A) = mat(A) c$]
#v(20pt)
#only("2-")[- Associative: $(c d) mat(A) = c (d mat(A))$]
#v(20pt)
#only("3-")[- Distributive: $c (mat(A) + mat(B)) = c mat(A) + c mat(B)$]
#only("1")[
#voiceover("Scalar multiplication has several important properties. First, it's commutative, meaning that multiplying a matrix A by a scalar c is the same as multiplying c by A.")
]
#only("2")[
#voiceover("Second, it's associative. If we multiply a matrix A by scalars c and d, we can either multiply c and d first and then multiply the result by A, or we can multiply d by A first and then multiply the result by c.")
]
#only("3")[
#voiceover("Finally, scalar multiplication is distributive over matrix addition. Multiplying the sum of matrices A and B by a scalar c is the same as multiplying A by c and B by c separately and then adding the results.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Scalar multiplication: Multiply each element of a matrix by a scalar 🧮]
#v(20pt)
#only("2-")[- Properties: Commutative, associative, and distributive 📊]
#only("1")[
#voiceover("In summary, scalar multiplication of a matrix involves multiplying each element of the matrix by a single number, called a scalar.")
]
#only("2")[
#voiceover("This operation has several important properties, including being commutative, associative, and distributive over matrix addition.")
]
]