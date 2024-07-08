#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphen von Potenzfunktionen]
#v(40pt)
#only("1-")[Welcher Graph gehört zur Funktion $1/x^2$?]
#v(20pt)
#only("-1")[a) Roter Graph]#only("2-")[#text(fill:red)[a) Roter Graph]]
#v(10pt)
#only("-2")[b) Grüner Graph]#only("3-")[#text(fill:red)[b) Grüner Graph]]
#v(10pt)
#only("-3")[c) Blauer Graph]#only("4-")[#text(fill:red)[c) Blauer Graph]]
#v(10pt)
#only("-4")[d) Oranger Graph]#only("5-")[#text(fill:green)[d) Oranger Graph]]
#v(40pt)

#only("1")[#voiceover("Ausgezeichnet! Du hast den Graphen von eins durch x Quadrat korrekt identifiziert. Lass uns jede Option durchgehen, um zu verstehen, warum.")]
#only("2")[#voiceover("Der rote Graph stellt x Quadrat dar, nicht eins durch x Quadrat. Es ist eine nach oben geöffnete Parabel.")]
#only("3")[#voiceover("Der grüne Graph zeigt eins durch x, was ähnlich wie eins durch x Quadrat ist, aber nicht ganz dasselbe.")]
#only("4")[#voiceover("Der blaue Graph stellt x hoch drei dar, was sehr unterschiedlich von eins durch x Quadrat ist.")]
#only("5")[#voiceover("Der orange Graph ist tatsächlich die korrekte Darstellung von eins durch x Quadrat. Lass uns genauer erkunden, warum.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften von $1/x^2$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 1000)
y = 1/x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y, 'orange', label='1/x^2')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.ylim(0, 5)
plt.xlim(-5, 5)
plt.title('Graph von 1/x^2')
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
#v(20pt)
#only("1-")[- Asymptotisch zur x-Achse 📉]
#only("2-")[- Vertikale Asymptote bei x = 0 📏]
#only("3-")[- Immer positiv ➕]
#only("4-")[- Symmetrisch zur y-Achse 🪞]

#only("1")[#voiceover("Schauen wir uns die wichtigsten Eigenschaften der Funktion eins durch x Quadrat an. Zuerst siehst Du, wie der Graph sich der x-Achse nähert, aber sie nie berührt, wenn x sehr groß oder sehr klein wird. Dies nennt man asymptotisch zur x-Achse.")]
#only("2")[#voiceover("Als nächstes siehst Du, wie der Graph gegen unendlich strebt, wenn x sich von beiden Seiten null nähert? Dies erzeugt eine vertikale Asymptote bei x gleich null.")]
#only("3")[#voiceover("Beachte auch, dass die y-Werte immer positiv sind. Das liegt daran, dass jede Zahl im Quadrat positiv ist und eins durch eine positive Zahl immer positiv ist.")]
#only("4")[#voiceover("Zuletzt ist der Graph symmetrisch zur y-Achse. Das bedeutet, wenn Du den Graphen entlang der y-Achse faltest, würden beide Seiten perfekt übereinstimmen.")]
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

x = np.linspace(-5, 5, 1000)
y1 = x**2
y2 = x**3
y3 = 1/x
y4 = 1/x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y1, 'red', label='x^2')
plt.plot(x, y2, 'blue', label='x^3')
plt.plot(x, y3, 'green', label='1/x')
plt.plot(x, y4, 'orange', label='1/x^2')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.ylim(-5, 5)
plt.xlim(-5, 5)
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
#v(20pt)
#only("1-")[- Rot: $x^2$ (Parabel) 🔴]
#only("2-")[- Blau: $x^3$ (Kubisch) 🔵]
#only("3-")[- Grün: $1/x$ (Reziprok) 🟢]
#only("4-")[- Orange: $1/x^2$ (Inverse Quadrat) 🟠]

#only("1")[#voiceover("Nun vergleichen wir eins durch x Quadrat mit den anderen Funktionen. Der rote Graph zeigt x Quadrat, eine nach oben geöffnete Parabel, die den Ursprung berührt.")]
#only("2")[#voiceover("Der blaue Graph stellt x hoch drei dar. Er geht durch den Ursprung und erstreckt sich in den ersten Quadranten bis ins Unendliche und im dritten Quadranten bis ins Negative Unendliche.")]
#only("3")[#voiceover("Der grüne Graph ist eins durch x. Er ist ähnlich wie eins durch x Quadrat, aber weniger steil und verläuft durch den zweiten und vierten Quadranten.")]
#only("4")[#voiceover("Schließlich ist unser orangefarbener Graph, eins durch x Quadrat, am steilsten in der Nähe von null und nähert sich der x-Achse am schnellsten, wenn x größer oder kleiner wird.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- $1/x^2$ ist steiler als $1/x$ nahe x = 0 📐]
#v(20pt)
#only("2-")[- $1/x^2$ nähert sich der x-Achse schneller als $1/x$ 🏃‍♂️]
#v(20pt)
#only("3-")[- Im Gegensatz zu $x^2$ und $x^3$ schneidet $1/x^2$ nie die x-Achse ❌]
#v(20pt)
#only("4-")[- $1/x^2$ ist immer positiv, im Gegensatz zu $1/x$ und $x^3$ ➕]

#only("1")[#voiceover("Fassen wir die wichtigsten Punkte zusammen. Eins durch x Quadrat ist steiler als eins durch x nahe x gleich null.")]
#only("2")[#voiceover("Es nähert sich auch der x-Achse schneller als eins durch x, wenn x größer oder kleiner wird.")]
#only("3")[#voiceover("Im Gegensatz zu x Quadrat und x hoch drei schneidet eins durch x Quadrat nie die x-Achse.")]
#only("4")[#voiceover("Schließlich ist eins durch x Quadrat immer positiv, im Gegensatz zu eins durch x und x hoch drei, die negativ sein können. Großartige Arbeit beim Verstehen dieser Potenzfunktionen!")]
]