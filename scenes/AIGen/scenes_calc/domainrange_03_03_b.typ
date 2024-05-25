#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]

#v(40pt)

#only("2-")[#text()[$ f(x) = ln(1+x^2) + x^2 - 5 $]]

#v(60pt)

#only("3-")[#text(size: 30pt, weight: "bold")[Ansatz]]

#v(40pt)

#only("4-")[- Grenzwerte für $x -> -infinity$]
#only("5-")[- Grenzwerte für $x -> infinity$]
#only("6-")[- Minimum von $f(x)$]
#only("7-")[- Wertebereich von $f(x)$]

#only("1")[
#voiceover("Nein, das ist leider nicht richtig. Wir möchten ja den Wertebereich der Funktion")
]

#only("2")[
#voiceover("f von x gleich Logarithmus von 1 plus x Quadrat plus x Quadrat minus 5 ermitteln.")
]

#only("3")[
#voiceover("Um den Wertebereich zu finden, betrachten wir die Grenzwerte der Funktion für verschiedene Werte von x und das Minimum der Funktion.")
]

#only("4")[
#voiceover("Zuerst untersuchen wir die Grenzwerte für x gegen minus unendlich,")
]

#only("5")[
#voiceover("und für x gegen plus unendlich.")
]

#only("6")[
#voiceover("Dann bestimmen wir das Minimum der Funktion.")
]

#only("7")[
#voiceover("Aus diesen Informationen leiten wir dann den Wertebereich von f ab.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]

#v(40pt)

#align(center)[$f(x)=ln(1+x^2)+x^2-5$]

#v(40pt)

#only("2-")[- $limits(lim)_(x-> -infinity) ln(1+x^2) = infinity $]
#only("3-")[- $limits(lim)_(x-> -infinity) x^2 = infinity $]
#only("4-")[- $limits(lim)_(x-> -infinity) f(x) = infinity $]

#v(30pt)

#only("5-")[- $limits(lim)_(x-> infinity) ln(1+x^2) = infinity $]
#only("6-")[- $limits(lim)_(x-> infinity) x^2 = infinity $]
#only("7-")[- $limits(lim)_(x-> infinity) f(x) = infinity $]

#only("1")[#voiceover("Beginnen wir mit den Grenzwerten für x gegen minus unendlich und plus unendlich.")]

#only("2")[#voiceover("Für x gegen minus unendlich geht der Logarithmus von 1 plus x Quadrat gegen plus unendlich.")]

#only("3")[#voiceover("Und x Quadrat geht ebenfalls gegen plus unendlich.")]

#only("4")[#voiceover("Also geht f für x gegen minus unendlich gegen plus unendlich plus unendlich minus 5, also gegen plus unendlich.")]

#only("5")[#voiceover("Für x gegen plus unendlich geht der Logarithmus von 1 plus x Quadrat ebenfalls gegen plus unendlich.")]

#only("6")[#voiceover("Und x Quadrat geht wieder gegen plus unendlich.")]

#only("7")[#voiceover("Also geht f für x gegen plus unendlich auch gegen plus unendlich plus unendlich minus 5, also gegen plus unendlich.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]

#v(40pt)

#align(center)[$f(x)=ln(1+x^2)+x^2-5$]

#v(40pt)

#only("2-")[- $f'(x) = (2x)/(1+x^2) + 2x$]
#only("3-")[- $f'(0) = 0$]
#only("4-")[- $f''(x) = (2(1+x^2)-4x^2)/(1+x^2)^2 + 2$]
#only("5-")[- $f''(0) = 2 > 0$]
#only("6-")[- $f(0) = ln(1) + 0^2 - 5 = -5$]
#only("7-")[- Minimum von $f(x)$ bei $x = 0$]

#only("1")[#voiceover("Nun bestimmen wir das Minimum der Funktion.")]

#only("2")[#voiceover("Die erste Ableitung von f ist 2x durch 1 plus x Quadrat plus 2x.")]

#only("3")[#voiceover("Für x gleich 0 ist die erste Ableitung gleich 0.")]

#only("4")[#voiceover("Die zweite Ableitung von f ist 2 mal 1 plus x Quadrat minus 4x Quadrat durch 1 plus x Quadrat hoch 2 plus 2.")]

#only("5")[#voiceover("Für x gleich 0 ist die zweite Ableitung größer als 0.")]

#only("6")[#voiceover("Der Funktionswert von f an der Stelle 0 ist Logarithmus von 1 plus 0 Quadrat minus 5, also -5.")]

#only("7")[#voiceover("Somit hat f an der Stelle x gleich 0 ein Minimum mit Funktionswert -5.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]

#v(40pt)

#only("1")[
#voiceover("Fassen wir die Ergebnisse zusammen und visualisieren die Funktion.")
]

#v(60pt)

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.log(1+x**2) + x**2 - 5

x = np.linspace(-5, 5, 400)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y)

plt.xlim(-5, 5)
plt.ylim(-5, 25)

plt.grid(True)
plt.xlabel('x')
plt.ylabel('f(x)')

plt.show()
```,
width: 360pt),
)
]
]
]

#only("2")[
#voiceover("Hier seht ihr den Graphen der Funktion Logarithmus von 1 plus x Quadrat plus x Quadrat minus 5. Wie wir gesehen haben, geht die Funktion für x gegen minus unendlich und x gegen plus unendlich gegen plus unendlich. Das Minimum der Funktion liegt bei x gleich 0 mit Funktionswert -5.")
]

#v(40pt)

#only("3-")[
$->$#text(weight: "bold")[Wertebereich] $[-5, infinity)$
]

#only("3")[
#voiceover("Der Wertebereich von f ist also das Intervall von -5 bis plus unendlich, das heißt alle reellen Zahlen größer oder gleich -5.")
]

]