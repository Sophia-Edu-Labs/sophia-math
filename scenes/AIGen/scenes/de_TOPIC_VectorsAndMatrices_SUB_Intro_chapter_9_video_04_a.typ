#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrixaddition]
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
#voiceover("Großartig! Du hast diese Matrizen korrekt addiert. Lass uns die Lösung Schritt für Schritt durchgehen. Zuerst haben wir Matrix A.")
]

#only("2")[
#voiceover("Als nächstes haben wir Matrix B.")
]

#only("3")[
#voiceover("Um diese Matrizen zu addieren, addieren wir die entsprechenden Elemente in jeder Position.")
]

#only("4")[
#voiceover("Also addieren wir 3 und 0, 4 und 5, 1 und 7 und schließlich 2 und 8.")
]

#only("5")[
#voiceover("Das ergibt unser Endergebnis: eine Matrix mit den Elementen 3, 9, 8 und 10.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verstehen der Matrixaddition]
#v(40pt)

#only("1-")[
- Entsprechende Elemente addieren 🧮
]

#v(20pt)

#only("2-")[
- Matrizen müssen die gleichen Dimensionen haben 📏
]

#v(20pt)

#only("3-")[
- Ergebnis hat die gleichen Dimensionen wie die Operanden 🔄
]

#v(20pt)

#only("4-")[
- Kommutativ: $A + B = B + A$ ↔️
]

#only("1")[
#voiceover("Lass uns einige wichtige Punkte zur Matrixaddition verstehen. Erstens addieren wir die entsprechenden Elemente in jeder Position.")
]

#only("2")[
#voiceover("Es ist wichtig zu beachten, dass die Matrizen für die Matrixaddition die gleichen Dimensionen haben müssen.")
]

#only("3")[
#voiceover("Die resultierende Matrix hat immer die gleichen Dimensionen wie die Operandenmatrizen.")
]

#only("4")[
#voiceover("Zuletzt ist die Matrixaddition kommutativ, das heißt A plus B ist gleich B plus A.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Matrixaddition]
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
#voiceover("Hier ist eine visuelle Darstellung unserer Matrixaddition. Wir sehen Matrix A links, Matrix B in der Mitte und das Ergebnis von A plus B rechts.")
]

#only("2")[
#voiceover("Beachte, wie jedes Element in der Ergebnismatrix die Summe der entsprechenden Elemente aus A und B ist.")
]

#only("3")[
#voiceover("Diese Visualisierung hilft uns zu verstehen, dass die Matrixaddition wirklich nur die elementweise Addition entsprechender Werte ist.")
]
]