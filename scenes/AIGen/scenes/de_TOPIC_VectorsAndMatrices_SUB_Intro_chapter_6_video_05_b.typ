#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrixmultiplikation]
#v(40pt)

#only("1-")[
$A = mat(2, 2; 2, 2)$  $B = mat(1, 1; 1, 1)$
]

#v(20pt)

#only("2-")[
$C = A dot B = mat(2, 2; 2, 2) dot mat(1, 1; 1, 1)$
]

#v(20pt)

#only("3-")[
$= mat((2 dot 1 + 2 dot 1), (2 dot 1 + 2 dot 1); (2 dot 1 + 2 dot 1), (2 dot 1 + 2 dot 1))$
]

#v(20pt)

#only("4-")[
$= mat(4, 4; 4, 4)$
]

#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit zwei 2x2 Matrizen: A und B.")
]

#only("2")[
#voiceover("Um diese Matrizen zu multiplizieren, verwenden wir die Standardmethode der Matrixmultiplikation. Wir multiplizieren jede Zeile von A mit jeder Spalte von B.")
]

#only("3")[
#voiceover("Lass es uns aufschlüsseln: Für das Element oben links berechnen wir 2 mal 1 plus 2 mal 1, was 4 ergibt. Das machen wir für alle vier Elemente der resultierenden Matrix.")
]

#only("4")[
#voiceover("Nach der Vereinfachung erhalten wir unser Endergebnis: eine 2x2 Matrix mit allen Elementen gleich 4. Das entspricht unserer Antwort von doppelten Klammern 4, 4, 4, 4 doppelten Klammern.")
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

def matrix_plot(matrix, title):
    plt.imshow(matrix, cmap='viridis')
    plt.colorbar()
    for (i, j), value in np.ndenumerate(matrix):
        plt.text(j, i, f'{value:.0f}', ha='center', va='center')
    plt.title(title)
    plt.axis('off')

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

A = np.array([[2, 2], [2, 2]])
B = np.array([[1, 1], [1, 1]])
C = np.dot(A, B)

plt.sca(ax1)
matrix_plot(A, 'Matrix A')

plt.sca(ax2)
matrix_plot(B, 'Matrix B')

plt.sca(ax3)
matrix_plot(C, 'Result: A × B')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Hier ist eine visuelle Darstellung unserer Matrixmultiplikation. Links haben wir die Matrix A, alles Zweien. In der Mitte die Matrix B, alles Einsen.")
]

#only("2")[
#voiceover("Und rechts sehen wir unser Ergebnis: eine Matrix mit lauter Vieren. Diese Visualisierung hilft uns zu sehen, wie sich die Werte in A und B kombinieren, um unser Endergebnis zu erhalten.")
]

#only("3")[
#voiceover("Denke daran, dass bei der Matrixmultiplikation jedes Element im Ergebnis die Summe der Produkte der entsprechenden Zeilen- und Spaltenelemente ist. Deshalb erhalten wir Vieren: zwei mal eins plus zwei mal eins, für jede Position.")
]
]