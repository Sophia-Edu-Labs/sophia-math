#import "../sophiatheme.typ": *

#show: sophia-theme

#slide()[

#text(size: 22pt, weight: "bold")[Rechtsgekrümmt]

#v(40pt)

#only("1-")[Gegeben: $f(x) = -x^4 - 2x^2 + 4x$]

#v(40pt)

#only("2-")[- $f'(x) = -4x^3 - 4x + 4$]

#only("3-")[- $f''(x) = -12x^2 - 4$]

#only("4-")[- $f''(x) < 0$ für alle $x$]

#v(40pt)

#only("5-")[$->$ Rechtsgekrümmt]

#only("1")[
#voiceover("Das ist leider falsch. Wir haben die Funktion f von x gleich minus x hoch vier minus zwei x Quadrat plus vier x.")
]

#only("2")[
#voiceover("Die erste Ableitung dieser Funktion ist f Strich von x gleich minus vier x hoch drei minus vier x plus vier. Leiten wir das ganze erneut ab, erhalten wir")
]

#only("3")[
#voiceover("die zweite Ableitung dieser Funktion, f Doppelstrich von x gleich minus zwölf x Quadrat minus vier.")
]

#only("4")[
#voiceover("Diese zweite Ableitung ist für alle x kleiner als 0, da x Quadrat immer positiv oder 0 ist.")
]

#only("5")[
#voiceover("Eine durchgehend negative zweite Ableitung bedeutet Rechtskrümmung.")
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
   return -x**4 - 2*x**2 + 4*x

plt.figure(figsize=(8, 6))
plt.plot(x, f(x))
plt.grid()
plt.show()
```,
width: 360pt)
)

]

#only("1")[
#voiceover("Hier seht ihr den Graphen der Funktion. Er öffnet sich durchgehend nach unten, was die Rechtskrümmung bestätigt.")
]

]