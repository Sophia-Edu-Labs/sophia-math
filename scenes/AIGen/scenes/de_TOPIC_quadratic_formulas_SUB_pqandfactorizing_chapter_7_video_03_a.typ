#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Du hast das richtig gelöst. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir zur Antwort kommen.")
]

#text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]

#v(40pt)

#only("2-")[#text()[$ x^2 - 4x + 4 = 0 $]]

#only("2")[
#voiceover("Wir beginnen mit der quadratischen Gleichung x Quadrat minus vier x plus vier gleich null.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Die quadratische Gleichung identifizieren]

#v(40pt)

#only("1-")[- Allgemeine Form: $a x^2 + b x + c = 0$]
#v(20pt)
#only("2-")[- Unsere Gleichung: $x^2 - 4x + 4 = 0$]
#v(20pt)
#only("3-")[- $a = 1$, $b = -4$, $c = 4$]

#only("1")[
#voiceover("Zuerst identifizieren wir unsere quadratische Gleichung. Die allgemeine Form einer quadratischen Gleichung ist a x Quadrat plus b x plus c gleich null.")
]

#only("2")[
#voiceover("In unserem Fall haben wir x Quadrat minus vier x plus vier gleich null.")
]

#only("3")[
#voiceover("Also ist a gleich eins, b gleich minus vier und c gleich vier.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Die quadratische Gleichung faktorisieren]

#v(40pt)

#only("1-")[$ x^2 - 4x + 4 = 0 $]
#v(20pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Faktorisieren]]]
#v(20pt)
#only("3-")[$ (x - 2)(x - 2) = 0 $]

#only("1")[
#voiceover("Nun lass uns die quadratische Gleichung faktorisieren. Wir beginnen mit x Quadrat minus vier x plus vier gleich null.")
]

#only("2")[
#voiceover("Um dies zu faktorisieren, müssen wir zwei Zahlen finden, die multipliziert vier ergeben und addiert minus vier ergeben. Die einzige Möglichkeit ist minus zwei und minus zwei.")
]

#only("3")[
#voiceover("Also lautet unsere faktorisierte Gleichung x minus zwei mal x minus zwei gleich null.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Die faktorisierte Gleichung lösen]

#v(40pt)

#only("1-")[$ (x - 2)(x - 2) = 0 $]
#v(20pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Nullregel]]]
#v(20pt)
#only("3-")[$ x - 2 = 0 $]
#v(20pt)
#only("4-")[$ x = 2 $]

#only("1")[
#voiceover("Nun, da wir die Gleichung faktorisiert haben, können wir sie mit der Nullregel lösen.")
]

#only("2")[
#voiceover("Die Nullregel besagt, dass wenn das Produkt von Faktoren null ist, dann muss einer der Faktoren null sein.")
]

#only("3")[
#voiceover("In diesem Fall haben wir x minus zwei gleich null.")
]

#only("4")[
#voiceover("Wenn wir das lösen, erhalten wir x gleich zwei.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]

#v(40pt)

#only("1-")[Die Lösung ist $x = 2$]
#v(20pt)
#only("2-")[Dies ist eine doppelte Nullstelle 🌱🌱]

#only("1")[
#voiceover("Also lautet unsere endgültige Antwort x gleich zwei.")
]

#only("2")[
#voiceover("Beachte, dass dies eine doppelte Nullstelle ist, was bedeutet, dass die Parabel dieser quadratischen Gleichung die x-Achse genau an einem Punkt berührt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]

#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-1, 5, 100)
y = x**2 - 4*x + 4

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='y = x² - 4x + 4')
plt.axhline(y=0, color='r', linestyle='--')
plt.axvline(x=2, color='g', linestyle='--')
plt.plot(2, 0, 'ro', markersize=10)
plt.text(2.1, 0.5, '(2, 0)', fontsize=12)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph von x² - 4x + 4 = 0')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Hier ist eine Visualisierung unserer quadratischen Gleichung. Wie Du sehen kannst, berührt die Parabel die x-Achse genau an einem Punkt, x gleich zwei. Dies bestätigt unsere Lösung und zeigt, warum es eine doppelte Nullstelle genannt wird.")
]
]