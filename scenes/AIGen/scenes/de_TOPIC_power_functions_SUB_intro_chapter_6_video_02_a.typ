#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Lösen von kubischen Gleichungen]
#v(40pt)

#only("1-")[- Gleichung: $x^3 = 27$ 📝]
#v(20pt)
#only("2-")[- Ziel: Finde den Wert von $x$ 🎯]

#only("1")[
#voiceover("Großartige Arbeit, dass Du Dich mit diesem Problem beschäftigst! Lass uns Schritt für Schritt die Lösung durchgehen. Wir haben die Gleichung x hoch drei gleich 27.")
]

#only("2")[
#voiceover("Unser Ziel ist es, den Wert von x zu finden, der diese Gleichung erfüllt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Bestimme die Kubikwurzel]
#v(40pt)

#only("1-")[- $x^3 = 27$ ist gleichbedeutend mit $x = root(3, 27)$ 🔍]
#v(20pt)
#only("2-")[- Die Kubikwurzel ist die Umkehroperation des Kubierens 🔄]

#only("1")[
#voiceover("Der erste Schritt besteht darin, zu erkennen, dass diese Gleichung uns auffordert, die Kubikwurzel von 27 zu finden. Wir können x hoch drei gleich 27 umschreiben als x gleich die Kubikwurzel von 27.")
]

#only("2")[
#voiceover("Denke daran, dass die Kubikwurzel die Umkehroperation des Kubierens ist. Sie 'macht' das Kubieren rückgängig.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Berechne die Kubikwurzel]
#v(40pt)

#only("1-")[- $root(3, 27) = 3$ 🧮]
#v(20pt)
#only("2-")[- Überprüfen: $3^3 = 3 dot 3 dot 3 = 27$ ✅]

#only("1")[
#voiceover("Nun berechnen wir die Kubikwurzel von 27. Die Kubikwurzel von 27 ist 3.")
]

#only("2")[
#voiceover("Wir können dies überprüfen, indem wir 3 kubieren: drei mal drei mal drei ergibt 27.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)

#only("1-")[#text(size: 24pt)[Die Lösung ist $x = 3$ 🎉]]

#only("1")[
#voiceover("Daher ist unsere endgültige Antwort x gleich 3. Dieser Wert von x erfüllt die ursprüngliche Gleichung x hoch drei gleich 27.")
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

x = np.linspace(0, 4, 100)
y = x**3

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='y = x³')
plt.axhline(y=27, color='r', linestyle='--', label='y = 27')
plt.axvline(x=3, color='g', linestyle='--', label='x = 3')
plt.plot(3, 27, 'ro', markersize=10)

plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of y = x³')
plt.legend()
plt.grid(True)

plt.annotate('(3, 27)', xy=(3, 27), xytext=(3.2, 35),
             arrowprops=dict(facecolor='black', shrink=0.05))

plt.show()

```,
width: 360pt),
caption: [Graph von $y = x^3$ zeigt den Lösungspunkt (3, 27)]
)
]
]

#only("1")[
#voiceover("Hier ist eine visuelle Darstellung unserer Lösung. Die blaue Kurve zeigt y gleich x hoch drei. Die rote gestrichelte Linie ist y gleich 27, und die grüne gestrichelte Linie ist x gleich 3. Der Punkt, an dem sich diese Linien schneiden, bei (3, 27), ist unsere Lösung.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)

#only("1-")[- Die Kubikwurzel ist die Umkehroperation des Kubierens 🔄]
#v(20pt)
#only("2-")[- $root(3, a) = b$ bedeutet $b^3 = a$ 🔑]
#v(20pt)
#only("3-")[- Überprüfe immer Deine Lösung! ✅]

#only("1")[
#voiceover("Lass uns die wichtigsten Punkte zusammenfassen. Erstens, denke daran, dass die Kubikwurzel die Umkehroperation des Kubierens ist.")
]

#only("2")[
#voiceover("Zweitens, die Kubikwurzel von a gleich b bedeutet, dass b hoch drei gleich a ist.")
]

#only("3")[
#voiceover("Schließlich ist es immer eine gute Praxis, Deine Lösung zu überprüfen, indem Du sie in die ursprüngliche Gleichung einsetzt.")
]
]