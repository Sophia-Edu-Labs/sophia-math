#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Krümmung bestimmen]
#v(40pt)

#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)

def f(x):
    return x**2 + x

plt.figure(figsize=(8, 6))
plt.plot(x, f(x))
plt.annotate('Öffnet sich nach oben', xy=(1, 3), xytext=(1.5, 4),
            arrowprops=dict(facecolor='black', shrink=0.05))
plt.grid()
plt.show()
```,
width: 360pt)
)
]

#only("1")[
#voiceover("Das ist leider falsch. Die Funktion f von x gleich x Quadrat plus x ist linksgekrümmt. Das sehen wir daran, dass sich der Graph nach oben öffnet. Das ist charakteristisch für Linkskrümmung. Oder, wir können uns auch so überlegen: Würden wir den Graphen entlangfahren, dann müssten wir nach links lenken, um auf der Straße zu bleiben. Das ist ein weiteres Indiz für Linkskrümmung.")
]
]