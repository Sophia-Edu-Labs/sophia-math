#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Addieren & Subtrahieren von rationalen Exponenten 🧮]

#v(40pt)

#only("1-")[- Um Ausdrücke mit rationalen Exponenten zu addieren oder zu subtrahieren:
  - Basen müssen gleich sein
  - Exponenten müssen gleich sein]

#v(40pt)

#only("2-")[Beispiel: $3 2^(1/2) + 2 2^(1/2) = 5 2^(1/2)$]

#v(40pt)

#only("3-")[Beispiel: $5 3^(1/3) - 2 3^(1/3) = 3 3^(1/3)$]

#only("1")[
#voiceover("Zusammengefasst, beim Addieren oder Subtrahieren von Ausdrücken mit rationalen Exponenten ist es wichtig, dass die Basen und Exponenten gleich sind.")
]

#only("2")[
#voiceover("Zum Beispiel, 3 mal 2 hoch einhalb plus 2 mal 2 hoch einhalb ergibt 5 mal 2 hoch einhalb. Hier sind die Basen (2) und Exponenten (einhalb) gleich, daher können wir einfach die Koeffizienten addieren.")
]

#only("3")[
#voiceover("Ähnlich, 5 mal 3 hoch ein Drittel minus 2 mal 3 hoch ein Drittel ergibt 3 mal 3 hoch ein Drittel. Auch hier sind die Basen (3) und Exponenten (ein Drittel) gleich, wodurch wir die Koeffizienten subtrahieren können.")
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

x = np.linspace(0, 4, 100)
y1 = 3 * np.sqrt(2) * np.ones_like(x)
y2 = 2 * np.sqrt(2) * np.ones_like(x)
y3 = 5 * np.sqrt(2) * np.ones_like(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label=r'$3 \cdot 2^{1/2}$', linewidth=2)
plt.plot(x, y2, label=r'$2 \cdot 2^{1/2}$', linewidth=2)
plt.plot(x, y3, label=r'$5 \cdot 2^{1/2}$', linewidth=2)

plt.xlabel('x')
plt.ylabel('y')
plt.title('Addieren von Ausdrücken mit rationalen Exponenten')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("Hier ist eine visuelle Darstellung des Addierens von Ausdrücken mit rationalen Exponenten. Die blaue Linie repräsentiert 3 mal 2 hoch einhalb, die orange Linie repräsentiert 2 mal 2 hoch einhalb, und die grüne Linie repräsentiert ihre Summe, 5 mal 2 hoch einhalb.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]

#v(40pt)

#only("1-")[- Basen müssen gleich sein 🎯]
#v(20pt)
#only("2-")[- Exponenten müssen gleich sein ⚖]
#v(20pt)
#only("3-")[- Koeffizienten addieren oder subtrahieren 🧮]

#only("1")[
#voiceover("Denke daran, beim Addieren oder Subtrahieren von Ausdrücken mit rationalen Exponenten müssen die Basen gleich sein.")
]

#only("2")[
#voiceover("Die Exponenten müssen ebenfalls gleich sein.")
]

#only("3")[
#voiceover("Wenn diese Bedingungen erfüllt sind, kannst Du einfach die Koeffizienten addieren oder subtrahieren, um den Ausdruck zu vereinfachen.")
]
]