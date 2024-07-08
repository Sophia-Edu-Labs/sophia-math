#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche multiplizieren]
#v(40pt)

#only("1-")[
$3/5 \times 7/8 = ?$
]

#v(20pt)

#only("2-")[
$3/5 \times 7/8 = (3 \cdot 7)/(5 \cdot 8)$
]

#v(20pt)

#only("3-")[
$3/5 \times 7/8 = 21/40$
]

#v(20pt)

#only("4-")[
🎉 Richtig! 21/40 ist die endgültige Antwort.
]

#only("1")[
#voiceover("Leider war das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit dem Problem: drei Fünftel multipliziert mit sieben Achtel.")
]

#only("2")[
#voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 3 mit 7 im Zähler und 5 mit 8 im Nenner.")
]

#only("3")[
#voiceover("Das ergibt einundzwanzig Vierzigstel. Es ist keine Vereinfachung nötig, da 21 und 40 keine gemeinsamen Faktoren außer 1 haben.")
]

#only("4")[
#voiceover("Die endgültige Antwort ist also tatsächlich einundzwanzig Vierzigstel oder 21/40. Gut gemacht beim Lösen dieses Problems!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

# First fraction: 3/5
ax1.pie([3, 2], labels=['3/5', ''], colors=['#ff9999', 'white'], startangle=90)
ax1.set_title('3/5')

# Second fraction: 7/8
ax2.pie([7, 1], labels=['7/8', ''], colors=['#66b3ff', 'white'], startangle=90)
ax2.set_title('7/8')

# Result: 21/40
ax3.pie([21, 19], labels=['21/40', ''], colors=['#99ff99', 'white'], startangle=90)
ax3.set_title('21/40')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [Visuelle Darstellung von 3/5 × 7/8 = 21/40],
)
]
]

#only("1")[
#voiceover("Lass uns unsere Brüche visualisieren, um die Multiplikation besser zu verstehen. Hier haben wir drei Tortendiagramme.")
]

#only("2")[
#voiceover("Das erste Tortendiagramm stellt drei Fünftel dar. Wie du sehen kannst, sind drei von fünf Stücken gefärbt.")
]

#only("3")[
#voiceover("Das zweite Tortendiagramm zeigt sieben Achtel, wobei sieben von acht Stücken gefärbt sind.")
]

#only("4")[
#voiceover("Das dritte Tortendiagramm stellt unser Ergebnis dar, einundzwanzig Vierzigstel. Beachte, dass es ein kleinerer Teil ist als jeder der ursprünglichen Brüche, was Sinn ergibt, da wir zwei echte Brüche multiplizieren.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum das funktioniert]
#v(40pt)

#only("1-")[
- Multiplikation von Brüchen: $(a/b) \times (c/d) = (a \times c)/(b \times d)$
]

#v(20pt)

#only("2-")[
- In unserem Fall: $(3/5) \times (7/8) = (3 \times 7)/(5 \times 8) = 21/40$
]

#v(20pt)

#only("3-")[
- Diese Methode funktioniert immer bei der Bruchmultiplikation! 🧮✨
]

#only("1")[
#voiceover("Nun, lass uns verstehen, warum diese Methode der Bruchmultiplikation funktioniert. Die allgemeine Regel für die Multiplikation von Brüchen lautet: Wenn wir a über b mit c über d multiplizieren, erhalten wir a mal c über b mal d.")
]

#only("2")[
#voiceover("In unserem speziellen Problem multiplizieren wir drei Fünftel mit sieben Achtel. Nach der Regel multiplizieren wir 3 mit 7 im Zähler und 5 mit 8 im Nenner, was uns einundzwanzig Vierzigstel ergibt.")
]

#only("3")[
#voiceover("Diese Methode funktioniert immer bei der Multiplikation von Brüchen, unabhängig von ihrer Größe oder Komplexität. Es ist ein mächtiges Werkzeug in der Bruchrechnung!")
]
]