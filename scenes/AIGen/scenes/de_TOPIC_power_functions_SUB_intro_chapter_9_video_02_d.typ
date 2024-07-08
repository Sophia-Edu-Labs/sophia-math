#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphen von Potenzfunktionen]
#v(40pt)

#only("1-")[Welcher der folgenden Graphen gehört zur Funktion $x^2$?]
#v(20pt)

#only("-1")[a) Roter Graph]#only("2-")[#text(fill:green)[a) Roter Graph]]
#v(10pt)
#only("-2")[b) Grüner Graph]#only("3-")[#text(fill:red)[b) Grüner Graph]]
#v(10pt)
#only("-3")[c) Blauer Graph]#only("4-")[#text(fill:red)[c) Blauer Graph]]
#v(10pt)
#only("-4")[d) Oranger Graph]#only("5-")[#text(fill:red)[d) Oranger Graph]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns jede Option durchgehen, um zu verstehen, warum der rote Graph die richtige Wahl ist.")]
#only("2")[#voiceover("Option a, der rote Graph, ist tatsächlich korrekt. Dies ist der Graph von x Quadrat.")]
#only("3")[#voiceover("Option b, der grüne Graph, ist falsch. Dieser Graph stellt eins durch x dar, nicht x Quadrat.")]
#only("4")[#voiceover("Option c, der blaue Graph, ist ebenfalls falsch. Dieser Graph stellt x hoch drei dar.")]
#only("5")[#voiceover("Option d, der orange Graph, ist auch falsch. Dieser Graph stellt eins durch x Quadrat dar.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften von $x^2$]
#v(40pt)

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
plt.plot(x, y, 'r', label='$x^2$')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph von $y = x^2$')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1-")[- U-förmige Kurve (Parabel) 📈]
#v(10pt)
#only("2-")[- Symmetrisch zur y-Achse 🪞]
#v(10pt)
#only("3-")[- Scheitelpunkt im Ursprung (0,0) 🎯]
#v(10pt)
#only("4-")[- Immer nicht-negativ für reelle x 📊]

#only("1")[#voiceover("Schauen wir uns die wichtigsten Eigenschaften der Funktion x Quadrat an. Zuerst fällt auf, dass sie eine U-förmige Kurve bildet, auch bekannt als Parabel.")]
#only("2")[#voiceover("Der Graph ist symmetrisch zur y-Achse. Das bedeutet, wenn du den Graphen entlang der y-Achse faltest, würden beide Seiten perfekt übereinander liegen.")]
#only("3")[#voiceover("Der Scheitelpunkt, oder der tiefste Punkt der Parabel, liegt im Ursprung - dem Punkt null, null.")]
#only("4")[#voiceover("Zuletzt, für jeden reellen Wert von x ist y immer nicht-negativ. Das bedeutet, der Graph geht nie unter die x-Achse.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vergleich mit anderen Funktionen]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y1 = x**2
y2 = x**3
y3 = 1/x
y4 = 1/(x**2)

plt.figure(figsize=(10, 8))
plt.plot(x, y1, 'r', label='$x^2$')
plt.plot(x, y2, 'b', label='$x^3$')
plt.plot(x, y3, 'g', label='$1/x$')
plt.plot(x, y4, 'orange', label='$1/x^2$')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Vergleich verschiedener Funktionen')
plt.legend()
plt.grid(True)
plt.ylim(-3, 3)
plt.show()

```,
width: 360pt),
)
]
]

#only("1-")[- Rot: $x^2$ (Parabel) 📈]
#v(10pt)
#only("2-")[- Blau: $x^3$ (kubische Funktion) 📉]
#v(10pt)
#only("3-")[- Grün: $1/x$ (reziproke Funktion) 📊]
#v(10pt)
#only("4-")[- Orange: $1/x^2$ (reziprok Quadrat) 📈]

#only("1")[#voiceover("Nun, lass uns x Quadrat mit den anderen Funktionen aus unseren Optionen vergleichen. Der rote Graph, wie wir wissen, stellt x Quadrat dar. Es ist unsere vertraute Parabel.")]
#only("2")[#voiceover("Der blaue Graph stellt x hoch drei dar. Beachte, wie er für positive x ähnlich wie x Quadrat ist, aber für negative x anders verhält.")]
#only("3")[#voiceover("Der grüne Graph ist eins durch x. Er hat zwei getrennte Teile und nähert sich positivem und negativem Unendlichen, wenn sich x von beiden Seiten null nähert.")]
#only("4")[#voiceover("Schließlich ist der orange Graph eins durch x Quadrat. Er ist immer positiv, wie x Quadrat, nähert sich aber Unendlichen, wenn sich x null nähert.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)

#only("1-")[- $x^2$ ist eine quadratische Funktion 📚]
#v(10pt)
#only("2-")[- Ihr Graph ist eine symmetrische Parabel 🪞]
#v(10pt)
#only("3-")[- Sie unterscheidet sich von anderen Potenzfunktionen 🔍]
#v(10pt)
#only("4-")[- Das Verständnis ihrer Form hilft, sie zu identifizieren 👁️]

#only("1")[#voiceover("Fassen wir zusammen, was wir gelernt haben. Erstens, x Quadrat ist eine quadratische Funktion, die einfachste ihrer Art.")]
#only("2")[#voiceover("Ihr Graph ist eine symmetrische Parabel, was ein wichtiges Erkennungsmerkmal ist.")]
#only("3")[#voiceover("Es ist wichtig zu beachten, wie sich x Quadrat von anderen Potenzfunktionen wie x hoch drei oder reziproken Funktionen unterscheidet.")]
#only("4")[#voiceover("Das Verständnis der Form und Eigenschaften von x Quadrat wird dir helfen, sie in verschiedenen mathematischen Kontexten zu identifizieren. Großartige Arbeit beim Erkennen in dieser Übung!")]
]