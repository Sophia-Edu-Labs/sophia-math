#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#text(size: 22pt, weight: "bold")[Weder links- noch rechtsgekrümmt]
#v(40pt)

#only("1-")[Gegeben: $f(x) = x^3 + 2x - 4$]
#v(40pt)
#only("2-")[- $f'(x) = 3x^2+2$]
#only("3-")[- $f''(x) = 6x$]
#only("4-")[- $f''(x) > 0$ für $x > 0$]
#only("5-")[- $f''(x) < 0$ für $x < 0$]
#v(40pt)
#only("6-")[$->$ weder Links- noch Rechtsgekrümmt]
#only("1")[
#voiceover("Toll, das stimmt. Wir haben die Funktion f von x gleich x hoch drei plus zwei x minus vier.")
]
#only("2")[
#voiceover("Die erste Ableitung dieser Funktion ist f Strich von x gleich drei x hoch zwei plus zwei. Leiten wir das ganze erneut ab, erhalten wir")
]
#only("3")[
#voiceover("die zweite Ableitung dieser Funktion, f Doppelstrich von x gleich sechs x.")
]
#only("4")[
#voiceover("Für positive x ist die zweite Ableitung größer als 0, was auf Linkskrümmung hindeutet.")
]
#only("5")[
#voiceover("Aber für negative x ist die zweite Ableitung kleiner als 0, was Rechtskrümmung bedeutet.")
]

#only("5")[
#voiceover("Da die Krümmung wechselt, ist die Funktion also insgesamt weder links- noch rechtsgekrümmt.")
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
    return x**3 + 2*x - 4

plt.figure(figsize=(8, 6))
plt.plot(x, f(x))
plt.grid()
plt.show()
```,
width: 360pt)
)
]

#only("1")[
#voiceover("Hier seht ihr den Graphen der Funktion. Er wechselt von Rechtskrümmung für negative x zu Linkskrümmung für positive x.")
]
]