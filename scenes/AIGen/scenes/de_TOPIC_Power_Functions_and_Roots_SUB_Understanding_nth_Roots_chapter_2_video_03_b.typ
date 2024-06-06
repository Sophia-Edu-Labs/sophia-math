#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🌟]
#v(40pt)
#text(size: 20pt)[Das ist die richtige Antwort!]
#v(20pt)
Schauen wir uns an, wie wir das Schritt für Schritt lösen können.
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns gemeinsam Schritt für Schritt die Lösung durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegeben]
#v(40pt)
#only("1-")[- Vereinfache $root(4, 16/81)$]
#only("1")[
#voiceover("Wir sollen die 4. Wurzel von 16 durch 81 vereinfachen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1]
#v(40pt)
#only("1-")[- $root(4, 16/81) = root(4, 16) / root(4, 81)$]
#only("1")[
#voiceover("Zuerst verwenden wir die Eigenschaft, dass die 4. Wurzel eines Quotienten gleich dem Quotienten der 4. Wurzeln ist. Also ist die 4. Wurzel von 16 durch 81 gleich der 4. Wurzel von 16 geteilt durch die 4. Wurzel von 81.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2]
#v(40pt)
#only("1-")[- $sqrt[4](16) = 2$]
#only("2-")[- $sqrt[4](81) = 3$]
#only("1")[
#voiceover("Nun vereinfachen wir jede 4. Wurzel separat. Die 4. Wurzel von 16 ist gleich 2, weil 2 hoch 4 gleich 16 ist.")
]
#only("2")[
#voiceover("Und die 4. Wurzel von 81 ist gleich 3, weil 3 hoch 4 gleich 81 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3]
#v(40pt)
#only("1-")[- $root(4, 16/81) = 2 / 3$]
#only("1")[
#voiceover("Daher ist die 4. Wurzel von 16 durch 81 gleich 2 durch 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 5, 100)
y = np.power(x, 4)

plt.figure(figsize=(6, 6))
plt.plot(x, y, color='blue', linewidth=2, label='$y = x^4$')
plt.plot([2], [16], 'ro', markersize=8, label='$(2, 16)$')
plt.plot([3], [81], 'go', markersize=8, label='$(3, 81)$')
plt.grid(True)
plt.legend(fontsize=12)
plt.xlim(0, 5)
plt.ylim(0, 100)
plt.title('Visualisierung der 4. Potenzen', fontsize=14)
plt.xlabel('x', fontsize=12)
plt.ylabel('$x^4$', fontsize=12)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der 4. Potenzfunktion. Du kannst sehen, dass 2 hoch 4 gleich 16 ist und 3 hoch 4 gleich 81 ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- $root(4, 16/81) = 2/3$ ✅]
#only("1")[
#voiceover("Abschließend ist die 4. Wurzel von 16 durch 81 gleich 2 durch 3. Großartige Arbeit bei der Lösung dieses Problems!")
]
]