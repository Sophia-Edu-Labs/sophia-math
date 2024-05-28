#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung der Slutsky-Zerlegung]
#v(40pt)

#only("1")[
#voiceover("Lass uns den Substitutionseffekt in der Slutsky-Zerlegung rekapitulieren.")
]

#only("2-")[
- Der Substitutionseffekt tritt auf, wenn eine Preisänderung ein Gut relativ billiger oder teurer macht 💰
]

#only("2")[
#voiceover("Der Substitutionseffekt tritt auf, wenn eine Preisänderung ein Gut relativ billiger oder teurer macht.")
]

#only("3-")[
- Führt zu einer Änderung im Konsum 🛒
]

#only("3")[
#voiceover("Diese Änderung der relativen Preise führt zu einer Änderung im Konsum.")
]

#only("4-")[
- Hält den Nutzen konstant 📈
]

#only("4")[
#voiceover("Wichtig ist, dass der Substitutionseffekt den Nutzen konstant hält. Er isoliert die Auswirkung der Änderung der relativen Preise und hält das Zufriedenheitsniveau des Verbrauchers gleich.")
]

#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Definiere die anfängliche Budgetbeschränkung
m = 100
p1, p2 = 10, 5

# Definiere den neuen Preis für Gut 1
p1_new = 5

# Berechne das anfängliche optimale Bündel
x1_optimal = (p2 * m) / (p1 * p2 + p1 * p1)
x2_optimal = (p1 * m) / (p1 * p2 + p2 * p2)

# Berechne das neue optimale Bündel nach der Preisänderung
x1_new_optimal = (p2 * m) / (p1_new * p2 + p1_new * p1_new)
x2_new_optimal = (p1_new * m) / (p1_new * p2 + p2 * p2)

# Erstelle ein Raster von Punkten
x1 = np.linspace(0, m/p1_new, 100)
x2 = m/p2 - p1/p2 * x1
x2_new = m/p2 - p1_new/p2 * x1

# Erstelle das Diagramm
plt.figure(figsize=(8, 6))
plt.plot(x1, x2, label='Anfängliche Budgetlinie')
plt.plot(x1, x2_new, label='Neue Budgetlinie')
plt.plot([x1_optimal], [x2_optimal], 'ro', label='Anfängliches optimales Bündel')
plt.plot([x1_new_optimal], [x2_new_optimal], 'go', label='Neues optimales Bündel')
plt.annotate('Substitutionseffekt', xy=(x1_new_optimal, x2_new_optimal), xytext=(x1_new_optimal+1, x2_new_optimal-5),
            arrowprops=dict(facecolor='black', shrink=0.05))
plt.xlim(0, m/p1_new+1)
plt.ylim(0, m/p2+5)
plt.xlabel('Gut 1')
plt.ylabel('Gut 2')
plt.title('Substitutionseffekt')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]

#only("5")[
#voiceover("Dieses Diagramm veranschaulicht den Substitutionseffekt. Wenn der Preis von Gut 1 sinkt, dreht sich die Budgetlinie nach außen. Der Verbraucher bewegt sich entlang derselben Indifferenzkurve zu einem neuen optimalen Bündel und substituiert in Richtung des relativ billigeren Guts.")
]

]
]

#slide()[

#only("1")[
#voiceover("Zusammenfassend:")
]

#only("2-")[
- Der Substitutionseffekt ist ein wesentlicher Bestandteil der Slutsky-Zerlegung 🔑
]

#only("2")[
#voiceover("Der Substitutionseffekt ist ein wesentlicher Bestandteil der Slutsky-Zerlegung.")
]

]
```

### Zweite Folie
```typst

#slide()[

#only("1")[
#voiceover("Zusammenfassend:")
]

]
```

**Folie 2:**
```typst

#slide()[

#only("1")[
- Der Substitutionseffekt ist ein wesentlicher Bestandteil der Slutsky-Zerlegung 🔑
]

]

#slide()[

#only("1")[
#voiceover("Der Substitutionseffekt ist ein wesentlicher Bestandteil der Slutsky-Zerlegung.")
]

]

#slide()[

#only("1")[
- Der Substitutionseffekt ist ein wesentlicher Bestandteil der Slutsky-Zerlegung 🔑
]

#only("1")[
#voiceover("Der Substitutionseffekt ist ein wesentlicher Bestandteil der Slutsky-Zerlegung.")
]

]

#slide()[

#only("1-")[
- Tritt auf, wenn sich relative Preise ändern 💸
]

#only("1")[
#voiceover("Er tritt auf, wenn sich relative Preise ändern.")
]

]

#slide()[

#only("1-")[
- Führt zur Substitution in Richtung des relativ billigeren Guts 🔄
]

#only("1")[
#voiceover("Dies führt zur Substitution in Richtung des relativ billigeren Guts.")
]

#only("2-")[
- Hält den Nutzen konstant, um den Effekt zu isolieren 📊
]

#only("2")[
#voiceover("Und er hält den Nutzen konstant, um den Effekt der Änderung der relativen Preise zu isolieren.")
]

#only("3")[
#voiceover("Das Verständnis des Substitutionseffekts ist entscheidend, um zu verstehen, wie Verbraucher auf Preisänderungen reagieren. Es ist ein grundlegendes Konzept der Mikroökonomie.")
]
]