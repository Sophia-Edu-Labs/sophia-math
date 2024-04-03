#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Monotonie]
#v(40pt)

#only("1")[
#voiceover("Nochmal zusammengefasst: Monotonie beschreibt, ob eine Funktion nur steigt oder nur fällt.")
]

#only("2-")[- Monoton steigend: Funktion nimmt zu]
#only("3-")[- Monoton fallend: Funktion nimmt ab]

#only("2")[
#voiceover("Eine Funktion ist monoton steigend, wenn sie immer größer wird, wenn x größer wird.")
]

#only("3")[
#voiceover("Und sie ist monoton fallend, wenn sie immer kleiner wird, wenn x größer wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Monotonie bestimmen]
#v(40pt)

#only("1-")[- Ableitung der Funktion bilden]
#only("2-")[- Vorzeichen der Ableitung untersuchen]

#only("1")[
#voiceover("Um die Monotonie einer Funktion zu bestimmen, bilden wir ihre Ableitung.")
]

#only("2")[
#voiceover("Dann untersuchen wir das Vorzeichen der Ableitung. Ist die Ableitung positiv, ist die Funktion monoton steigend. Ist die Ableitung negativ, ist die Funktion monoton fallend.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiele]
#v(40pt)

#only("1")[
#voiceover("Hier seht ihr zwei Beispiele:")
]

#v(40pt)

#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f1(x):
   return x**3 + x

def f2(x):
   return -(x**3)/2 - 8*x + 4

x = np.linspace(-3, 3, 400)
y1 = f1(x)
y2 = f2(x)

plt.figure(figsize=(8, 6)) 
plt.plot(x, y1, color='red', label='$f(x) = x^3 + x$')
plt.plot(x, y2, color='blue', label='$f(x) = -(x^3)/2 - 8x + 4$')

plt.grid(True)
plt.legend()

plt.show()
```,
width: 360pt),
)
]

#v(40pt)

#only("2-")[- Rot: $f(x) = x^3 + x$, monoton steigend]
#only("3-")[- Blau: $f(x) = -(x^3)/2 - 8x + 4$, monoton fallend]
]