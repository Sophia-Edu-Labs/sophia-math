#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktion]
#v(40pt)
#only("1-")[
- $f(x) = x^3$
]
#only("2-")[
- Werte $f(2)$ aus
]
#only("1")[
#voiceover("Keine Sorge, das war nicht ganz richtig. Die gegebene Potenzfunktion ist f von x gleich x hoch drei.")
]
#only("2")[
#voiceover("Wir müssen f von 2 auswerten, was bedeutet, dass wir x durch 2 in der Funktion ersetzen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitution]
#v(40pt)
#only("1-")[
- $f(2) = 2^3$
]
#only("2-")[
- $f(2) = 8$
]
#only("1")[
#voiceover("Wenn wir 2 für x einsetzen, erhalten wir f von 2 gleich 2 hoch drei.")
]
#only("2")[
#voiceover("Nun, 2 hoch drei ist gleich 2 mal 2 mal 2, was 8 ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**3

plt.figure(figsize=(6, 6))
plt.plot(x, y, 'b-', label='f(x) = x^3')
plt.plot(2, 8, 'ro', label='f(2) = 8')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Potenzfunktion f(x) = x^3')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist ein Graph der Funktion f von x gleich x hoch drei. Der rote Punkt auf dem Graphen stellt den Punkt (2, 8) dar, welcher das Ergebnis der Auswertung von f an der Stelle 2 ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ergebnis]
#v(40pt)
#only("1-")[
- $f(2) = 2^3 = 8$ ✅
]
#only("1")[
#voiceover("Daher ist der Wert von f von 2 für die Potenzfunktion f von x gleich x hoch drei 8. Großartige Arbeit!")
]
]