#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Kubische Funktion: $x^3$]
#v(40pt)

#only("1-")[Welche der folgenden Graphen gehört zur Funktion $x^3$?]
#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y1 = x**3
y2 = x**2
y3 = 1/x
y4 = 1/(x**2)

plt.figure(figsize=(10, 6))
plt.plot(x, y1, 'r', label='x^3 (Red)')
plt.plot(x, y2, 'b', label='x^2 (Blue)')
plt.plot(x, y3, 'g', label='1/x (Green)')
plt.plot(x, y4, 'orange', label='1/x^2 (Orange)')

plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')

plt.legend()
plt.title('Function Graphs')
plt.xlabel('x')
plt.ylabel('y')
plt.ylim(-10, 10)
plt.xlim(-3, 3)
plt.grid(True)

plt.show()

```,
width: 360pt),
)
]
]

#v(20pt)
#only("-1")[a) Pinker Graph]#only("2-")[#text(fill:green)[a) Pinker Graph]]
#v(10pt)
#only("-2")[b) Grüner Graph]#only("3-")[#text(fill:red)[b) Grüner Graph]]
#v(10pt)
#only("-3")[c) Blauer Graph]#only("4-")[#text(fill:red)[c) Blauer Graph]]
#v(10pt)
#only("-4")[d) Oranger Graph]#only("5-")[#text(fill:red)[d) Oranger Graph]]

#only("1")[#voiceover("Leider nicht ganz richtig. Lass uns jede Option durchgehen, um zu verstehen, warum.")]
#only("2")[#voiceover("Option a, der pinke Graph, ist tatsächlich die richtige Antwort. Dies ist der Graph von x hoch drei. Er zeichnet sich durch seine S-Form aus, die durch den Ursprung verläuft und im ersten Quadranten bis ins Unendliche und im dritten Quadranten bis ins Negative Unendliche reicht.")]
#only("3")[#voiceover("Option b, der grüne Graph, ist falsch. Dies ist tatsächlich der Graph von ein durch x. Er hat zwei getrennte Teile und schneidet nie die x- oder y-Achse.")]
#only("4")[#voiceover("Option c, der blaue Graph, ist ebenfalls falsch. Dies ist der Graph von x hoch zwei. Es ist eine Parabel, die nach oben geöffnet ist und die x-Achse am Ursprung berührt.")]
#only("5")[#voiceover("Schließlich ist Option d, der orange Graph, auch falsch. Dieser Graph stellt ein durch x Quadrat dar. Er ist ähnlich wie ein durch x, aber immer positiv und nähert sich der x-Achse, wenn x gegen positiv oder negativ unendlich geht.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften von $x^3$]
#v(40pt)

#only("1-")[- Verläuft durch den Ursprung (0,0) 🎯]
#v(20pt)
#only("2-")[- S-förmige Kurve 〰️]
#v(20pt)
#only("3-")[- Ungerade Funktion (symmetrisch zum Ursprung) 🔄]
#v(20pt)
#only("4-")[- Kein Maximum oder Minimum 📈]

#only("1")[#voiceover("Lass uns die wichtigsten Eigenschaften der x hoch drei Funktion besprechen. Erstens verläuft sie durch den Ursprung, den Punkt null Komma null.")]
#only("2")[#voiceover("Zweitens hat sie eine markante S-förmige Kurve. Diese Form ist einzigartig für kubische Funktionen.")]
#only("3")[#voiceover("Drittens ist x hoch drei eine ungerade Funktion, was bedeutet, dass sie symmetrisch zum Ursprung ist. Wenn du den Graphen um 180 Grad um den Ursprung drehst, sieht er gleich aus.")]
#only("4")[#voiceover("Schließlich hat x hoch drei im Gegensatz zu quadratischen Funktionen kein Maximum oder Minimum. Sie steigt weiter an, wenn x zunimmt, und fällt weiter ab, wenn x abnimmt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vergleich von $x^3$ mit anderen Funktionen]
#v(40pt)

#only("1-")[- $x^3$ (Pink): Kubische Funktion 🟥]
#v(20pt)
#only("2-")[- $x^2$ (Blau): Quadratische Funktion 🟦]
#v(20pt)
#only("3-")[- $1/x$ (Grün): Reziproke Funktion 🟩]
#v(20pt)
#only("4-")[- $1/x^2$ (Orange): Inverse Quadratfunktion 🟧]

#only("1")[#voiceover("Nun, lass uns x hoch drei mit den anderen Funktionen im Graphen vergleichen. Die pinke Kurve stellt x hoch drei dar, unsere kubische Funktion.")]
#only("2")[#voiceover("Die blaue Kurve ist x hoch zwei, eine quadratische Funktion. Im Gegensatz zu x hoch drei ist sie immer nicht negativ und hat eine U-Form.")]
#only("3")[#voiceover("Die grüne Kurve zeigt ein durch x, eine reziproke Funktion. Sie hat zwei getrennte Teile und nähert sich, aber berührt nie die x- und y-Achsen.")]
#only("4")[#voiceover("Schließlich ist die orange Kurve ein durch x Quadrat, eine inverse Quadratfunktion. Sie ist ähnlich wie ein durch x, aber immer positiv und nähert sich der x-Achse schneller, wenn x zunimmt oder abnimmt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)

#only("1-")[- $x^3$ hat eine einzigartige S-Form 〰️]
#v(20pt)
#only("2-")[- Es ist die einzige Funktion, die alle Quadranten durchquert ➕➖]
#v(20pt)
#only("3-")[- Das Verständnis der Graphformen hilft, Funktionen zu identifizieren 📊]
#v(20pt)
#only("4-")[- Übe das Vergleichen verschiedener Funktionsgraphen 🏋️]

#only("1")[#voiceover("Zusammenfassend hat x hoch drei eine einzigartige S-Form, die sie von anderen gängigen Funktionen unterscheidet.")]
#only("2")[#voiceover("Es ist die einzige Funktion unter diesen, die alle vier Quadranten des Koordinatensystems durchquert.")]
#only("3")[#voiceover("Das Verständnis der Formen verschiedener Funktionsgraphen ist entscheidend, um verschiedene Arten von Funktionen zu identifizieren und mit ihnen zu arbeiten.")]
#only("4")[#voiceover("Übe weiter, indem du verschiedene Funktionsgraphen vergleichst. Diese Fähigkeit wird von unschätzbarem Wert sein, wenn du in deinen Mathematikstudien fortschreitest. Großartige Arbeit beim Erkennen der x hoch drei Funktion!")]
]