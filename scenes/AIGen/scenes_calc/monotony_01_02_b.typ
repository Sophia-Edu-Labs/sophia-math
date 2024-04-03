#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Monotonie bestimmen]
#v(40pt)
#only("1-")[$f(x) = x^3$]
#only("1")[#voiceover("Super, das stimmt. Wir haben die Funktion f von x gleich x hoch drei.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Ableitung bilden]]]
#only("2")[#voiceover("Zuerst bilden wir die Ableitung. Die Ableitung von x hoch drei ist drei x quadrat.")]
#v(10pt)
#only("3-")[$f'(x) = 3x^2$]
#only("3")[#voiceover("Die Ableitung ist also f Strich von x gleich drei x quadrat.")]
#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Vorzeichen untersuchen]]]
#only("4")[#voiceover("Jetzt untersuchen wir das Vorzeichen der Ableitung.")]
#v(10pt)
#only("5-")[$3x^2 > 0$ für alle $x ≠ 0$]
#only("5")[#voiceover("Drei x quadrat ist immer größer als null, außer für x gleich null.")]
#v(10pt)
#only("6-")[#text(weight: "bold")[⇒ $f(x)$ ist monoton steigend]]
#only("6")[#voiceover("Da die Ableitung fast überall positiv ist, ist die Funktion f von x gleich x hoch drei monoton steigend.")]
]
#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(50pt)
#only("1-")[Graph der Funktion $f(x) = x^3$]
#only("1")[
#voiceover("Hier seht ihr den Graphen der Funktion f von x gleich x hoch drei. Wie ihr seht, wird die Funktion immer größer, wenn x größer wird. Sie ist also monoton steigend.")

]
#v(20pt)
#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

import numpy as np
def f(x):
  return x**3
x = np.linspace(-3, 3, 400)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y)
plt.grid(True)
plt.title("$f(x) = x^3$")
plt.show()

```,
width: 360pt)
)
]
]