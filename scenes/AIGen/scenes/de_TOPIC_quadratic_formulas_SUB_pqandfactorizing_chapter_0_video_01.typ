#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Einführung in quadratische Gleichungen]
#v(20pt)
#only("1-")[- 📐 Gleichungen mit $x^2$ als höchste Potenz]
#v(20pt)
#only("2-")[- 🧮 Allgemeine Form: $a x^2 + b x + c = 0$]
#v(20pt)
#only("3-")[- 🔑 Schlüsselkomponenten: $a$, $b$ und $c$]
#v(20pt)
#only("4-")[- 📈 Stellt graphisch Parabeln dar]

#only("1")[
#voiceover("Willkommen zu unserer Einführung in quadratische Gleichungen! Stell Dir vor, Du entwirfst die Flugbahn einer Rakete oder berechnest die Fläche eines runden Gartens. In diesen Szenarien könntest Du auf Gleichungen stoßen, bei denen die Variable quadriert wird. Das sind quadratische Gleichungen, und sie sind in vielen realen Anwendungen unglaublich nützlich.")
]

#only("2")[
#voiceover("Quadratische Gleichungen haben immer $x^2$ als höchste Potenz. Sie folgen einer allgemeinen Form: $a x^2 + b x + c = 0$. Hier ist $x$ unsere Variable, und $a$, $b$ und $c$ sind Konstanten.")
]

#only("3")[
#voiceover("Lass uns diese Komponenten aufschlüsseln. '$a$' ist der Koeffizient von $x^2$ und kann nicht null sein. '$b$' ist der Koeffizient von $x$, und '$c$' ist der konstante Term. Diese drei Werte bestimmen das Verhalten unserer quadratischen Gleichung.")
]

#only("4")[
#voiceover("Wenn wir quadratische Gleichungen grafisch darstellen, bilden sie eine spezielle gekrümmte Form, die Parabel genannt wird. Diese Form ist entscheidend, um die Lösungen und das Verhalten quadratischer Gleichungen zu verstehen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiele für quadratische Gleichungen]
#v(20pt)
#only("1-")[- Einfach: $x^2 - 4 = 0$]
#v(20pt)
#only("2-")[- Standard: $2x^2 - 5x + 2 = 0$]
#v(20pt)
#only("3-")[- Komplex: $-3x^2 + 7x - 1 = 0$]
#v(20pt)
#only("4-")[#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y1 = x**2 - 4
y2 = 2*x**2 - 5*x + 2
y3 = -3*x**2 + 7*x - 1

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='$x^2 - 4$')
plt.plot(x, y2, label='$2x^2 - 5x + 2$')
plt.plot(x, y3, label='$-3x^2 + 7x - 1$')

plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graphische Darstellung quadratischer Gleichungen')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]]

#only("1")[
#voiceover("Schauen wir uns einige Beispiele für quadratische Gleichungen an. Unser erstes Beispiel ist ein einfaches: $x^2 - 4 = 0$. Hier ist $a$ 1, $b$ ist 0, und $c$ ist minus 4.")
]

#only("2")[
#voiceover("Eine standardmäßigere Form ist $2x^2 - 5x + 2 = 0$. In diesem Fall ist $a$ 2, $b$ ist minus 5, und $c$ ist 2.")
]

#only("3")[
#voiceover("Wir können auch komplexere Formen haben wie $-3x^2 + 7x - 1 = 0$. Hier ist $a$ minus 3, $b$ ist 7, und $c$ ist minus 1.")
]

#only("4")[
#voiceover("Lass uns diese Gleichungen visualisieren. Der Graph zeigt die Parabeln, die durch unsere drei Beispielgleichungen gebildet werden. Beachte, wie sie alle unterschiedliche Formen und Positionen basierend auf ihren $a$-, $b$- und $c$-Werten haben. Die Punkte, an denen diese Kurven die x-Achse schneiden, sind die Lösungen der Gleichungen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(20pt)
#only("1-")[- 📚 Quadratische Gleichungen: $a x^2 + b x + c = 0$]
#v(20pt)
#only("2-")[- 🔢 Höchste Potenz von $x$ ist 2]
#v(20pt)
#only("3-")[- 📊 Grafisch als Parabeln dargestellt]
#v(20pt)
#only("4-")[- 🌟 Wesentlich in vielen realen Anwendungen]

#only("1")[
#voiceover("Zusammenfassend sind quadratische Gleichungen algebraische Gleichungen in der Form $a x^2 + b x + c = 0$.")
]

#only("2")[
#voiceover("Sie werden 'quadratisch' genannt, weil die höchste Potenz der Variablen $x$ 2 ist.")
]

#only("3")[
#voiceover("Wenn sie grafisch dargestellt werden, bilden diese Gleichungen Parabeln, die je nach Vorzeichen von $a$ nach oben oder unten geöffnet sein können.")
]

#only("4")[
#voiceover("Das Verständnis quadratischer Gleichungen ist entscheidend, da sie in vielen realen Szenarien vorkommen, von der Physik bis zur Wirtschaft. In unseren nächsten Lektionen werden wir tiefer in die Lösung dieser Gleichungen und die Erforschung ihrer Eigenschaften eintauchen. Bleib neugierig!")
]
]