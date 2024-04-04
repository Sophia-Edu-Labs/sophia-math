#import "../sophiatheme.typ": *
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Wendepunkte]
#v(40pt)
#only("1-")[$ f(x) = x^4 - 6x^2 + 1 $]
#v(40pt)
#only("2-")[- $f'(x) = 4x^3 - 12x$]
#only("3-")[- $f''(x) = 12x^2 - 12$]
#only("4-")[- $f''(x) = 0$ für $x = plus.minus 1$]
#only("1")[
#voiceover("Leider falsch... Wir wollen die Wendepunkte der Funktion f von x gleich x hoch vier minus sechs x Quadrat plus eins bestimmen.")
]
#only("2")[
#voiceover("Zuerst bilden wir die erste Ableitung. Sie lautet f Strich von x gleich vier x hoch drei minus zwölf x.")
]
#only("3")[
#voiceover("Dann bilden wir die zweite Ableitung. Sie lautet f Doppelstrich von x gleich zwölf x Quadrat minus zwölf.")
]
#only("4")[
#voiceover("Um die Wendepunkte zu finden, setzen wir die zweite Ableitung gleich null. Wir erhalten x gleich minus eins und x gleich eins. An diesen Stellen hat die Funktion Wendepunkte.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(-3, 3, 100)
def f(x):
  return x**4 - 6*x**2 + 1
plt.figure(figsize=(8, 6))
plt.plot(x, f(x))
plt.annotate('Wendepunkt', xy=(-1, f(-1)), xytext=(-2, 5),
arrowprops=dict(facecolor='black', shrink=0.05))
plt.annotate('Wendepunkt', xy=(1, f(1)), xytext=(1.5, 5),
arrowprops=dict(facecolor='black', shrink=0.05))

plt.grid()
plt.show()
```,
width: 360pt)
)
]

#only("1")[
#voiceover("Hier seht ihr den Graphen der Funktion. Die Wendepunkte liegen, wie berechnet, bei x gleich minus eins und x gleich eins.")
]

]
