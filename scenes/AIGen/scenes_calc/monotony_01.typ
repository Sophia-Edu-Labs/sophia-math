#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Monotonie]
#v(40pt)

#only("1")[
#voiceover("Monotonie trifft eine Aussage darüber, ob eine Funktion sich nur in eine Richtung entwickelt.")
]
#only("2-")[- Monoton steigend: Funktion $arrow.t$]
#only("3-")[- Monoton fallend: Funktion $arrow.b$]
#only("4-")[- Ableitung bestimmt Monotonie]
#only("2")[
#voiceover("Eine Funktion ist monoton steigend, wenn sie immer größer wird, wenn x größer wird.")
]
#only("3")[
#voiceover("Und sie ist monoton fallend, wenn sie immer kleiner wird, wenn x größer wird.")
]
#only("4")[
#voiceover("Die Ableitung einer Funktion verrät uns, ob die Funktion monoton steigend oder fallend ist. Ist die Ableitung positiv, ist die Funktion monoton steigend. Ist die Ableitung negativ, ist die Funktion monoton fallend.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Monotonie bestimmen]
#v(40pt)
#only("1-")[- Ableitung der Funktion bilden]
#only("2-")[- Vorzeichen untersuchen]
#only("3-")[- Positiv $->$ monoton steigend]
#only("4-")[- Negativ $->$ monoton fallend]
#only("1")[
#voiceover("Um die Monotonie einer Funktion zu bestimmen, bilden wir also zuerst ihre Ableitung.")
]
#only("2")[
#voiceover("Dann untersuchen wir das Vorzeichen der Ableitung.")
]
#only("3")[
#voiceover("Ist die Ableitung überall positiv, ist die Funktion monoton steigend.")
]
#only("4")[
#voiceover("Ist die Ableitung überall negativ, ist die Funktion monoton fallend.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1")[
#voiceover("Hier seht ihr die Graphen zweier Funktionen.")
]
#v(40pt)
#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

import numpy as np
def f1(x):
  return x**3 + x
def f2(x):
  return -(x**3)/2 - 8*x + 4
x = np.linspace(-3, 3, 400)
y1 = f1(x)
y2 = f2(x)
plt.figure(figsize=(8, 6))
plt.plot(x, y1, color='red', label='$f(x) = x^3 + x$')
plt.plot(x, y2, color='blue', label='$f(x) = -(x^3)/2 - 8x + 4$')
plt.grid(True)
plt.legend()
plt.show()

```,
width: 360pt),
)
]
#v(40pt)
#only("2-")[- Rot: Monoton steigend]
#only("3-")[- Blau: Monoton fallend]
#only("2")[
#voiceover("Der rote Graph gehört zur Funktion f von x gleich x hoch drei plus x. Sie ist monoton steigend, denn sie wird immer größer, wenn x größer wird.")
]

#only("3")[
#voiceover("Der blaue Graph gehört zur Funktion f von x gleich minus x hoch drei durch zwei minus acht x plus vier. Sie ist monoton fallend, denn sie wird immer kleiner, wenn x größer wird.")
]
]