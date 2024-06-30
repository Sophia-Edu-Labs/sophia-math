#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 19/8 in eine Dezimalzahl]
#v(40pt)
Was ist 19/8 als Dezimalzahl?
#v(40pt)
#only("-1")[a) 2,375]#only("2-")[#text(fill:green)[a) 2,375]]
#v(10pt)
#only("-2")[b) 2,3]#only("3-")[#text(fill:red)[b) 2,3]]
#v(10pt)
#only("-3")[c) 2,0]#only("4-")[#text(fill:red)[c) 2,0]]
#v(10pt)
#only("-4")[d) 2,5]#only("5-")[#text(fill:red)[d) 2,5]]

#only("1")[#voiceover("Ausgezeichnet! Du hast die richtige Antwort gewählt. Lass uns erklären, warum 2,375 die richtige Dezimaldarstellung von 19/8 ist.")]
#only("2")[#voiceover("Option a, 2,375, ist tatsächlich korrekt. Wir werden in den nächsten Folien sehen, wie wir darauf kommen.")]
#only("3")[#voiceover("Option b, 2,3, ist nah dran, aber nicht präzise genug. Es ist eine Annäherung, nicht der genaue Wert.")]
#only("4")[#voiceover("Option c, 2,0, ist zu klein. Denk daran, 19 geteilt durch 8 ist mehr als 2.")]
#only("5")[#voiceover("Option d, 2,5, ist zu groß. Das wäre das Ergebnis, wenn wir 20 durch 8 teilen würden, nicht 19 durch 8.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multiplizieren mit 125]
#v(40pt)
#only("1-")[$ 19/8 = (19 × 125)/(8 × 125) $]
#v(20pt)
#only("2-")[$ = 2375/1000 $]

#only("1")[#voiceover("Um 19/8 in eine Dezimalzahl umzuwandeln, multiplizieren wir sowohl den Zähler als auch den Nenner mit 125. Das ändert den Wert des Bruchs nicht, aber es erleichtert unsere Berechnung.")]
#only("2")[#voiceover("Nach der Multiplikation erhalten wir 2375 geteilt durch 1000. Dies ist ein wichtiger Schritt, da die Division durch 1000 dasselbe ist wie das Verschieben des Dezimalpunkts um drei Stellen nach links.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Setze den Dezimalpunkt]
#v(40pt)
#only("1-")[$ 2375/1000 = 2,375 $]
#v(20pt)
#only("2-")[💡 Dezimalpunkt 3 Stellen nach links verschieben]

#only("1")[#voiceover("Jetzt müssen wir nur noch den Dezimalpunkt setzen. Da wir durch 1000 teilen, verschieben wir den Dezimalpunkt in 2375 um drei Stellen nach links.")]
#only("2")[#voiceover("Das ergibt 2,375. Und da haben wir es! 19/8 als Dezimalzahl ist 2,375.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

labels = ['0', '1', '2', '19/8\n(2.375)', '3']
x = np.arange(len(labels))
values = [0, 1, 2, 2.375, 3]

fig, ax = plt.subplots(figsize=(10, 6))
ax.plot(x, values, 'bo-')
ax.set_xticks(x)
ax.set_xticklabels(labels)
ax.set_ylim(0, 3.5)
ax.set_title('Position of 19/8 on Number Line')
ax.axhline(y=2.375, color='r', linestyle='--')
ax.text(2.9, 2.4, '2.375', color='r', va='bottom', ha='left')

plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung, wo 2,375 auf einer Zahlengeraden liegt. Wie du sehen kannst, liegt es zwischen 2 und 3, etwas näher an 2.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- $19/8 = 2,375$ 🎉]
#v(20pt)
#only("2-")[- Multipliziere mit 125/125, um 2375/1000 zu erhalten]
#v(20pt)
#only("3-")[- Dezimalpunkt 3 Stellen nach links verschieben]

#only("1")[#voiceover("Zusammenfassend haben wir herausgefunden, dass 19 geteilt durch 8 gleich 2,375 ist.")]
#only("2")[#voiceover("Wir haben dies erreicht, indem wir sowohl den Zähler als auch den Nenner mit 125 multipliziert haben, was uns 2375 über 1000 gegeben hat.")]
#only("3")[#voiceover("Schließlich haben wir den Dezimalpunkt um drei Stellen nach links verschoben, um unser Ergebnis zu erhalten. Großartige Arbeit beim Beherrschen dieser Technik!")]
]