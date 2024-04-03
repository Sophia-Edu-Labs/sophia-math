#import "../sophiatheme.typ": *

#show: sophia-theme

#slide()[

#text(size: 30pt, weight: "bold")[Lösung]

#v(40pt)

#only("1")[
#voiceover("Toll gemacht, das stimt! Die Funktion f von x gleich Maximum von -1 und -x ist monoton fallend.")
]

#v(40pt)

#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
   return np.maximum(-1, -x)

x = np.linspace(-3, 3, 400)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y)
plt.grid(True)
plt.title("$f(x) = max(-1, -x)$")
plt.show()
```,
width: 360pt)
)
]

#v(40pt)

#only("2-")[- Für $x < -1$: $f(x) = -x$]
#only("3-")[- Für $x ≥ -1$: $f(x) = -1$]
#only("4-")[- $f(x_1) ≥ f(x_2)$ für $x_1 < x_2$]

#only("2")[
#voiceover("Für x kleiner -1 ist f von x gleich -x. Das ist der linear fallende Teil des Graphen.")
]

#only("3")[
#voiceover("Für x größer oder gleich -1 ist f von x gleich -1. Das ist der konstante Teil des Graphen.")
]

#only("4")[
#voiceover("Insgesamt gilt: Für x1 kleiner x2 ist f von x1 größer oder gleich f von x2. Die Funktion fällt also monoton, aber nicht streng monoton, da sie für x größer oder gleich -1 konstant bleibt.")
]

]