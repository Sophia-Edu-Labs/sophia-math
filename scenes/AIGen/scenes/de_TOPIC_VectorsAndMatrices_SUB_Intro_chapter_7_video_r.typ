#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Überblick: Matrixdimensionen 📏]
#v(40pt)
#only("1-")[- Matrizen sind grundlegend in der linearen Algebra 🧮]
#only("2-")[- Dimensionen helfen, die Struktur einer Matrix zu beschreiben 🏗️]
#only("3-")[- Lass uns überprüfen, wie wir Matrixdimensionen definieren 🔍]

#only("1")[
#voiceover("Lass uns das Konzept der Matrixdimensionen überprüfen. Matrizen sind grundlegende Werkzeuge in der linearen Algebra, die verwendet werden, um Systeme linearer Gleichungen und lineare Transformationen darzustellen.")
]

#only("2")[
#voiceover("Die Dimensionen einer Matrix helfen uns, ihre Struktur zu beschreiben und sind entscheidend für verschiedene Matrixoperationen.")
]

#only("3")[
#voiceover("Lass uns überprüfen, wie wir Matrixdimensionen definieren und verstehen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrixdimensionen]
#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create a 3x4 matrix
matrix = np.array([[1, 2, 3, 4],
                   [5, 6, 7, 8],
                   [9, 10, 11, 12]])

fig, ax = plt.subplots(figsize=(8, 6))

# Plot the matrix
im = ax.imshow(matrix, cmap='coolwarm')

# Add text annotations
for i in range(matrix.shape[0]):
    for j in range(matrix.shape[1]):
        text = ax.text(j, i, matrix[i, j], ha="center", va="center", color="black")

ax.set_title("3x4 Matrix")
ax.set_xlabel("Columns")
ax.set_ylabel("Rows")

# Add arrows and labels for dimensions
ax.annotate('', xy=(4, 1.5), xytext=(0, 1.5), arrowprops=dict(arrowstyle='<->'))
ax.text(2, 1.8, '4 columns', ha='center', va='center')

ax.annotate('', xy=(-0.5, 0), xytext=(-0.5, 3), arrowprops=dict(arrowstyle='<->'))
ax.text(-0.8, 1.5, '3 rows', ha='center', va='center', rotation=90)

plt.colorbar(im)
plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]
]

#only("1")[
#voiceover("Betrachten wir dieses Beispiel einer Matrix. Wie wir sehen können, hat diese Matrix 3 Zeilen und 4 Spalten.")
]

#only("2-")[Dimensionen: $3 times 4$ oder $3 × 4$]

#only("2")[
#voiceover("Wir beschreiben die Dimensionen dieser Matrix als 3 mal 4, oder 3 mal 4. Diese Notation gibt uns die Anzahl der Zeilen gefolgt von der Anzahl der Spalten an.")
]

#only("3-")[Allgemeine Form: $m times n$ Matrix]
#v(10pt)
#only("3-")[- $m$: Anzahl der Zeilen]
#only("3-")[- $n$: Anzahl der Spalten]

#only("3")[
#voiceover("Im Allgemeinen beschreiben wir eine Matrix mit m Zeilen und n Spalten als eine m mal n Matrix. Hierbei steht m für die Anzahl der Zeilen und n für die Anzahl der Spalten.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Matrixdimensionen: Zeilen × Spalten 🔢]
#only("2-")[- Beispiel: $3 times 4$ Matrix hat 3 Zeilen, 4 Spalten]
#only("3-")[- Notation: $m times n$ (m Zeilen, n Spalten)]
#only("4-")[- Wichtig für Matrixoperationen ✖️➕]

#only("1")[
#voiceover("Zusammenfassend werden die Dimensionen einer Matrix als die Anzahl der Zeilen mal die Anzahl der Spalten angegeben.")
]

#only("2")[
#voiceover("Zum Beispiel hat eine 3 mal 4 Matrix 3 Zeilen und 4 Spalten.")
]

#only("3")[
#voiceover("Wir verwenden die Notation m mal n, um eine Matrix mit m Zeilen und n Spalten zu beschreiben.")
]

#only("4")[
#voiceover("Das Verständnis der Matrixdimensionen ist entscheidend für die Durchführung verschiedener Matrixoperationen, wie Addition und Multiplikation.")
]
]