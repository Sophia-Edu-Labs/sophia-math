#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphen von Potenzfunktionen]
#v(40pt)

#only("1-")[Welcher Graph gehört zur Funktion $x^3$?]
#v(20pt)

#only("-1")[a) Roter Graph ($x^2$)]#only("2-")[#text(fill:red)[a) Roter Graph ($x^2$)]]
#v(10pt)
#only("-2")[b) Grüner Graph ($1/x$)]#only("3-")[#text(fill:red)[b) Grüner Graph ($1/x$)]]
#v(10pt)
#only("-3")[c) Blauer Graph ($x^3$)]#only("4-")[#text(fill:green)[c) Blauer Graph ($x^3$)]]
#v(10pt)
#only("-4")[d) Oranger Graph ($1/x^2$)]#only("5-")[#text(fill:red)[d) Oranger Graph ($1/x^2$)]]

#only("1")[#voiceover("Ausgezeichnet! Du hast den Graphen von x hoch drei korrekt identifiziert. Lass uns jede Option durchgehen, um zu verstehen warum.")]
#only("2")[#voiceover("Option a, der rote Graph, stellt x hoch zwei dar. Diese Funktion erzeugt eine Parabel, die nach oben öffnet, was sich von der Form von x hoch drei unterscheidet.")]
#only("3")[#voiceover("Option b, der grüne Graph, stellt eins durch x dar. Diese Funktion erzeugt eine Hyperbel, die sich stark von der Form von x hoch drei unterscheidet.")]
#only("4")[#voiceover("Option c, der blaue Graph, ist tatsächlich x hoch drei. Dies ist die richtige Antwort. Die Funktion x hoch drei erzeugt eine S-förmige Kurve, die durch den Ursprung verläuft.")]
#only("5")[#voiceover("Option d, der orange Graph, stellt eins durch x Quadrat dar. Diese Funktion erzeugt eine U-förmige Kurve, die sich der x-Achse annähert, aber sie nie berührt, im Gegensatz zu x hoch drei.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Graphen]
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
y2 = 1/x
y3 = x**3
y4 = 1/(x**2)

plt.figure(figsize=(10, 6))
plt.plot(x, y1, 'r', label='$x^2$')
plt.plot(x, y2, 'g', label='$1/x$')
plt.plot(x, y3, 'b', label='$x^3$')
plt.plot(x, y4, 'orange', label='$1/x^2$')

plt.xlim(-2, 2)
plt.ylim(-8, 8)
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend()
plt.title('Comparison of Power Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Lass uns diese Funktionen visualisieren, um ihre Formen besser zu verstehen. Hier haben wir alle vier Graphen zusammen dargestellt.")]
#only("2")[#voiceover("Die rote Parabel ist x hoch zwei, die symmetrisch um die y-Achse nach oben öffnet.")]
#only("3")[#voiceover("Die grüne Hyperbel ist eins durch x, die sich der x- und y-Achse annähert, aber sie nie berührt.")]
#only("4")[#voiceover("Die blaue S-förmige Kurve ist x hoch drei, unsere richtige Antwort. Beachte, wie sie durch den Ursprung verläuft und symmetrisch ist, wenn sie um 180 Grad gedreht wird.")]
#only("5")[#voiceover("Die orange U-förmige Kurve ist eins durch x Quadrat, die sich der x-Achse annähert, aber sie nie berührt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften von $x^3$]
#v(40pt)

#only("1-")[- Verläuft durch den Ursprung (0,0) 📍]
#v(20pt)
#only("2-")[- S-förmige Kurve 〰️]
#v(20pt)
#only("3-")[- Ungerade Funktion (symmetrisch bei 180° Drehung) 🔄]
#v(20pt)
#only("4-")[- Keine horizontalen Asymptoten ↔️]

#only("1")[#voiceover("Nun, lass uns die Eigenschaften von x hoch drei betrachten, die es einzigartig machen.")]
#only("2")[#voiceover("Erstens verläuft x hoch drei immer durch den Ursprung, den Punkt null, null.")]
#only("3")[#voiceover("Zweitens bildet es eine S-förmige Kurve, auch bekannt als kubische Kurve.")]
#only("4")[#voiceover("Drittens ist x hoch drei eine ungerade Funktion, was bedeutet, dass sie symmetrisch ist, wenn sie um 180 Grad um den Ursprung gedreht wird.")]
#only("5")[#voiceover("Zuletzt hat x hoch drei, im Gegensatz zu einigen der anderen Funktionen, keine horizontalen Asymptoten. Es wächst unendlich in beide Richtungen, sowohl positiv als auch negativ.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum nicht die anderen Optionen?]
#v(40pt)

#only("1-")[- $x^2$: Öffnet nach oben, gerade Funktion 🔼]
#v(20pt)
#only("2-")[- $1/x$: Hyperbel, hat horizontale Asymptoten ↔️]
#v(20pt)
#only("3-")[- $1/x^2$: Immer positiv, hat horizontale Asymptote ➕]

#only("1")[#voiceover("Lass uns schnell überprüfen, warum die anderen Optionen nicht x hoch drei sein können.")]
#only("2")[#voiceover("x hoch zwei öffnet nach oben und ist eine gerade Funktion, im Gegensatz zu x hoch drei, das ungerade ist.")]
#only("3")[#voiceover("Eins durch x bildet eine Hyperbel mit horizontalen Asymptoten, die x hoch drei nicht hat.")]
#only("4")[#voiceover("Eins durch x Quadrat ist immer positiv und hat eine horizontale Asymptote bei y gleich null, im Gegensatz zu x hoch drei, das sowohl positive als auch negative Werte annimmt und keine horizontalen Asymptoten hat.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)

#only("1-")[- $x^3$ hat eine markante S-förmige Kurve 〰️]
#v(20pt)
#only("2-")[- Verläuft immer durch (0,0) 📍]
#v(20pt)
#only("3-")[- Ungerade Funktion 🔄]
#v(20pt)
#only("4-")[- Keine horizontalen Asymptoten ↔️]

#only("1")[#voiceover("Zum Abschluss, lass uns die wichtigsten Eigenschaften von x hoch drei zusammenfassen, die uns helfen, seinen Graphen zu identifizieren.")]
#only("2")[#voiceover("Es hat eine markante S-förmige Kurve, die sich von allen anderen betrachteten Funktionen unterscheidet.")]
#only("3")[#voiceover("Es verläuft immer durch den Ursprung.")]
#only("4")[#voiceover("Es ist eine ungerade Funktion, symmetrisch bei einer Drehung um 180 Grad.")]
#only("5")[#voiceover("Und es hat keine horizontalen Asymptoten. Merke dir diese Merkmale, und du wirst immer in der Lage sein, den Graphen von x hoch drei zu erkennen!")]
]