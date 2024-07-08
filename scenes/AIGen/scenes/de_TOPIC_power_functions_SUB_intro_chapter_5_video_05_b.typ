#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Geraden Potenzfunktionen]
#v(40pt)
#only("1-")[Welche der folgenden Eigenschaften trifft auf gerade Potenzfunktionen zu?]
#v(20pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Symmetrisch zum Ursprung]#only("2-")[#text(fill:red)[a) Symmetrisch zum Ursprung]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) Symmetrisch zur y-Achse]#only("3-")[#text(fill:green)[b) Symmetrisch zur y-Achse]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Immer steigend]#only("4-")[#text(fill:red)[c) Immer steigend]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Immer fallend]#only("5-")[#text(fill:red)[d) Immer fallend]]

#only("1")[#voiceover("Ausgezeichnete Arbeit! Du hast eine wichtige Eigenschaft von geraden Potenzfunktionen richtig erkannt. Lass uns jede Option durchgehen, um zu verstehen, warum.")]
#only("2")[#voiceover("Option a, symmetrisch zum Ursprung, ist falsch. Gerade Potenzfunktionen sind nicht symmetrisch zum Ursprung, sondern zur y-Achse.")]
#only("3")[#voiceover("Option b, symmetrisch zur y-Achse, ist richtig! Dies ist tatsächlich ein charakteristisches Merkmal von geraden Potenzfunktionen.")]
#only("4")[#voiceover("Option c, immer steigend, ist falsch. Gerade Potenzfunktionen sind nicht immer steigend; sie können abfallen und dann steigen.")]
#only("5")[#voiceover("Option d, immer fallend, ist ebenfalls falsch. Gerade Potenzfunktionen sind nicht immer fallend; sie können steigen und dann abfallen.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Gerade Potenzfunktionen: Symmetrie]
#v(40pt)
#only("1-")[Gerade Potenzfunktionen haben die Form: $f(x) = x^n$, wobei $n$ eine gerade Zahl ist]
#v(20pt)
#only("2-")[Beispiele: $f(x) = x^2$, $g(x) = x^4$, $h(x) = x^6$]
#v(20pt)
#only("3-")[Wichtige Eigenschaft: $f(x) = f(-x)$ für alle $x$]

#only("1")[#voiceover("Lass uns tiefer in gerade Potenzfunktionen eintauchen. Dies sind Funktionen, bei denen der Exponent eine gerade Zahl ist.")]
#only("2")[#voiceover("Einige Beispiele sind f von x gleich x Quadrat, g von x gleich x hoch vier und h von x gleich x hoch sechs.")]
#only("3")[#voiceover("Die wichtigste Eigenschaft von geraden Potenzfunktionen ist, dass f von x gleich f von minus x für alle x ist. Dies verleiht ihnen ihre Symmetrie zur y-Achse.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung von geraden Potenzfunktionen]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**2
y2 = x**4

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = x²')
plt.plot(x, y2, label='g(x) = x⁴')
plt.axvline(x=0, color='k', linestyle='--')
plt.axhline(y=0, color='k', linestyle='--')
plt.legend()
plt.title('Even Power Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[📊 Das Diagramm zeigt $f(x) = x^2$ und $g(x) = x^4$]
#v(10pt)
#only("2-")[🔄 Beachte die Symmetrie zur y-Achse]

#only("1")[#voiceover("Hier ist ein Diagramm, das zwei gerade Potenzfunktionen zeigt: f von x gleich x Quadrat in Blau und g von x gleich x hoch vier in Orange.")]
#only("2")[#voiceover("Beachte, wie beide Kurven perfekt symmetrisch zur y-Achse sind. Wenn wir das Diagramm entlang der y-Achse falten würden, würden die beiden Hälften perfekt übereinstimmen.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Punkte zum Merken]
#v(40pt)
#only("1-")[📌 Gerade Potenzfunktionen sind symmetrisch zur y-Achse]
#v(20pt)
#only("2-")[📌 Sie sind nicht immer steigend oder fallend]
#v(20pt)
#only("3-")[📌 Der Graph berührt oder schneidet die x-Achse nur am Ursprung]

#only("1")[#voiceover("Zusammenfassend ist der wichtigste Punkt, den Du Dir merken solltest, dass gerade Potenzfunktionen symmetrisch zur y-Achse sind.")]
#only("2")[#voiceover("Es ist wichtig zu beachten, dass sie nicht immer steigend oder fallend sind. Sie fallen typischerweise ab und steigen dann (oder umgekehrt), wodurch eine U-Form oder eine ähnliche Kurve entsteht.")]
#only("3")[#voiceover("Zuletzt berührt oder schneidet der Graph einer geraden Potenzfunktion immer die x-Achse am Ursprung und sonst nirgendwo.")]
]