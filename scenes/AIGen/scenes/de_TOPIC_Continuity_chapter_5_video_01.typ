#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kontinuierliche Erweiterbarkeit]
#v(40pt)
#only("1-")[- Funktion kann kontinuierlich gemacht werden 🌉]
#v(20pt)
#only("2-")[- Durch Definieren/Neudefinieren von Werten an bestimmten Punkten 📝]
#only("1")[
#voiceover("Eine Funktion wird als kontinuierlich erweiterbar bezeichnet, wenn sie kontinuierlich gemacht werden kann.")
]
#only("2")[
#voiceover("Dies geschieht durch das Definieren oder Neudefinieren der Funktionswerte an bestimmten Punkten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Betrachte $f(x) = (x^2 - 1)/(x - 1)$]
#v(20pt)
#only("2-")[Vereinfache: $f(x) = x + 1$ für $x ≠ 1$]
#v(20pt)
#only("3-")[Aber $f(1)$ ist undefiniert 😕]
#only("1")[
#voiceover("Betrachten wir die Funktion f von x gleich x Quadrat minus 1 über x minus 1.")
]
#only("2")[
#voiceover("Wir können dies zu f von x gleich x plus 1 für alle x ungleich 1 vereinfachen.")
]
#only("3")[
#voiceover("Allerdings ist f von 1 undefiniert, da wir durch null teilen würden.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kontinuierlich machen]
#v(40pt)
#only("1-")[Um $f(x)$ kontinuierlich zu machen, definiere $f(1) = 2$]
#v(20pt)
#only("2-")[Nun, $lim_(x->1) (x + 1) = 2 = f(1)$ ✅]
#v(20pt)
#only("3-")[Also ist $f(x)$ kontinuierlich erweiterbar bei $x = 1$]
#only("1")[
#voiceover("Um f von x kontinuierlich zu machen, können wir einfach f von 1 gleich 2 definieren.")
]
#only("2")[
#voiceover("Nun ist der Limes von x plus 1, wenn x gegen 1 geht, gleich 2, was dem von uns definierten Wert für f von 1 entspricht.")
]
#only("3")[
#voiceover("Daher ist f von x kontinuierlich erweiterbar bei x gleich 1.")
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

x = np.linspace(-5, 5, 1000)
y = (x**2 - 1) / (x - 1)

plt.figure(figsize=(6, 4))
plt.plot(x, y, color='blue', label='f(x) = (x^2 - 1) / (x - 1)')
plt.scatter(1, 2, color='red', label='Definierter Punkt: f(1) = 2')
plt.xlim(-5, 5)
plt.ylim(-5, 5)
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Kontinuierliche Erweiterbarkeit')
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
#voiceover("Hier ist eine Visualisierung der Funktion. Die blaue Linie repräsentiert die Funktion, und der rote Punkt zeigt den Punkt, an dem wir die Funktion definiert haben, um sie kontinuierlich zu machen.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Kontinuierliche Erweiterbarkeit: eine Funktion kontinuierlich machen 🌉]
#v(20pt)
#only("2-")[- Definieren/Neudefinieren von Werten an bestimmten Punkten 📝]
#v(20pt)
#only("3-")[- Stellt die Kontinuität an diesen Punkten sicher ✅]
#only("1")[
#voiceover("Zusammenfassend geht es bei der kontinuierlichen Erweiterbarkeit darum, eine Funktion kontinuierlich zu machen.")
]
#only("2")[
#voiceover("Dies wird erreicht, indem die Funktionswerte an bestimmten Punkten definiert oder neu definiert werden.")
]
#only("3")[
#voiceover("Dadurch stellen wir sicher, dass die Funktion an diesen Punkten kontinuierlich ist.")
]
]