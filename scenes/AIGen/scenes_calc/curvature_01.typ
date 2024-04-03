#import "../sophiatheme.typ": *
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Krümmung]
#v(40pt)
#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(-3, 3, 100)
def f(x):
  return x**2
def g(x):
  return -x**2
plt.figure(figsize=(8, 6))
plt.plot(x, f(x), label='Linksgekrümmt')
plt.plot(x, g(x), label='Rechtsgekrümmt')
plt.grid()
plt.legend()
plt.show()

```,
width: 360pt)
)
]

#only("2-")[
  #v(20pt)
  - Blaue Funktion: Linksgekrümmt
]
#only("3-")[
  - Orangene Funktion: Rechtsgekrümmt
]

#only("1")[
#voiceover("Was bedeutet die Krümmung von Funktionen? Wann ist eine Funktion links, und wann rechtsgekrümmt?")
]
#only("2")[
#voiceover("Die blaue Funktion ist linksgekrümmt. Stellt euch vor, ihr fahrt auf dieser Kurve von links nach rechts. Dann müsstet ihr nach links lenken, um auf der Kurve zu bleiben. Daher der Name Linkskrümmung.")
]

#only("3")[
#voiceover("Im Gegensatz dazu ist die orangene Funktion rechtsgekrümmt. Wenn ihr auf dieser Kurve von links nach rechts fahrt, müsstet ihr nach rechts lenken. Daher sprechen wir hier von Rechtskrümmung.")
]
]

#slide()[

#text(size: 30pt, weight: "bold")[Krümmung & Ableitung]

#v(40pt)

#only("1-")[- Zusammenhang mit 2. Ableitung]
#only("2-")[- Linkskrümmung: $f''(x) > 0$]
#only("3-")[- Rechtskrümmung: $f''(x) < 0$]

#only("1")[
#voiceover("Mathematisch hängt die Krümmung einer Funktion eng mit ihrer zweiten Ableitung zusammen.")
]

#only("2")[
#voiceover("Eine Funktion ist linksgekrümmt, wenn ihre zweite Ableitung größer als 0 ist. In diesem Fall ist die Steigung der Funktion zunehmend, was dazu führt, dass sich der Graph nach oben öffnet.")
]

#only("3")[
#voiceover("Eine Funktion ist rechtsgekrümmt, wenn ihre zweite Ableitung kleiner als 0 ist. Hier ist die Steigung der Funktion abnehmend, was dazu führt, dass sich der Graph nach unten öffnet.")
]

]