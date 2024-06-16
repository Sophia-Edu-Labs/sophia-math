#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von $7/20$ in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$7/20$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch sieben zwanzigstel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
#only("1-")[- Schritt 1: Teile den Zähler durch den Nenner. ➗]
#v(20pt)
#only("2-")[- Schritt 2: Vereinfache das Ergebnis, falls nötig. ✂️]
#only("1")[
#voiceover("Bevor wir die Aufgabe lösen, lass uns schnell die Schritte zur Umwandlung von Brüchen in Dezimalzahlen durchgehen. Zuerst teilst Du den Zähler durch den Nenner.")
]
#only("2")[
#voiceover("Als nächstes vereinfachst Du das Ergebnis, falls nötig.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $7/20$ in eine Dezimalzahl]
#v(40pt)
#only("1-")[- Schritt 1: ➗ Teile $7$ durch $20$.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Vereinfache das Ergebnis: $0.35$.]
#only("1")[
#voiceover("Nun wenden wir diese Schritte auf den Bruch sieben zwanzigstel an. Zuerst teilen wir sieben durch zwanzig.")
]
#only("2")[
#voiceover("Das ergibt null Komma drei fünf. Und das war's, wir sind fertig! Die Lösung ist null Komma drei fünf.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Division]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Data
x = np.array([0, 1])
y = np.array([0, 0.35])

plt.plot(x, y, marker='o', color='b')
plt.axhline(y=0.35, color='r', linestyle='--')
plt.text(0.5, 0.36, '0.35', color='r')
plt.title('Division of 7 by 20')
plt.xlabel('Step')
plt.ylabel('Value')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Lass uns die Division von sieben durch zwanzig visualisieren. Wie Du sehen kannst, ist das Ergebnis null Komma drei fünf.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wir haben mit dem Bruch $7/20$ begonnen. 📜]
#v(20pt)
#only("2-")[- Wir haben $7$ durch $20$ geteilt. ➗]
#v(20pt)
#only("3-")[- Das Ergebnis ist $0.35$. 🎉]
#only("1")[
#voiceover("Zusammenfassend haben wir mit dem Bruch sieben zwanzigstel begonnen.")
]
#only("2")[
#voiceover("Wir haben sieben durch zwanzig geteilt.")
]
#only("3")[
#voiceover("Das Ergebnis ist null Komma drei fünf. Gut gemacht!")
]
]