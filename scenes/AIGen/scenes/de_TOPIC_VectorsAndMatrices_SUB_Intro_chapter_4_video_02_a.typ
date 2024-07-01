#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrizen addieren]
#v(40pt)

#only("1-")[Gegebene Matrizen:]
#v(10pt)
#only("1-")[A = $mat(1, 2; 3, 4)$]
#v(10pt)
#only("1-")[B = $mat(2, 0; 1, 3)$]
#v(20pt)

#only("2-")[Schritt 1: Entsprechende Elemente addieren]
#v(10pt)
#only("2-")[$mat(1+2, 2+0; 3+1, 4+3)$]
#v(20pt)

#only("3-")[Schritt 2: Die Addition durchführen]
#v(10pt)
#only("3-")[$mat(3, 2; 4, 7)$]

#only("1")[
#voiceover("Großartig! Du hast die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit zwei Matrizen, A und B.")
]

#only("2")[
#voiceover("Um Matrizen zu addieren, addieren wir die entsprechenden Elemente. Das bedeutet, wir addieren die Elemente an derselben Position in jeder Matrix.")
]

#only("3")[
#voiceover("Nach der Durchführung der Addition erhalten wir unser Ergebnis: eine 2x2-Matrix mit 3 oben links, 2 oben rechts, 4 unten links und 7 unten rechts.")
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

def create_matrix_plot(matrix, title):
    fig, ax = plt.subplots(figsize=(4, 4))
    ax.matshow(matrix, cmap='viridis')
    for (i, j), z in np.ndenumerate(matrix):
        ax.text(j, i, f'{z}', ha='center', va='center', color='white', fontweight='bold')
    ax.set_xticks([])
    ax.set_yticks([])
    ax.set_title(title)
    return fig

A = np.array([[1, 2], [3, 4]])
B = np.array([[2, 0], [1, 3]])
C = A + B

fig1 = create_matrix_plot(A, 'Matrix A')
fig2 = create_matrix_plot(B, 'Matrix B')
fig3 = create_matrix_plot(C, 'Result: A + B')

plt.close(fig1)
plt.close(fig2)
plt.close(fig3)

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

ax1.imshow(A, cmap='viridis')
ax1.set_title('Matrix A')
ax2.imshow(B, cmap='viridis')
ax2.set_title('Matrix B')
ax3.imshow(C, cmap='viridis')
ax3.set_title('Result: A + B')

for ax in (ax1, ax2, ax3):
    ax.set_xticks([])
    ax.set_yticks([])

for (i, j), z in np.ndenumerate(A):
    ax1.text(j, i, f'{z}', ha='center', va='center', color='white', fontweight='bold')
for (i, j), z in np.ndenumerate(B):
    ax2.text(j, i, f'{z}', ha='center', va='center', color='white', fontweight='bold')
for (i, j), z in np.ndenumerate(C):
    ax3.text(j, i, f'{z}', ha='center', va='center', color='white', fontweight='bold')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Lass uns diesen Additionsprozess visualisieren. Hier sind unsere Matrizen A und B visuell dargestellt, wobei jedes Element an seiner Position angezeigt wird.")
]

#only("2")[
#voiceover("Wenn wir diese Matrizen addieren, kombinieren wir die Werte an den entsprechenden Positionen. Das Ergebnis ist unsere neue Matrix, die rechts angezeigt wird.")
]

#only("3")[
#voiceover("Diese visuelle Darstellung hilft uns zu sehen, wie jedes Element in der Ergebnismatrix durch Addition der entsprechenden Elemente aus den Matrizen A und B gebildet wird.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Punkte 🔑]
#v(40pt)

#only("1-")[- Matrixaddition erfolgt elementweise 🧮]
#v(20pt)
#only("2-")[- Matrizen müssen die gleichen Dimensionen haben ↔️↕️]
#v(20pt)
#only("3-")[- Das Ergebnis hat die gleichen Dimensionen wie die ursprünglichen Matrizen 📏]

#only("1")[
#voiceover("Lass uns einige wichtige Punkte zur Matrixaddition zusammenfassen. Erstens wird die Matrixaddition elementweise durchgeführt. Das bedeutet, wir addieren die entsprechenden Elemente jeder Matrix.")
]

#only("2")[
#voiceover("Zweitens ist es wichtig zu beachten, dass wir nur Matrizen addieren können, die die gleichen Dimensionen haben. In diesem Fall waren beide Matrizen 2x2.")
]

#only("3")[
#voiceover("Zuletzt wird die resultierende Matrix immer die gleichen Dimensionen wie die ursprünglichen Matrizen haben. Hier ist unser Ergebnis ebenfalls eine 2x2-Matrix.")
]
]