#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Du hast die Potenzfunktion korrekt identifiziert. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, warum dies die richtige Antwort ist.")
]

#text(size: 30pt, weight: "bold")[Potenzfunktion]

#v(40pt)

#only("2-")[#text()[$ f(x) = a x^2 $]]
#v(20pt)
#only("3-")[Wobei $a$ eine Konstante und $x$ die Variable ist]

#only("2")[
#voiceover("Eine Potenzfunktion hat die allgemeine Form f von x gleich a mal x Quadrat.")
]

#only("3")[
#voiceover("Hierbei ist a ein konstanter Koeffizient und x unsere Variable.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]

#v(40pt)

#only("1-")[- Punkte: (1, 3) und (2, 12)]
#v(20pt)
#only("2-")[- $a = 3$]

#only("1")[
#voiceover("Uns werden zwei Punkte gegeben, durch die unsere Funktion verläuft: der Punkt eins Komma drei und der Punkt zwei Komma zwölf.")
]

#only("2")[
#voiceover("Uns wird auch gesagt, dass der Koeffizient a gleich drei ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Konstruktion der Funktion]

#v(40pt)

#only("1-")[$ f(x) = 3x^2 $]

#v(20pt)

#only("2-")[Lass uns das überprüfen:]
#v(10pt)
#only("3-")[Für $x = 1$: $ f(1) = 3(1)^2 = 3 $]
#v(10pt)
#only("4-")[Für $x = 2$: $ f(2) = 3(2)^2 = 3(4) = 12 $]

#only("1")[
#voiceover("Da a gleich drei ist, können wir unsere Funktion als f von x gleich drei x Quadrat schreiben.")
]

#only("2")[
#voiceover("Nun, lass uns überprüfen, ob diese Funktion durch die gegebenen Punkte verläuft.")
]

#only("3")[
#voiceover("Für x gleich eins, f von eins gleich drei mal eins Quadrat, was drei ist. Das entspricht unserem ersten Punkt.")
]

#only("4")[
#voiceover("Für x gleich zwei, f von zwei gleich drei mal zwei Quadrat, was drei mal vier ist, gleich zwölf. Das entspricht unserem zweiten Punkt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]

#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 3, 100)
y = 3 * x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y, 'b-', label='f(x) = 3x²')
plt.plot(1, 3, 'ro', label='(1, 3)')
plt.plot(2, 12, 'ro', label='(2, 12)')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Potenzfunktion: f(x) = 3x²')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Hier ist eine visuelle Darstellung unserer Potenzfunktion. Die blaue Kurve zeigt f von x gleich drei x Quadrat. Die roten Punkte repräsentieren unsere gegebenen Punkte: eins Komma drei und zwei Komma zwölf. Wie wir sehen können, verläuft die Funktion durch beide Punkte.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Potenzfunktion: $ f(x) = 3x^2 $ 📊]
#v(20pt)
#only("2-")[- Verläuft durch (1, 3) und (2, 12) ✅]
#v(20pt)
#only("3-")[- Koeffizient $a = 3$ wie gegeben 🔢]

#only("1")[
#voiceover("Zusammenfassend haben wir herausgefunden, dass die Potenzfunktion f von x gleich drei x Quadrat")
]

#only("2")[
#voiceover("durch die Punkte eins Komma drei und zwei Komma zwölf verläuft,")
]

#only("3")[
#voiceover("und der Koeffizient a gleich drei ist, wie im Problem angegeben. Gut gemacht beim Lösen dieser Aufgabe!")
]
]