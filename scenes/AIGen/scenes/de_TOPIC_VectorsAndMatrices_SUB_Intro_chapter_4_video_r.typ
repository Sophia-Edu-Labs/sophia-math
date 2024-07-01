#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Überblick: Matrizen addieren 🧮]
#v(40pt)
#only("1-")[- Matrizen werden in verschiedenen Anwendungen verwendet 🌐]
#only("2-")[- Das Addieren von Matrizen ist eine grundlegende Operation 🔢]
#only("3-")[- Lass uns den Prozess Schritt für Schritt durchgehen 📝]

#only("1")[
#voiceover("Lass uns das Konzept des Addierens von Matrizen überprüfen. Matrizen sind mächtige Werkzeuge, die in verschiedenen Bereichen verwendet werden, von Computergrafik bis Datenanalyse.")
]
#only("2")[
#voiceover("Das Addieren von Matrizen ist eine grundlegende Operation, die wir oft durchführen müssen, wenn wir mit diesen mathematischen Objekten arbeiten.")
]
#only("3")[
#voiceover("Lass uns den Prozess Schritt für Schritt durchgehen, um unser Verständnis aufzufrischen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrixaddition: Regeln 📏]
#v(40pt)
#only("1-")[- Matrizen müssen die gleichen Dimensionen haben 📐]
#v(20pt)
#only("2-")[- Entsprechende Elemente addieren 🔢]
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
caption: [Beispiel der Matrixaddition],
)
]
]
]

#only("1")[
#voiceover("Die erste Regel der Matrixaddition ist, dass die Matrizen die gleichen Dimensionen haben müssen. Das bedeutet, sie müssen die gleiche Anzahl von Zeilen und Spalten haben.")
]
#only("2")[
#voiceover("Um Matrizen zu addieren, addieren wir einfach die entsprechenden Elemente. Das heißt, wir addieren die Elemente an der gleichen Position in jeder Matrix.")
]
#only("3")[
#voiceover("Schauen wir uns ein Beispiel an. Hier haben wir zwei 2x2-Matrizen, A und B. Um sie zu addieren, addieren wir die entsprechenden Elemente. Also, 1 plus 5 ergibt 6, 2 plus 6 ergibt 8, 3 plus 7 ergibt 10 und 4 plus 8 ergibt 12. Das Ergebnis ist die Matrix auf der rechten Seite.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung: Matrixaddition 📝]
#v(40pt)
#only("1-")[- Matrizen müssen die gleichen Dimensionen haben 📏]
#v(20pt)
#only("2-")[- Entsprechende Elemente addieren 🔢]
#v(20pt)
#only("3-")[- Ergebnis: Neue Matrix mit gleichen Dimensionen 🆕]
#v(20pt)
#only("4-")[- Nützlich in verschiedenen Anwendungen 🌐]

#only("1")[
#voiceover("Lass uns zusammenfassen, was wir über die Matrixaddition gelernt haben.")
]
#only("2")[
#voiceover("Erstens, denke daran, dass wir nur Matrizen addieren können, die die gleichen Dimensionen haben.")
]
#only("3")[
#voiceover("Um Matrizen zu addieren, addieren wir die entsprechenden Elemente an jeder Position.")
]
#only("4")[
#voiceover("Das Ergebnis ist eine neue Matrix mit den gleichen Dimensionen wie die ursprünglichen Matrizen.")
]
#only("5")[
#voiceover("Diese Operation ist in verschiedenen Anwendungen von der Physik bis zur Informatik von entscheidender Bedeutung und macht sie zu einem wesentlichen Konzept in der linearen Algebra.")
]
]