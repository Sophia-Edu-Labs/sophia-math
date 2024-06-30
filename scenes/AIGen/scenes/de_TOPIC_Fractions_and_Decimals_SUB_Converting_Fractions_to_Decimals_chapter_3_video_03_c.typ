#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 3/4 in eine Dezimalzahl]
#v(40pt)
Was ist 3/4 als Dezimalzahl?
#v(40pt)
#only("-1")[a) 0,34]#only("2-")[#text(fill:red)[a) 0,34]]
#v(10pt)
#only("-2")[b) 0,43]#only("3-")[#text(fill:red)[b) 0,43]]
#v(10pt)
#only("-3")[c) 0,75]#only("4-")[#text(fill:green)[c) 0,75]]
#v(10pt)
#only("-4")[d) 0,57]#only("5-")[#text(fill:red)[d) 0,57]]

#only("1")[#voiceover("Ausgezeichnet! Du hast richtig erkannt, dass 3/4 als Dezimalzahl 0,75 ist. Lass uns jede Option durchgehen, um zu verstehen warum.")]
#only("2")[#voiceover("Option a, 0,34, ist falsch. Dies ist nicht die Dezimaldarstellung von 3/4.")]
#only("3")[#voiceover("Option b, 0,43, ist ebenfalls falsch. Es ist nicht das Ergebnis, das wir erhalten, wenn wir 3/4 in eine Dezimalzahl umwandeln.")]
#only("4")[#voiceover("Option c, 0,75, ist die richtige Antwort. Wir werden im nächsten Folien sehen, wie wir darauf kommen.")]
#only("5")[#voiceover("Option d, 0,57, ist falsch. Dies stellt 3/4 nicht als Dezimalzahl dar.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 3/4 in eine Dezimalzahl: Methode]
#v(40pt)
#only("1-")[Schritt 1: Multipliziere sowohl den Zähler als auch den Nenner mit 25]
#v(20pt)
#only("2-")[Schritt 2: Vereinfache den resultierenden Bruch]
#v(20pt)
#only("3-")[Schritt 3: Schreibe es als Dezimalzahl]

#only("1")[#voiceover("Um 3/4 in eine Dezimalzahl umzuwandeln, verwenden wir eine einfache Methode. Zuerst multiplizieren wir sowohl den Zähler als auch den Nenner mit 25.")]
#only("2")[#voiceover("Dann vereinfachen wir den resultierenden Bruch.")]
#only("3")[#voiceover("Schließlich schreiben wir unser Ergebnis als Dezimalzahl.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multiplizieren mit 25]
#v(40pt)
#only("1-")[$(3/4) * (25/25) = (3*25)/(4*25)$]
#v(20pt)
#only("2-")[$(3*25)/(4*25) = 75/100$]

#only("1")[#voiceover("Beginnen wir mit unserem Bruch, 3/4. Wir multiplizieren sowohl den Zähler als auch den Nenner mit 25. Dies ändert den Wert des Bruchs nicht, da wir mit 25/25 multiplizieren, was gleich 1 ist.")]
#only("2")[#voiceover("Wenn wir multiplizieren, erhalten wir 75 geteilt durch 100.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2 & 3: Vereinfachen und als Dezimalzahl schreiben]
#v(40pt)
#only("1-")[75/100 = 0,75]
#v(20pt)
#only("2-")[Setze das Dezimalzeichen vor die zweitletzte Ziffer]
#v(20pt)
#only("3-")[3/4 = 0,75]

#only("1")[#voiceover("Nun, 75 geteilt durch 100 ist einfach als Dezimalzahl zu schreiben. Es ist einfach 0,75.")]
#only("2")[#voiceover("Ein schneller Weg, sich dies zu merken, ist, dass wenn du einen Bruch über 100 hast, du ihn als Dezimalzahl schreiben kannst, indem du das Dezimalzeichen vor die zweitletzte Ziffer setzt.")]
#only("3")[#voiceover("Also haben wir gezeigt, dass 3/4 tatsächlich gleich 0,75 als Dezimalzahl ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Umwandlung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

labels = ['3/4', '75/100', '0.75']
values = [0.75, 0.75, 0.75]

plt.figure(figsize=(10, 6))
plt.bar(labels, values, color=['blue', 'green', 'red'])
plt.ylim(0, 1)
plt.title('Gleichwertigkeit von 3/4, 75/100 und 0.75')
plt.ylabel('Wert')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung dessen, was wir getan haben. Wie du sehen kannst, repräsentieren 3/4, 75/100 und 0,75 alle denselben Wert. Es sind nur verschiedene Arten, dieselbe Zahl zu schreiben.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wir haben 3/4 in eine Dezimalzahl umgewandelt 🔢]
#v(20pt)
#only("2-")[- Wir haben mit 25/25 multipliziert, um 75/100 zu erhalten ✖️]
#v(20pt)
#only("3-")[- 75/100 ist gleich 0,75 🎉]

#only("1")[#voiceover("Zusammenfassend haben wir 3/4 in eine Dezimalzahl umgewandelt.")]
#only("2")[#voiceover("Wir haben dies getan, indem wir sowohl den Zähler als auch den Nenner mit 25 multipliziert haben, was uns 75/100 ergab.")]
#only("3")[#voiceover("Und 75/100 ist gleich 0,75. Großartige Arbeit beim Verstehen dieses Umwandlungsprozesses!")]
]