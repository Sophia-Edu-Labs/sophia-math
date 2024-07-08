#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Gerade Potenzfunktionen]
#v(40pt)
#only("1-")[Welche der folgenden ist eine gerade Potenzfunktion?]
#v(20pt)
#only("-1")[a) $f(x) = x^3$]#only("2-")[#text(fill:red)[a) $f(x) = x^3$]]
#v(10pt)
#only("-2")[b) $f(x) = x^2$]#only("3-")[#text(fill:green)[b) $f(x) = x^2$]]
#v(10pt)
#only("-3")[c) $f(x) = x^1$]#only("4-")[#text(fill:red)[c) $f(x) = x^1$]]
#v(10pt)
#only("-4")[d) $f(x) = x^(-1)$]#only("5-")[#text(fill:red)[d) $f(x) = x^(-1)$]]

#only("1")[#voiceover("Ausgezeichnet! Du hast die gerade Potenzfunktion korrekt identifiziert. Lass uns jede Option durchgehen, um zu verstehen, warum.")]
#only("2")[#voiceover("Option a, f von x gleich x hoch 3, ist keine gerade Potenzfunktion. Der Exponent 3 ist ungerade.")]
#only("3")[#voiceover("Option b, f von x gleich x hoch 2, ist tatsächlich eine gerade Potenzfunktion. Der Exponent 2 ist gerade.")]
#only("4")[#voiceover("Option c, f von x gleich x hoch 1, ist keine gerade Potenzfunktion. Der Exponent 1 ist ungerade.")]
#only("5")[#voiceover("Option d, f von x gleich x hoch minus 1, ist keine gerade Potenzfunktion. Der Exponent minus 1 ist ungerade.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Gerade Potenzfunktionen: Definition]
#v(40pt)
#only("1-")[Eine gerade Potenzfunktion hat die Form:]
#v(20pt)
#only("2-")[#text(size: 24pt)[$f(x) = x^n$, wobei $n$ eine gerade ganze Zahl ist]]
#v(20pt)
#only("3-")[Beispiele: $x^2$, $x^4$, $x^6$, ...]

#only("1")[#voiceover("Lass uns zunächst definieren, was eine gerade Potenzfunktion ist.")]
#only("2")[#voiceover("Eine gerade Potenzfunktion hat die Form f von x gleich x hoch n, wobei n eine gerade ganze Zahl ist.")]
#only("3")[#voiceover("Einige Beispiele sind x hoch 2, x hoch 4, x hoch 6 und so weiter.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften von geraden Potenzfunktionen]
#v(40pt)
#only("1-")[1. Symmetrie zur y-Achse 🪞]
#v(20pt)
#only("2-")[2. Immer nicht-negativ für reelle Eingaben 📈]
#v(20pt)
#only("3-")[3. U-förmiger Graph (Parabel für $x^2$) 🏋️]

#only("1")[#voiceover("Gerade Potenzfunktionen haben einige einzigartige Eigenschaften. Erstens sind sie symmetrisch zur y-Achse.")]
#only("2")[#voiceover("Zweitens sind sie für reelle Eingaben immer nicht-negativ.")]
#only("3")[#voiceover("Drittens haben sie einen U-förmigen Graphen. Für x hoch 2 ist dies eine Parabel.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung von $f(x) = x^2$]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = x²')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.title('Graph von f(x) = x²')
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

#only("1")[#voiceover("Lass uns die Funktion f von x gleich x hoch 2 visualisieren. Wie wir sehen können, bildet sie eine perfekte Parabel.")]
#only("2")[#voiceover("Beachte, wie der Graph symmetrisch zur y-Achse ist. Dies ist ein wesentliches Merkmal von geraden Potenzfunktionen.")]
#only("3")[#voiceover("Beachte auch, dass die Funktion niemals unter die x-Achse geht. Dies veranschaulicht die nicht-negative Eigenschaft von geraden Potenzfunktionen für reelle Eingaben.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum $x^2$ eine gerade Potenzfunktion ist]
#v(40pt)
#only("1-")[1. Der Exponent ist gerade (2 ist gerade) ✅]
#v(20pt)
#only("2-")[2. $f(-x) = f(x)$ für alle $x$ 🔄]
#v(20pt)
#only("3-")[3. Symmetrisch zur y-Achse 🪞]

#only("1")[#voiceover("Nun, lass uns bestätigen, warum x hoch 2 tatsächlich eine gerade Potenzfunktion ist. Erstens, sein Exponent, 2, ist eine gerade Zahl.")]
#only("2")[#voiceover("Zweitens, f von minus x ist gleich f von x für alle x. Das bedeutet, dass die Funktion dasselbe Ergebnis liefert, egal ob die Eingabe positiv oder negativ ist.")]
#only("3")[#voiceover("Diese Eigenschaft führt dazu, dass die Funktion symmetrisch zur y-Achse ist, wie wir im Graphen gesehen haben.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- $f(x) = x^2$ ist eine gerade Potenzfunktion 🎉]
#v(20pt)
#only("2-")[- Gerade Potenzfunktionen haben gerade Exponenten 🔢]
#v(20pt)
#only("3-")[- Sie sind symmetrisch und nicht-negativ 📊]

#only("1")[#voiceover("Abschließend, f von x gleich x hoch 2 ist tatsächlich eine gerade Potenzfunktion.")]
#only("2")[#voiceover("Denke daran, dass gerade Potenzfunktionen immer gerade Exponenten haben.")]
#only("3")[#voiceover("Sie zeichnen sich durch ihre Symmetrie zur y-Achse und ihre nicht-negativen Werte für reelle Eingaben aus. Großartige Arbeit beim Verständnis dieses Konzepts!")]
]