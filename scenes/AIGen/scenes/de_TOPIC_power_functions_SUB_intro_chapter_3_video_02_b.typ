#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Auswirkung eines negativen Koeffizienten auf Potenzfunktionen]
#v(40pt)
Welche Auswirkung hat ein negativer Koeffizient $a$ auf den Graphen der Potenzfunktion $f(x) = a x^b$?
#v(40pt)
#only("-1")[a) Spiegelt an der y-Achse]#only("2-")[#text(fill:red)[a) Spiegelt an der y-Achse]]
#v(10pt)
#only("-2")[b) Spiegelt an der x-Achse]#only("3-")[#text(fill:green)[b) Spiegelt an der x-Achse]]
#v(10pt)
#only("-3")[c) Verschiebt nach oben]#only("4-")[#text(fill:red)[c) Verschiebt nach oben]]
#v(10pt)
#only("-4")[d) Verschiebt nach unten]#only("5-")[#text(fill:red)[d) Verschiebt nach unten]]

#only("1")[#voiceover("Ausgezeichnet! Du hast richtig geantwortet. Lass uns erklären, warum b) Spiegelt an der x-Achse die richtige Antwort ist und warum die anderen Optionen falsch sind.")]
#only("2")[#voiceover("Option a) Spiegelt an der y-Achse ist falsch. Ein negativer Koeffizient verursacht keine Spiegelung an der y-Achse.")]
#only("3")[#voiceover("Option b) Spiegelt an der x-Achse ist richtig. Ein negativer Koeffizient bewirkt tatsächlich eine Spiegelung des Graphen an der x-Achse.")]
#only("4")[#voiceover("Option c) Verschiebt nach oben ist falsch. Ein negativer Koeffizient verursacht keine Verschiebung des Graphen nach oben.")]
#only("5")[#voiceover("Option d) Verschiebt nach unten ist ebenfalls falsch. Ein negativer Koeffizient verursacht keine Verschiebung des Graphen nach unten.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verständnis der Auswirkung]
#v(40pt)
#only("1-")[- Betrachte $f(x) = x^2$ und $g(x) = -x^2$]
#v(20pt)
#only("2-")[- Der negative Koeffizient dreht den Graphen vertikal um 🔄]
#v(20pt)
#only("3-")[- Dies entspricht einer Spiegelung an der x-Achse 🪞]

#only("1")[#voiceover("Lass uns diese Auswirkung besser verstehen. Betrachte zwei Funktionen: f von x gleich x Quadrat und g von x gleich minus x Quadrat.")]
#only("2")[#voiceover("Der negative Koeffizient in g von x bewirkt, dass der Graph im Vergleich zu f von x vertikal umgedreht wird.")]
#only("3")[#voiceover("Diese vertikale Drehung entspricht einer Spiegelung des Graphen an der x-Achse.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**2
y2 = -x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = x²')
plt.plot(x, y2, label='g(x) = -x²')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend()
plt.title('Effect of Negative Coefficient')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung unseres Beispiels. Die blaue Kurve zeigt f von x gleich x Quadrat, während die orange Kurve g von x gleich minus x Quadrat zeigt.")]
#only("2")[#voiceover("Wie Du sehen kannst, bewirkt der negative Koeffizient in g von x, dass die Parabel nach unten geöffnet wird, was einer Spiegelung der ursprünglichen Funktion an der x-Achse entspricht.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schlüsselpunkte]
#v(40pt)
#only("1-")[- Negativer Koeffizient dreht den Graphen vertikal um 🔄]
#v(20pt)
#only("2-")[- Entspricht einer Spiegelung an der x-Achse 🪞]
#v(20pt)
#only("3-")[- Form und Maßstab des Graphen bleiben unverändert 📏]
#v(20pt)
#only("4-")[- Gilt für jede Potenzfunktion $f(x) = a x^b$ 🔢]

#only("1")[#voiceover("Lass uns die Schlüsselpunkte zusammenfassen. Erstens, ein negativer Koeffizient dreht den Graphen vertikal um.")]
#only("2")[#voiceover("Diese vertikale Drehung entspricht einer Spiegelung des Graphen an der x-Achse.")]
#only("3")[#voiceover("Es ist wichtig zu beachten, dass die Form und der Maßstab des Graphen unverändert bleiben.")]
#only("4")[#voiceover("Diese Wirkung gilt für jede Potenzfunktion der Form f von x gleich a mal x hoch b, unabhängig vom Wert von b.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Ein negativer Koeffizient $a$ in $f(x) = a x^b$:]
#v(20pt)
#only("2-")[- ✅ Spiegelt den Graphen an der x-Achse]
#v(20pt)
#only("3-")[- ❌ Ändert nicht die Form oder den Maßstab]
#v(20pt)
#only("4-")[- 🧠 Merke: Es ist eine vertikale Drehung!]

#only("1")[#voiceover("Abschließend hat ein negativer Koeffizient a in der Funktion f von x gleich a mal x hoch b eine spezifische Wirkung.")]
#only("2")[#voiceover("Er spiegelt den Graphen an der x-Achse.")]
#only("3")[#voiceover("Er ändert jedoch nicht die Form oder den Maßstab des Graphen.")]
#only("4")[#voiceover("Eine hilfreiche Möglichkeit, sich dies zu merken, ist, es als eine vertikale Drehung des Graphen zu betrachten. Großartige Arbeit beim Verstehen dieses Konzepts!")]
]