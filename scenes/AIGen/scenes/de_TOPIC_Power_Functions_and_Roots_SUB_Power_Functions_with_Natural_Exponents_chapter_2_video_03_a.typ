#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Symmetrie von $f(x) = x^5$]
#v(40pt)
#only("1-")[#align(center)[#text()[Die Funktion $f(x) = x^5$ ist eine ungerade Potenzfunktion.]]]
#only("1")[
#voiceover("Großartig! Du hast absolut recht. Die Funktion f von x gleich x hoch 5 ist eine ungerade Potenzfunktion.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ungerade Potenzfunktionen]
#v(40pt)
#only("1-")[- Haben einen ungeraden Exponenten (z.B. $x^1, x^3, x^5, ...$)]
#v(20pt)
#only("2-")[- Sind symmetrisch zum Ursprung 🎯]
#only("1")[
#voiceover("Ungerade Potenzfunktionen haben einen ungeraden Exponenten, wie x hoch 1, x hoch 3, x hoch 5 und so weiter.")
]
#only("2")[
#voiceover("Eine wichtige Eigenschaft ungerader Potenzfunktionen ist, dass sie symmetrisch zum Ursprung sind.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Symmetrie zum Ursprung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**5

fig, ax = plt.subplots(figsize=(6, 6))
ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('center')
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

plt.plot(x, y, 'b-', linewidth=2, label='$f(x) = x^5$')
plt.plot(x, -y, 'r--', linewidth=2, label='$f(-x) = -x^5$')

plt.legend(loc='upper right')
plt.grid(True, linestyle=':')
plt.xlim(-2, 2)
plt.ylim(-32, 32)
plt.title('Symmetrie zum Ursprung')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Wenn wir die Funktion f von x gleich x hoch 5, hier in Blau dargestellt, und ihre Spiegelung f von minus x gleich minus x hoch 5, in Rot dargestellt, plotten, sehen wir, dass der Graph symmetrisch zum Ursprung ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- $f(x) = x^5$ ist eine ungerade Potenzfunktion]
#v(20pt)
#only("2-")[- Ungerade Potenzfunktionen sind symmetrisch zum Ursprung 🎯]
#v(20pt)
#only("3-")[- Daher ist $f(x) = x^5$ symmetrisch zum Ursprung ✅]
#only("1")[
#voiceover("Zusammenfassend ist f von x gleich x hoch 5 eine ungerade Potenzfunktion.")
]
#only("2")[
#voiceover("Wir wissen, dass ungerade Potenzfunktionen symmetrisch zum Ursprung sind.")
]
#only("3")[
#voiceover("Daher können wir schließen, dass f von x gleich x hoch 5 tatsächlich symmetrisch zum Ursprung ist und nicht zur y-Achse.")
]
]