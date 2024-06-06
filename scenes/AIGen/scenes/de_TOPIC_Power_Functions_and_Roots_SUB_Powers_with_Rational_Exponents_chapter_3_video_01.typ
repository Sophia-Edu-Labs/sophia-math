#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Addieren & Subtrahieren von rationalen Exponenten]
#v(40pt)
#only("1-")[- Zum Addieren oder Subtrahieren müssen Basen und Exponenten übereinstimmen 🎯]
#v(20pt)
#only("2-")[- Beispiel: $3 2^(1/2) + 2 2^(1/2)$ = $5 2^(1/2)$ ✅]
#v(20pt) 
#only("3-")[- Beispiel: $5 3^(1/3) - 2 3^(1/3)$ = $3 3^(1/3)$ ✅]
#v(20pt)
#only("4-")[- Kein Übereinstimmen: $2^(1/2) + 3^(1/3)$ ❌]
#only("1")[
#voiceover("Um Ausdrücke mit rationalen Exponenten zu addieren oder zu subtrahieren, ist es entscheidend, dass die Basen und Exponenten übereinstimmen.")
]
#only("2")[
#voiceover("Zum Beispiel: 3 mal 2 hoch einhalb plus 2 mal 2 hoch einhalb ergibt 5 mal 2 hoch einhalb.")
]
#only("3")[
#voiceover("Ähnlich: 5 mal 3 hoch ein Drittel minus 2 mal 3 hoch ein Drittel ergibt 3 mal 3 hoch ein Drittel.")
]
#only("4")[
#voiceover("Wir können jedoch Ausdrücke wie 2 hoch einhalb und 3 hoch ein Drittel nicht direkt addieren oder subtrahieren, da ihre Basen und Exponenten nicht übereinstimmen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 5, 100)
y1 = 3 * np.sqrt(2) + 2 * np.sqrt(2)
y2 = 5 * np.sqrt(2)
y3 = 5 * np.cbrt(3) - 2 * np.cbrt(3)
y4 = 3 * np.cbrt(3)

plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='black', linewidth=0.5)
plt.plot(x, np.full_like(x, y1), label=r'$3 \cdot 2^{1/2} + 2 \cdot 2^{1/2}$', linestyle='--', color='blue')
plt.plot(x, np.full_like(x, y2), label=r'$5 \cdot 2^{1/2}$', color='blue')
plt.plot(x, np.full_like(x, y3), label=r'$5 \cdot 3^{1/3} - 2 \cdot 3^{1/3}$', linestyle='--', color='red')
plt.plot(x, np.full_like(x, y4), label=r'$3 \cdot 3^{1/3}$', color='red')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.title('Addieren und Subtrahieren von rationalen Exponenten')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dieses Diagramm visualisiert das Addieren und Subtrahieren von Ausdrücken mit rationalen Exponenten. Die gestrichelte blaue Linie stellt 3 mal 2 hoch einhalb plus 2 mal 2 hoch einhalb dar, was der durchgezogenen blauen Linie entspricht, 5 mal 2 hoch einhalb. Ähnlich stellt die gestrichelte rote Linie 5 mal 3 hoch ein Drittel minus 2 mal 3 hoch ein Drittel dar, was der durchgezogenen roten Linie entspricht, 3 mal 3 hoch ein Drittel.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Übereinstimmende Basen und Exponenten sind der Schlüssel 🔑]
#v(20pt)
#only("2-")[- Koeffizienten addieren/subtrahieren, Basis und Exponent beibehalten 📏]
#v(20pt)
#only("3-")[- Ergebnis wenn möglich vereinfachen 🧮]
#only("1")[
#voiceover("Zusammenfassend: Beim Addieren oder Subtrahieren von Ausdrücken mit rationalen Exponenten müssen die Basen und Exponenten übereinstimmen.")
]
#only("2")[
#voiceover("Wenn sie übereinstimmen, addiere oder subtrahiere einfach die Koeffizienten und behalte die Basis und den Exponenten bei.")
]
#only("3")[
#voiceover("Vereinfache schließlich das Ergebnis, wenn möglich. Mit diesen Schritten wirst Du in der Lage sein, Probleme mit dem Addieren und Subtrahieren von Ausdrücken mit rationalen Exponenten sicher zu lösen.")
]
]