#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrixdimensionen]
#v(40pt)

#only("1-")[Was sind die Dimensionen der Matrix $[[1, 2, 3], [4, 5, 6]]$?]
#v(20pt)

#only("-1")[a) 2x3]#only("2-")[#text(fill:green)[a) 2x3]]
#v(10pt)
#only("-2")[b) 3x2]#only("3-")[#text(fill:red)[b) 3x2]]
#v(10pt)
#only("-3")[c) 1x6]#only("4-")[#text(fill:red)[c) 1x6]]
#v(10pt)
#only("-4")[d) 6x1]#only("5-")[#text(fill:red)[d) 6x1]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns erklären, warum 2x3 die richtige Antwort ist und warum die anderen Optionen falsch sind.")]

#only("2")[#voiceover("Option a, 2x3, ist tatsächlich die richtige Antwort. Die Dimensionen einer Matrix werden immer als Zeilen mal Spalten angegeben. In diesem Fall haben wir 2 Zeilen und 3 Spalten, also 2x3.")]

#only("3")[#voiceover("Option b, 3x2, ist falsch. Dies würde eine Matrix mit 3 Zeilen und 2 Spalten beschreiben, was wir hier nicht haben.")]

#only("4")[#voiceover("Option c, 1x6, ist ebenfalls falsch. Dies würde eine Matrix mit 1 Zeile und 6 Spalten beschreiben, im Wesentlichen ein Zeilenvektor mit 6 Elementen.")]

#only("5")[#voiceover("Zuletzt ist auch Option d, 6x1, falsch. Dies würde eine Matrix mit 6 Zeilen und 1 Spalte beschreiben, was ein Spaltenvektor mit 6 Elementen ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verständnis der Matrixdimensionen]
#v(20pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

matrix = np.array([[1, 2, 3], [4, 5, 6]])

fig, ax = plt.subplots(figsize=(8, 6))
ax.matshow(matrix, cmap='viridis')

for (i, j), value in np.ndenumerate(matrix):
    ax.text(j, i, f'{value}', ha='center', va='center', fontsize=20)

ax.set_xticks(np.arange(matrix.shape[1]))
ax.set_yticks(np.arange(matrix.shape[0]))

plt.title('2x3 Matrix', fontsize=16)
plt.xlabel('Columns', fontsize=14)
plt.ylabel('Rows', fontsize=14)

plt.show()

```,
width: 360pt),
)
]
]
]

#v(20pt)

#only("2-")[- 2 Zeilen ↔️]
#only("3-")[- 3 Spalten ⬇️]
#only("4-")[- Dimensionen: 2x3 📏]

#only("1")[#voiceover("Lass uns die 2x3-Matrix visualisieren, mit der wir es zu tun haben. Hier ist eine farbenfrohe Darstellung unserer Matrix $[[1, 2, 3], [4, 5, 6]]$.")]

#only("2")[#voiceover("Wie wir sehen können, hat diese Matrix 2 Zeilen. Wir zählen die Zeilen von oben nach unten.")]

#only("3")[#voiceover("Und sie hat 3 Spalten. Wir zählen die Spalten von links nach rechts.")]

#only("4")[#voiceover("Daher sind die Dimensionen dieser Matrix 2x3. Denke daran, dass wir immer zuerst die Anzahl der Zeilen und dann die Anzahl der Spalten angeben. Dies ist besonders wichtig bei Operationen wie der Matrixmultiplikation, bei denen die Dimensionen auf eine bestimmte Weise übereinstimmen müssen.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(20pt)

#only("1-")[- Matrixdimensionen: Zeilen x Spalten 🔢]
#v(10pt)
#only("2-")[- Zeilen von oben nach unten zählen ⬇️]
#v(10pt)
#only("3-")[- Spalten von links nach rechts zählen ➡️]
#v(10pt)
#only("4-")[- Reihenfolge ist wichtig: zuerst Zeilen, dann Spalten! 🔑]

#only("1")[#voiceover("Lass uns die wichtigsten Punkte zu Matrixdimensionen zusammenfassen.")]

#only("2")[#voiceover("Erstens, denke daran, dass die Dimensionen einer Matrix immer als Zeilen mal Spalten angegeben werden.")]

#only("3")[#voiceover("Beim Zählen der Zeilen beginnen wir oben und gehen nach unten.")]

#only("4")[#voiceover("Für die Spalten zählen wir von links nach rechts.")]

#only("5")[#voiceover("Und ganz wichtig: Die Reihenfolge ist entscheidend! Wir geben immer zuerst die Anzahl der Zeilen und dann die Anzahl der Spalten an. Diese 2x3-Matrix hat 2 Zeilen und 3 Spalten, nicht 3 Spalten und 2 Zeilen. Wenn Du dies im Hinterkopf behältst, wirst Du Fehler bei zukünftigen Matrixproblemen vermeiden.")]
]