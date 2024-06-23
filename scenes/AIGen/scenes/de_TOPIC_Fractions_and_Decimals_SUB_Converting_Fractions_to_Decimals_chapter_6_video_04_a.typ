#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit bei der Lösung des Problems! Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]

#v(40pt)

#only("2-")[#text()[$2/5$]]
// Der Bruch 2/5 wird ab Folie 2 angezeigt

#only("2")[
#voiceover("Wir haben den Bruch zwei Fünftel gegeben.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
#only("1-")[- Schritt 1: Teile den Zähler durch den Nenner ➗]
#v(20pt)
#only("2-")[- Schritt 2: Vereinfache, falls notwendig ✂️]

#only("1")[
#voiceover("Um einen Bruch in eine Dezimalzahl umzuwandeln, folgen wir diesen Schritten. Zuerst teilen wir den Zähler durch den Nenner.")
]
#only("2")[
#voiceover("Dann vereinfachen wir das Ergebnis, falls notwendig.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $2/5$ in eine Dezimalzahl]
#v(40pt)
#only("1-")[- Schritt 1: Teile $2$ durch $5$ ➗ $2 ÷ 5 = 0.4$]
#v(20pt)
#only("2-")[- Schritt 2: Vereinfache, falls notwendig ✂️]

#only("1")[
#voiceover("Lass uns diese Schritte auf den Bruch zwei Fünftel anwenden. Zuerst teilen wir zwei durch fünf, was null Komma vier ergibt.")
]
#only("2")[
#voiceover("Da null Komma vier bereits in seiner einfachsten Form vorliegt, müssen wir nicht weiter vereinfachen. Also ist das Dezimaläquivalent von zwei Fünftel null Komma vier.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Umwandlung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

# Data
fractions = [2/5]
decimals = [0.4]

# Plot
fig, ax = plt.subplots()
ax.plot(fractions, decimals, 'bo', label='2/5 = 0.4')
ax.axhline(y=0.4, color='r', linestyle='--', label='0.4')
ax.axvline(x=2/5, color='g', linestyle='--', label='2/5')
ax.legend()

# Labels and title
ax.set_xlabel('Fraction')
ax.set_ylabel('Decimal')
ax.set_title('Visualizing Fraction to Decimal Conversion')

plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Hier visualisieren wir die Umwandlung des Bruchs zwei Fünftel in die Dezimalzahl null Komma vier. Der blaue Punkt repräsentiert den Bruch zwei Fünftel, der gleichbedeutend mit der Dezimalzahl null Komma vier ist. Die rote gestrichelte Linie zeigt den Dezimalwert, und die grüne gestrichelte Linie zeigt den Bruchwert.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Gegebener Bruch: $2/5$ 📜]
#v(20pt)
#only("2-")[- Schritt 1: Teile $2$ durch $5$ ➗ $2 ÷ 5 = 0.4$]
#v(20pt)
#only("3-")[- Schritt 2: Vereinfache, falls notwendig ✂️]
#v(20pt)
#only("4-")[- Dezimaläquivalent: $0.4$ 🔢]

#only("1")[
#voiceover("Zusammenfassend haben wir mit dem Bruch zwei Fünftel begonnen.")
]
#only("2")[
#voiceover("Wir haben zwei durch fünf geteilt, was null Komma vier ergab.")
]
#only("3")[
#voiceover("Da null Komma vier bereits in seiner einfachsten Form vorliegt, mussten wir nicht weiter vereinfachen.")
]
#only("4")[
#voiceover("Also ist das Dezimaläquivalent von zwei Fünftel null Komma vier.")
]
]