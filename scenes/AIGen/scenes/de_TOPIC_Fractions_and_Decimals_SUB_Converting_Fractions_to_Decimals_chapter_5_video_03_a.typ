#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Super, du hast das richtig erkannt! Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)
Was ist $3/5$ als Dezimalzahl?
#v(40pt)
#only("1-")[Die richtige Antwort ist $0.6$]

#only("1")[
#voiceover("Das ist richtig, gut gemacht! Die richtige Antwort ist null Komma sechs. Lass uns herausfinden, warum das so ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
#only("1-")[- Schritt 1: Teile den Zähler durch den Nenner. ➗]
#v(20pt)
#only("2-")[- Schritt 2: Schreibe das Ergebnis als Dezimalzahl. ✍️]
#only("1")[
#voiceover("Bevor wir die Aufgabe lösen, eine kurze Erinnerung an die Schritte zur Umwandlung von Brüchen in Dezimalzahlen. Zuerst teilst du den Zähler durch den Nenner.")
]
#only("2")[
#voiceover("Als nächstes schreibst du das Ergebnis als Dezimalzahl.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $3/5$ in eine Dezimalzahl]
#v(40pt)
#only("1-")[- Schritt 1: ➗ Teile $3$ durch $5$.]
#v(20pt)
#only("2-")[- Schritt 2: ✍️ Schreibe das Ergebnis als $0.6$.]
#only("1")[
#voiceover("Jetzt wenden wir diese Schritte auf den Bruch drei Fünftel an. Zuerst teilen wir drei durch fünf.")
]
#only("2")[
#voiceover("Das Ergebnis ist null Komma sechs. Also ist drei Fünftel als Dezimalzahl null Komma sechs.")
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

# Data
numerator = 3
denominator = 5
result = numerator / denominator

# Plot
fig, ax = plt.subplots()
ax.bar(['3/5'], [result], color='skyblue')

# Adding details
ax.set_ylim(0, 1)
ax.set_ylabel('Decimal Value')
ax.set_title('Visualizing 3/5 as a Decimal')
ax.text(0, result/2, '0.6', ha='center', va='center', color='black', fontsize=12)

plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Um dies zu veranschaulichen, können wir sehen, dass das Teilen von drei durch fünf null Komma sechs ergibt. Dieses Balkendiagramm zeigt den Dezimalwert von drei Fünftel.")
]
]