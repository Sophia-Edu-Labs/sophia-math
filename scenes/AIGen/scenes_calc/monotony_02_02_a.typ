#import "../sophiatheme.typ": *

#show: sophia-theme

#slide()[

#text(size: 30pt, weight: "bold")[Lösung]

#v(40pt)

#only("1")[
#voiceover("Das ist leider falsch. Die hier dargestellte Funktion ist streng monoton wachsend. Das erkennen wir daran, dass sie immer steigt und nie konstant ist. Wir können das auch an der Ableitung analysieren.")
]

#v(40pt)

#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return 0.5*x**3 + x

x = np.linspace(-3, 3, 400)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y)
plt.grid(True)
plt.title("$f(x) = 0.5x^3 + x$")
plt.show()
```,
width: 360pt)
)
]

#v(40pt)

#only("2-")[- $f'(x) = 1.5x^2 + 1$]
#only("3-")[- $f'(x) > 0$ für alle $x$]
#only("4-")[- Insbesondere: $f'(0) = 1 > 0$]

#only("2")[
#voiceover("Die Ableitung von f ist f Strich von x gleich 1,5 mal x Quadrat plus 1.")
]

#only("3")[
#voiceover("Diese Ableitung ist für alle x echt größer als 0. Das bedeutet, die Funktion ist streng monoton wachsend.")
]

#only("4")[
#voiceover("Insbesondere ist auch für x gleich 0 die Ableitung gleich 1, was echt größer als 0 ist. Daher ist die Funktion über ihren gesamten Definitionsbereich streng monoton wachsend.")
]

]