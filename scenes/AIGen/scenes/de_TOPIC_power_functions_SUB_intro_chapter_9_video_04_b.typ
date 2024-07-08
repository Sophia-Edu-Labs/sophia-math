#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphen von Potenzfunktionen]
#v(40pt)

#only("1-")[Welcher Graph stellt die Funktion $1/x$ dar?]
#v(20pt)

#only("-1")[a) Roter Graph]#only("2-")[#text(fill:red)[a) Roter Graph]]
#v(10pt)
#only("-2")[b) Grüner Graph]#only("3-")[#text(fill:green)[b) Grüner Graph]]
#v(10pt)
#only("-3")[c) Blauer Graph]#only("4-")[#text(fill:red)[c) Blauer Graph]]
#v(10pt)
#only("-4")[d) Oranger Graph]#only("5-")[#text(fill:red)[d) Oranger Graph]]

#only("1")[#voiceover("Ausgezeichnet! Du hast den Graphen von eins durch x korrekt identifiziert. Lass uns jede Option durchgehen, um zu verstehen, warum.")]
#only("2")[#voiceover("Option a, der rote Graph, ist falsch. Dieser Graph stellt $x^2$ dar, eine Parabel, die nach oben öffnet.")]
#only("3")[#voiceover("Option b, der grüne Graph, ist korrekt. Dies ist tatsächlich der Graph von eins durch x, auch bekannt als die Kehrwertfunktion.")]
#only("4")[#voiceover("Option c, der blaue Graph, ist falsch. Dieser Graph stellt $x^3$ dar, der eine charakteristische S-Form hat.")]
#only("5")[#voiceover("Option d, der orange Graph, ist ebenfalls falsch. Dieser Graph stellt eins durch $x^2$ dar, was ähnlich wie eins durch x ist, aber nicht in die negativen y-Werte übergeht.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften von $1/x$]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-10, 10, 1000)
y = 1/x

plt.figure(figsize=(10,6))
plt.plot(x, y, 'g-', label='1/x')
plt.axhline(y=0, color='k', linestyle='-')
plt.axvline(x=0, color='k', linestyle='-')
plt.ylim(-5, 5)
plt.xlim(-10, 10)
plt.title('Graph von y = 1/x')
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

#only("1-")[- Hyperbelform 📉]
#v(10pt)
#only("2-")[- Asymptoten bei $x=0$ und $y=0$ 📊]
#v(10pt)
#only("3-")[- Nimmt ab, wenn $x$ zunimmt (und umgekehrt) 🔄]

#only("1")[#voiceover("Lass uns die Eigenschaften der Funktion eins durch x untersuchen. Zuerst bemerke die charakteristische Hyperbelform.")]
#only("2")[#voiceover("Sie hat zwei Asymptoten: eine bei x gleich null und eine bei y gleich null. Der Graph nähert sich diesen Linien, berührt sie aber nie.")]
#only("3")[#voiceover("Wenn x zunimmt, nimmt y ab, und umgekehrt. Diese inverse Beziehung ist ein Hauptmerkmal der Kehrwertfunktion.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vergleich von Potenzfunktionen]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 1000)
y1 = x**2
y2 = x**3
y3 = 1/x
y4 = 1/x**2

plt.figure(figsize=(10,6))
plt.plot(x, y1, 'r-', label='x^2')
plt.plot(x, y2, 'b-', label='x^3')
plt.plot(x, y3, 'g-', label='1/x')
plt.plot(x, y4, 'orange', label='1/x^2')
plt.axhline(y=0, color='k', linestyle='-')
plt.axvline(x=0, color='k', linestyle='-')
plt.ylim(-5, 5)
plt.xlim(-3, 3)
plt.title('Vergleich von Potenzfunktionen')
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

#only("1-")[- Rot: $x^2$ (Parabel) 🔴]
#v(10pt)
#only("2-")[- Blau: $x^3$ (Kubische Funktion) 🔵]
#v(10pt)
#only("3-")[- Grün: $1/x$ (Kehrwertfunktion) 🟢]
#v(10pt)
#only("4-")[- Orange: $1/x^2$ (Inverse Quadratfunktion) 🟠]

#only("1")[#voiceover("Nun, lass uns die Graphen verschiedener Potenzfunktionen vergleichen. In Rot haben wir $x^2$, das eine Parabel bildet.")]
#only("2")[#voiceover("Die blaue Kurve stellt $x^3$ dar, eine kubische Funktion mit ihrer charakteristischen S-Form.")]
#only("3")[#voiceover("Unsere grüne Kurve ist eins durch x, die Kehrwertfunktion, die wir zuvor identifiziert haben.")]
#only("4")[#voiceover("Schließlich zeigt die orange Kurve eins durch $x^2$, was ähnlich wie eins durch x ist, aber immer positiv bleibt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)

#only("1-")[- $1/x$ hat eine einzigartige hyperbolische Form 📉]
#v(10pt)
#only("2-")[- Es unterscheidet sich von anderen Potenzfunktionen 🔢]
#v(10pt)
#only("3-")[- Das Verständnis dieser Unterschiede hilft bei der Identifikation von Funktionen 🧠]

#only("1")[#voiceover("Zusammenfassend hat die Funktion eins durch x eine einzigartige hyperbolische Form, die sie von anderen Potenzfunktionen unterscheidet.")]
#only("2")[#voiceover("Es ist wichtig zu erkennen, wie sie sich von Funktionen wie $x^2$, $x^3$ und eins durch $x^2$ unterscheidet.")]
#only("3")[#voiceover("Das Verständnis dieser Unterschiede wird dir helfen, verschiedene Potenzfunktionen in der Zukunft zu identifizieren und zu bearbeiten. Gute Arbeit beim Erkennen des richtigen Graphen!")]
]