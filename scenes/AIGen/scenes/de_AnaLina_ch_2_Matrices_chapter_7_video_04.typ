#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Inverse einer Matrix]
#v(40pt)
#only("1-")[- Eine Matrix $A$ hat eine Inverse, wenn $AA^(-1)=A^(-1)A=I$]
#v(20pt)
#only("2-")[- Beispiel: $mat(2, 1; 1, 2)$ hat die Inverse $mat(0.5, -0.25; -0.25, 0.5)$]
#only("1")[
#voiceover("Eine Matrix A hat eine Inverse, wenn es eine andere Matrix gibt, die als A hoch minus 1 bezeichnet wird, sodass, wenn A mit seiner Inversen multipliziert wird oder die Inverse mit A multipliziert wird, das Ergebnis die Einheitsmatrix I ist.")
]
#only("2")[
#voiceover("Zum Beispiel hat die Matrix mit den Elementen 2, 1, 1 und 2 die Inverse Matrix mit den Elementen 0.5, minus 0.25, minus 0.25 und 0.5.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Die Inverse finden]
#v(40pt)
#only("1-")[- Verschiedene Methoden: Gauss-Jordan-Elimination, Cramers Regel, usw. 🧮]
#v(20pt)
#only("2-")[- Beispiel mit Gauss-Jordan-Elimination: $mat(1, 2; 3, 4)$ → $mat(-2, 1; 1.5, -0.5)$]
#only("1")[
#voiceover("Es gibt verschiedene Methoden, um die Inverse einer Matrix zu finden, wie die Gauss-Jordan-Elimination und Cramers Regel.")
]
#only("2")[
#voiceover("Zum Beispiel können wir mit der Gauss-Jordan-Elimination feststellen, dass die Inverse der Matrix mit den Elementen 1, 2, 3 und 4 die Matrix mit den Elementen minus 2, 1, 1.5 und minus 0.5 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Define the original matrix and its inverse
A = np.array([[1, 2], [3, 4]])
A_inv = np.linalg.inv(A)

# Create a grid of points
x = np.linspace(-2, 2, 20)
y = np.linspace(-2, 2, 20)
X, Y = np.meshgrid(x, y)

# Apply the original matrix transformation
Z1 = np.zeros_like(X)
for i in range(X.shape[0]):
    for j in range(X.shape[1]):
        Z1[i,j] = np.dot(A, [X[i,j], Y[i,j]])[0]

# Apply the inverse matrix transformation
Z2 = np.zeros_like(X)
for i in range(X.shape[0]):
    for j in range(X.shape[1]):
        Z2[i,j] = np.dot(A_inv, [X[i,j], Y[i,j]])[0]

# Create the plot
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 6))

ax1.contourf(X, Y, Z1, alpha=0.5, cmap='viridis')
ax1.set_title('Original Matrix Transformation')
ax1.set_xlabel('x')
ax1.set_ylabel('y')

ax2.contourf(X, Y, Z2, alpha=0.5, cmap='viridis')
ax2.set_title('Inverse Matrix Transformation')
ax2.set_xlabel('x')
ax2.set_ylabel('y')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der Wirkung einer Matrix und ihrer Inversen. Das linke Diagramm zeigt die Transformation durch die ursprüngliche Matrix, während das rechte Diagramm zeigt, wie die Inverse diese Transformation rückgängig macht.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Inverse Matrix: $A A^{-1} = A^{-1} A = I$ 🔄]
#v(20pt)
#only("2-")[- Verschiedene Methoden zur Inversenfindung 🔍]
#v(20pt)
#only("3-")[- Inverse Matrix kehrt die Wirkung der ursprünglichen Matrix um 🔙]
#only("1")[
#voiceover("Zusammenfassend ist eine Inverse Matrix eine Matrix, die, wenn sie mit der ursprünglichen Matrix multipliziert wird, die Einheitsmatrix ergibt.")
]
#only("2")[
#voiceover("Es gibt verschiedene Methoden, um die Inverse einer Matrix zu finden, wie die Gauss-Jordan-Elimination und Cramers Regel.")
]
#only("3")[
#voiceover("Die Inverse Matrix kehrt die durch die ursprüngliche Matrix verursachte Transformation effektiv um.")
]
]