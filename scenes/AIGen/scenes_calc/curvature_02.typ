#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Wendepunkte]
#v(40pt)

#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)

def f(x):
    return x**3

plt.figure(figsize=(8, 6))
plt.plot(x, f(x))
plt.annotate('Wendepunkt', xy=(0, 0), xytext=(0.5, 1),
            arrowprops=dict(facecolor='black', shrink=0.05))
plt.grid()
plt.show()
```,
width: 360pt)
)
]

#only("1")[
#voiceover("Ein Wendepunkt ist ein Punkt auf dem Graphen einer Funktion, an dem die Krümmung von links nach rechts oder von rechts nach links wechselt. In diesem Beispiel sehen wir, dass die Funktion von linksgekrümmt zu rechtsgekrümmt wechselt, genau am Ursprung. Dieser Punkt ist der Wendepunkt.")
]
]

#slide()[

#text(size: 30pt, weight: "bold")[Wendepunkte und Ableitungen]

#v(40pt)

#only("1-")[- Zusammenhang mit 2. Ableitung]
#only("2-")[- An Wendepunkt: $f''(x) = 0$]
#only("3-")[- Vorzeichenwechsel 2. Ableitung]

#only("1")[
#voiceover("Mathematisch hängen Wendepunkte eng mit der zweiten Ableitung zusammen.")
]

#only("2")[
#voiceover("An einem Wendepunkt ist die zweite Ableitung gleich null.")
]

#only("3")[
#voiceover("Zudem wechselt die zweite Ableitung an einem Wendepunkt ihr Vorzeichen. Ist sie vor dem Wendepunkt positiv (Linkskrümmung), wird sie nach dem Wendepunkt negativ (Rechtskrümmung), oder umgekehrt.")
]

]