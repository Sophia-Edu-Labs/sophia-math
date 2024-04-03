#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)

#only("1")[
#voiceover("Das ist richtig: Beide Funktionen sind monoton fallend.")
]

#v(40pt)

#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f1(x):
   return -0.5*x**3 + 3

def f2(x):
   return -3*x + 1

x = np.linspace(-3, 3, 400)
y1 = f1(x)
y2 = f2(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y1, color='red', label='$f(x) = -0.5x^3 + 3$')
plt.plot(x, y2, color='blue', label='$f(x) = -3x + 1$')

plt.grid(True)
plt.legend()

plt.show()
```,
width: 360pt),
)


#v(40pt)

#only("2-")[- Rot: monoton fallend]
#only("3-")[- Blau: monoton fallend]

#only("2")[
#voiceover("Die rote Funktion, f von x gleich minus null komma fünf x hoch drei plus drei, ist monoton fallend. Sie wird immer kleiner, wenn x größer wird.")
]

#only("3")[
#voiceover("Auch die blaue Funktion, f von x gleich minus drei x plus eins, ist monoton fallend. Auch sie wird immer kleiner, wenn x größer wird.")
]

]