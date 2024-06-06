#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Tolle Arbeit! 🎉]
#v(40pt)
#only("1-")[
Deine Antwort ist korrekt! Lass uns Schritt für Schritt sehen, wie man $1/root(4, 5)$ rationalisiert.
]
#only("1")[
#voiceover("Tolle Arbeit! Deine Antwort ist absolut korrekt. Lass uns nun Schritt für Schritt sehen, wie wir den Ausdruck 1 über der vierten Wurzel von 5 rationalisieren können.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multipliziere mit $root(4, 5^3)/root(4, 5^3)$]
#v(40pt)
#only("1-")[
- $1/root(4, 5) = 1/root(4, 5) * root(4, 5^3)/root(4, 5^3)$
]
#only("1")[
#voiceover("Der erste Schritt ist, den Ausdruck mit der vierten Wurzel von 5 hoch 3 über der vierten Wurzel von 5 hoch 3 zu multiplizieren. Dies ist gleichbedeutend mit der Multiplikation mit 1, sodass sich der Wert des Ausdrucks nicht ändert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Vereinfache]
#v(40pt)
#only("1-")[
- $1/root(4, 5) * root(4, 5^3)/root(4, 5^3) = root(4, 5^3)/(root(4, 5) * root(4, 5^3))$
]
#only("2-")[
- $root(4, 5^3)/(root(4, 5) * root(4, 5^3)) = root(4, 5^3)/root(4, 5^4)$
]
#only("1")[
#voiceover("Als nächstes vereinfachen wir den Zähler und den Nenner. Im Zähler haben wir nur die vierte Wurzel von 5 hoch 3.")
]
#only("2")[
#voiceover("Im Nenner ist die vierte Wurzel von 5 mal die vierte Wurzel von 5 hoch 3 gleich der vierten Wurzel von 5 hoch 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Weiter vereinfachen]
#v(40pt)
#only("1-")[
- $root(4, 5^3)/root(4, 5^4) = root(4, 125)/root(4, 625)$
]
#only("2-")[
- $root(4, 125)/root(4, 625) = 5/25$
]
#only("1")[
#voiceover("Wir können dies weiter vereinfachen. Die vierte Wurzel von 5 hoch 3 ist gleich der vierten Wurzel von 125, und die vierte Wurzel von 5 hoch 4 ist gleich der vierten Wurzel von 625.")
]
#only("2")[
#voiceover("Schließlich ist die vierte Wurzel von 125 gleich 5, und die vierte Wurzel von 625 ist gleich 25. Also ist unsere endgültige Antwort 5 über 25.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[
- $1/root(4, 5) = root(4, 5^3)/5$
]
#only("1")[
#voiceover("Daher erhalten wir, wenn wir 1 über der vierten Wurzel von 5 rationalisieren, die vierte Wurzel von 5 hoch 3 über 5.")
]
]