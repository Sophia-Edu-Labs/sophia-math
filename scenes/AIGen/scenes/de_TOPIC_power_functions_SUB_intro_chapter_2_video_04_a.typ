#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartig! Du hast die Symmetrie der Funktion f von x gleich x hoch drei korrekt identifiziert. Lass uns das genauer untersuchen.")
]

#text(size: 30pt, weight: "bold")[Symmetrie von $f(x) = x^3$]

#v(40pt)

#only("2-")[#text()[$ f(x) = x^3 $]]

#only("2")[
#voiceover("Wir betrachten die Funktion f von x gleich x hoch drei.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Rotationssymmetrie]

#v(40pt)

#only("1-")[- Rotationssymmetrie um den Ursprung 🔄]
#v(20pt)
#only("2-")[- Eine Drehung um 180° ergibt denselben Graphen]

#only("1")[
#voiceover("Diese Funktion hat eine Rotationssymmetrie um den Ursprung.")
]

#only("2")[
#voiceover("Das bedeutet, wenn wir den Graphen um 180 Grad um den Ursprung drehen, sieht er genau gleich aus.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung von $f(x) = x^3$]

#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**3

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = x³')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.title('Graph of f(x) = x³')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Hier ist ein Graph von f von x gleich x hoch drei. Beachte, wie die Kurve durch den Ursprung verläuft und symmetrisch in beide Richtungen verläuft.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften von $f(x) = x^3$]

#v(40pt)

#only("1-")[- $f(-x) = -f(x)$ für alle $x$]
#v(20pt)
#only("2-")[- Beispiel: $f(-2) = -8$ und $f(2) = 8$]

#only("1")[
#voiceover("Eine wichtige Eigenschaft dieser Funktion ist, dass f von minus x gleich minus f von x für alle x ist.")
]

#only("2")[
#voiceover("Zum Beispiel, f von minus 2 ist gleich minus 8, und f von 2 ist gleich 8. Dies veranschaulicht die Rotationssymmetrie.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Ungerade Funktion]

#v(40pt)

#only("1-")[- $x^3$ ist eine ungerade Funktion]
#v(20pt)
#only("2-")[- Ungerade Funktionen haben Rotationssymmetrie um den Ursprung]

#only("1")[
#voiceover("Die Funktion x hoch drei ist eine sogenannte ungerade Funktion.")
]

#only("2")[
#voiceover("Alle ungeraden Funktionen haben diese Rotationssymmetrie um den Ursprung, weshalb wir dieses Verhalten in unserem Graphen sehen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- $f(x) = x^3$ hat Rotationssymmetrie um den Ursprung 🔄]
#v(20pt)
#only("2-")[- Es ist eine ungerade Funktion mit der Eigenschaft $f(-x) = -f(x)$ ⚖️]
#v(20pt)
#only("3-")[- Das Verständnis der Symmetrie hilft beim Zeichnen und Analysieren von Funktionen 📊]

#only("1")[
#voiceover("Zusammenfassend hat f von x gleich x hoch drei eine Rotationssymmetrie um den Ursprung.")
]

#only("2")[
#voiceover("Es ist eine ungerade Funktion mit der Eigenschaft, dass f von minus x gleich minus f von x ist.")
]

#only("3")[
#voiceover("Das Verständnis dieser Symmetrie kann uns beim Zeichnen und Analysieren dieser und ähnlicher Funktionen helfen. Großartige Arbeit beim Erkennen dieser wichtigen Eigenschaft!")
]
]