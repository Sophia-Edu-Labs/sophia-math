#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildung & Matrixmultiplikation]

#v(40pt)

#only("1-")[- Lineare Abbildung dargestellt durch eine Matrix]
#only("2-")[- Das Bild eines Vektors finden]
#only("3-")[- Die Matrix mit dem Vektor multiplizieren]

#v(40pt)

#only("1")[
#voiceover("Eine lineare Abbildung kann durch eine Matrix dargestellt werden.")
]

#only("2")[
#voiceover("Um das Bild eines Vektors unter dieser linearen Abbildung zu finden...")
]

#only("3")[
#voiceover("Multiplizieren wir die Matrix mit dem Vektor.")
]

#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the matrix and vector
A = np.array([[2, 0], [0, 3]])
v = np.array([1, 2])

# Compute the image of the vector
w = A @ v

# Create the plot
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the original vector
ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='blue', label='Original vector')

# Plot the transformed vector
ax.quiver(0, 0, w[0], w[1], angles='xy', scale_units='xy', scale=1, color='red', label='Transformed vector')

# Add grid and labels
ax.grid(True)
ax.set_xlim(-1, 7)
ax.set_ylim(-1, 7)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]

#only("4")[
#voiceover("Zum Beispiel, wenn wir eine Matrix A gleich mat(2, 0; 0, 3) und einen Vektor v gleich mat(1; 2) haben, wird das Bild von v unter der linearen Abbildung, die durch A dargestellt wird, durch Multiplikation von A und v erhalten.")
]

#only("5-")[
$ A v = mat(2, 0; 0, 3) mat(1; 2) = mat(2; 6) $
]

#only("5")[
#voiceover("Dies ergibt den neuen Vektor mat(2; 6), der das Bild von v unter der linearen Abbildung ist.")
]

#only("6")[
#voiceover("Also denken Sie daran, um das Bild eines Vektors unter einer linearen Abbildung zu finden, multiplizieren wir die Matrix, die die Abbildung darstellt, mit dem Vektor. 🧮✨")
]

]
]