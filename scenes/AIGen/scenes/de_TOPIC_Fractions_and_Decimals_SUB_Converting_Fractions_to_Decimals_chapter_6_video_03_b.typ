#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]

#v(40pt)

#only("1-")[#text(size: 24pt)[Was ist $7/10$ als Dezimalzahl?]]

#v(20pt)

#only("2-")[- Schritt 1: Zähler durch Nenner teilen ➗]
#v(10pt)
#only("3-")[- Schritt 2: Dezimalpunkt richtig setzen 🔢]

#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, warum sieben Zehntel als Dezimalzahl null Komma sieben ist.")
]

#only("2")[
#voiceover("Der erste Schritt bei der Umwandlung eines Bruchs in eine Dezimalzahl ist, den Zähler durch den Nenner zu teilen. In diesem Fall teilen wir sieben durch zehn.")
]

#only("3")[
#voiceover("Der zweite Schritt ist, den Dezimalpunkt richtig zu setzen. Bei Brüchen mit einem Nenner von 10 ist das besonders einfach.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Division]

#v(40pt)

#only("1-")[#text(size: 24pt)[$7 ÷ 10 = 0.7$]]

#v(20pt)

#only("2-")[💡 Beim Teilen durch 10 Dezimalpunkt nach links verschieben]

#only("1")[
#voiceover("Lass uns die Division durchführen. Sieben geteilt durch zehn ergibt null Komma sieben.")
]

#only("2")[
#voiceover("Hier ist ein hilfreicher Tipp: Beim Teilen durch zehn kannst Du den Dezimalpunkt einfach um eine Stelle nach links verschieben. So wird aus sieben null Komma sieben.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Dezimalpunkt setzen]

#v(40pt)

#only("1-")[#text(size: 24pt)[Für $7/10$, Dezimalpunkt vor die letzte Ziffer setzen:]]
#v(10pt)
#only("2-")[#text(size: 24pt)[0.7]]

#v(20pt)

#only("3-")[🔍 $7/10 = 0.7$ (sieben Zehntel)]

#only("1")[
#voiceover("Nun konzentrieren wir uns darauf, den Dezimalpunkt richtig zu setzen.")
]

#only("2")[
#voiceover("Bei Brüchen mit einem Nenner von zehn können wir den Dezimalpunkt vor die letzte Ziffer des Zählers setzen. In diesem Fall setzen wir ihn vor die sieben, was uns null Komma sieben ergibt.")
]

#only("3")[
#voiceover("Wir haben also bestätigt, dass sieben Zehntel tatsächlich null Komma sieben in Dezimalform sind.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung des Bruchs]

#v(20pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(8, 4))

# Create a bar
ax.bar(0, 0.7, width=0.5, color='skyblue', edgecolor='navy')

# Set limits and remove ticks
ax.set_xlim(-0.5, 0.5)
ax.set_ylim(0, 1)
ax.set_xticks([])

# Add labels
ax.set_ylabel('Fraction of 1')
ax.set_title('Visualization of 7/10')

# Add text
ax.text(0, 0.75, '0.7', ha='center', va='bottom', fontsize=20)

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [Visualisierung von $7/10$ als Dezimalzahl]
)
]
]
]

#only("1")[
#voiceover("Hier ist eine visuelle Darstellung von sieben Zehntel. Wie Du sehen kannst, füllt es null Komma sieben oder siebzig Prozent der ganzen Einheit aus.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- $7/10$ als Dezimalzahl ist $0.7$ 🎉]
#v(10pt)
#only("2-")[- Denke daran: Bei Brüchen mit Nenner 10, 📝]
#v(10pt)
#only("3-")[  Dezimalpunkt vor die letzte Ziffer des Zählers setzen]

#only("1")[
#voiceover("Zusammenfassend haben wir bestätigt, dass sieben Zehntel als Dezimalzahl null Komma sieben ist.")
]

#only("2")[
#voiceover("Denke daran, bei Brüchen mit einem Nenner von zehn,")
]

#only("3")[
#voiceover("kannst Du schnell in eine Dezimalzahl umwandeln, indem Du den Dezimalpunkt vor die letzte Ziffer des Zählers setzt. Dieser Trick kann Dir bei zukünftigen Berechnungen Zeit sparen!")
]
]