#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Wendepunkt]
#v(40pt)

#only("1-")[$ f(x) = 2x^3 - 4x $]
#v(40pt)
#only("2-")[- $f'(x) = 6x^2 - 4$]
#only("3-")[- $f''(x) = 12x$]
#only("4-")[- $f''(x) = 0$ für $x = 0$]

#only("1")[
#voiceover("Klasse, das stimmt. Wir haben die Funktion f von x gleich zwei x hoch drei minus vier x.")
]
#only("2")[
#voiceover("Die erste Ableitung dieser Funktion ist f Strich von x gleich sechs x Quadrat minus vier.")
]
#only("3")[
#voiceover("Die zweite Ableitung ist f Doppelstrich von x gleich zwölf x.")
]
#only("4")[
#voiceover("Um den Wendepunkt zu finden, setzen wir die zweite Ableitung gleich null. Wir erhalten x gleich null. An dieser Stelle hat die Funktion einen Wendepunkt.")
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
    return 2*x**3 - 4*x

plt.figure(figsize=(8, 6))
plt.plot(x, f(x))
plt.annotate('Wendepunkt', xy=(0, 0), xytext=(0.5, 10),
            arrowprops=dict(facecolor='black', shrink=0.05))
plt.grid()
plt.show()
```,
width: 360pt)
)
]

#only("1")[
#voiceover("Hier seht ihr den Graphen der Funktion. Der Wendepunkt liegt, wie berechnet, bei x gleich null.")
]
]