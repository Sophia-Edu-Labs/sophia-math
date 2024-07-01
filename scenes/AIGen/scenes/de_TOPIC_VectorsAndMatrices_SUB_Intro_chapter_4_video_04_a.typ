#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrizen addieren]
#v(40pt)

#only("1-")[
$A = mat(1, 1; 1, 1)$
]

#v(20pt)

#only("2-")[
$B = mat(2, 2; 2, 2)$
]

#v(20pt)

#only("3-")[
$A + B = mat(1, 1; 1, 1) + mat(2, 2; 2, 2)$
]

#v(20pt)

#only("4-")[
$= mat(1+2, 1+2; 1+2, 1+2)$
]

#v(20pt)

#only("5-")[
$= mat(3, 3; 3, 3)$
]

#only("1")[
#voiceover("Großartig! Du hast diese Matrizen korrekt addiert. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Matrix A, die eine 2x2-Matrix ist.")
]

#only("2")[
#voiceover("Als nächstes haben wir die Matrix B, die ebenfalls eine 2x2-Matrix ist.")
]

#only("3")[
#voiceover("Um diese Matrizen zu addieren, addieren wir die entsprechenden Elemente in jeder Position.")
]

#only("4")[
#voiceover("Wir addieren 1 und 2 in jeder Position der resultierenden Matrix.")
]

#only("5")[
#voiceover("Das gibt uns unser Endergebnis: eine 2x2-Matrix, in der alle Elemente gleich 3 sind.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def plot_matrix(ax, matrix, pos, title):
    ax.matshow(matrix, cmap='Blues')
    for (i, j), z in np.ndenumerate(matrix):
        ax.text(j, i, f'{z}', ha='center', va='center')
    ax.set_xticks([])
    ax.set_yticks([])
    ax.set_title(title)

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

A = np.array([[1, 1], [1, 1]])
B = np.array([[2, 2], [2, 2]])
C = A + B

plot_matrix(ax1, A, 131, 'Matrix A')
plot_matrix(ax2, B, 132, 'Matrix B')
plot_matrix(ax3, C, 133, 'A + B')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Hier ist eine visuelle Darstellung unserer Matrixaddition. Wir sehen Matrix A links, mit allen Elementen gleich 1.")
]

#only("2")[
#voiceover("In der Mitte haben wir Matrix B, wo alle Elemente 2 sind.")
]

#only("3")[
#voiceover("Und rechts sehen wir das Ergebnis von A plus B, wo alle Elemente 3 sind. Diese Darstellung zeigt deutlich, wie wir die entsprechenden Elemente aus jeder Matrix addieren.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Punkte]
#v(40pt)

#only("1-")[- Matrixaddition erfolgt elementweise 🧮]
#v(20pt)
#only("2-")[- Matrizen müssen die gleichen Dimensionen haben ↔️↕️]
#v(20pt)
#only("3-")[- Das Ergebnis hat die gleichen Dimensionen wie die ursprünglichen Matrizen 📏]
#v(20pt)
#only("4-")[- Kommutativ: $A + B = B + A$ 🔄]

#only("1")[
#voiceover("Lass uns einige wichtige Punkte zur Matrixaddition zusammenfassen. Erstens, die Matrixaddition erfolgt elementweise. Wir addieren die entsprechenden Elemente aus jeder Matrix.")
]

#only("2")[
#voiceover("Es ist wichtig zu beachten, dass wir nur Matrizen mit den gleichen Dimensionen addieren können. In diesem Fall waren sowohl A als auch B 2x2-Matrizen.")
]

#only("3")[
#voiceover("Die resultierende Matrix hat immer die gleichen Dimensionen wie die ursprünglichen Matrizen.")
]

#only("4")[
#voiceover("Zuletzt ist die Matrixaddition kommutativ. Das bedeutet, A plus B ist gleich B plus A.")
]
]