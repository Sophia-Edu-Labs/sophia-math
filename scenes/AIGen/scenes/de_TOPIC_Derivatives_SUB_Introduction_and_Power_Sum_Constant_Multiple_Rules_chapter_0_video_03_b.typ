#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Ableitung und Extrema]
#v(40pt)
Wenn die Ableitung einer Funktion an einem Punkt null ist, was kannst du über die Funktion an diesem Punkt aussagen?
#v(20pt)
#only("-1")[a) Die Funktion hat ein Maximum oder Minimum]#only("2-")[#text(fill:green)[a) Die Funktion hat ein Maximum oder Minimum]]
#v(10pt)
#only("-2")[b) Die Funktion ist steigend]#only("3-")[#text(fill:red)[b) Die Funktion ist steigend]]
#v(10pt)
#only("-3")[c) Die Funktion ist fallend]#only("4-")[#text(fill:red)[c) Die Funktion ist fallend]]
#v(10pt)
#only("-4")[d) Die Funktion ist konstant]#only("5-")[#text(fill:red)[d) Die Funktion ist konstant]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns erklären, warum Option a die richtige Wahl ist und warum die anderen falsch sind.")]
#only("2")[#voiceover("Option a ist korrekt. Wenn die Ableitung einer Funktion an einem Punkt null ist, deutet dies darauf hin, dass die Funktion an diesem Punkt ein Maximum oder Minimum haben könnte. Dies liegt daran, dass die Ableitung die Steigung der Tangente an die Funktion darstellt, und eine Steigung von null bedeutet, dass die Funktion an diesem Punkt flach ist, was bei Maxima und Minima der Fall ist.")]
#only("3")[#voiceover("Option b ist falsch. Eine Ableitung von null bedeutet nicht unbedingt, dass die Funktion steigend ist. Tatsächlich wechselt die Funktion an einem Maximum- oder Minimumspunkt von steigend zu fallend oder umgekehrt.")]
#only("4")[#voiceover("Ähnlich ist Option c falsch. Eine Ableitung von null impliziert nicht, dass die Funktion fallend ist. Wie bereits erwähnt, könnte sie zwischen steigend und fallend wechseln.")]
#only("5")[#voiceover("Schließlich ist Option d falsch. Während eine konstante Funktion überall eine Ableitung von null hätte, bedeutet eine Ableitung von null an einem einzelnen Punkt nicht, dass die gesamte Funktion konstant ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung von Extrema]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**3 - 3*x

x = np.linspace(-2, 2, 200)
y = f(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = x³ - 3x')
plt.plot(x, 3*x**2 - 3, label="f'(x) = 3x² - 3")
plt.axhline(y=0, color='r', linestyle='--')
plt.axvline(x=-1, color='g', linestyle=':', label='x = -1')
plt.axvline(x=1, color='g', linestyle=':', label='x = 1')
plt.scatter([-1, 1], [f(-1), f(1)], color='red', s=50, zorder=5)
plt.legend()
plt.title("Function and its Derivative")
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- Blaue Kurve: $f(x) = x^3 - 3x$]
#only("2-")[- Orange Kurve: $f'(x) = 3x^2 - 3$]
#only("3-")[- Rote Punkte: Extrema, wo $f'(x) = 0$]
#only("4-")[- Grüne gestrichelte Linien: $x = -1$ und $x = 1$]

#only("1")[#voiceover("Lass uns dieses Konzept mit einer spezifischen Funktion visualisieren. Hier haben wir die Funktion f von x gleich x hoch drei minus 3x, dargestellt in Blau.")]
#only("2")[#voiceover("Die orange Kurve stellt ihre Ableitung dar, f Strich von x, was 3x Quadrat minus 3 ist.")]
#only("3")[#voiceover("Beachte die roten Punkte auf der blauen Kurve. Dies sind die Extrema der Funktion, die dort auftreten, wo die Ableitung null ist.")]
#only("4")[#voiceover("Die grünen gestrichelten Linien zeigen, wo diese Extrema auftreten: bei x gleich minus 1 und x gleich 1. An diesen Punkten schneidet die orange Ableitungskurve die x-Achse, was bestätigt, dass die Ableitung null ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Null-Ableitung ≠ Immer Extremum 🚫]
#v(20pt)
#only("2-")[- Überprüfen:
  - Zweite Ableitung 📊
  - Verhalten um den Punkt 🔍]
#v(20pt)
#only("3-")[- Arten von Extrema:
  - Lokales Maximum 🏔️
  - Lokales Minimum 🏚️
  - Sattelpunkt 🏇]

#only("1")[#voiceover("Es ist wichtig zu beachten, dass eine Null-Ableitung zwar auf ein mögliches Extremum hinweist, aber nicht immer eines garantiert.")]
#only("2")[#voiceover("Um zu bestätigen, ob ein Punkt mit Null-Ableitung tatsächlich ein Extremum ist, müssen wir zusätzliche Bedingungen überprüfen. Dies könnte die Untersuchung der zweiten Ableitung oder die Analyse des Verhaltens der Funktion um den Punkt herum umfassen.")]
#only("3")[#voiceover("Denke schließlich daran, dass Extrema verschiedene Arten haben können. Wir haben lokale Maxima, die die höchsten Punkte in ihrer unmittelbaren Umgebung sind, lokale Minima, die die niedrigsten Punkte in der Nähe sind, und Sattelpunkte, die weder Maxima noch Minima sind, aber dennoch Null-Ableitungen haben.")]
]