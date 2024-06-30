#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Leider war das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir $9/20$ in eine Dezimalzahl umwandeln.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von $9/20$ in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$9/20$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch neun Zwanzigstel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multiplizieren mit $5/5$]
#v(40pt)
#only("1-")[$ 9/20 = (9 × 5)/(20 × 5) $]
#v(20pt)
#only("2-")[$ = 45/100 $]
#only("1")[
#voiceover("Unser erster Schritt ist es, sowohl den Zähler als auch den Nenner mit 5 zu multiplizieren. Dies ändert den Wert des Bruchs nicht, aber es macht es einfacher, ihn in eine Dezimalzahl umzuwandeln.")
]
#only("2")[
#voiceover("Das ergibt fünfundvierzig Hundertstel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Umwandlung in eine Dezimalzahl]
#v(40pt)
#only("1-")[$ 45/100 = 0.45 $]
#v(20pt)
#only("2-")[💡 Das Dezimalzeichen steht vor der vorletzten Ziffer]
#only("1")[
#voiceover("Jetzt können wir fünfundvierzig Hundertstel leicht in eine Dezimalzahl umwandeln. Es ist einfach null Komma vier fünf.")
]
#only("2")[
#voiceover("Ein hilfreicher Tipp: Wenn man einen Bruch über 100 in eine Dezimalzahl umwandelt, steht das Dezimalzeichen vor der vorletzten Ziffer.")
]
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

fig, ax = plt.subplots(figsize=(8, 6))

# Create a pie chart
sizes = [45, 55]
labels = ['0.45', '0.55']
colors = ['#ff9999', '#66b3ff']
explode = (0.1, 0)  # explode 1st slice

ax.pie(sizes, explode=explode, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle

plt.title('9/20 = 0.45')
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine visuelle Darstellung unseres Bruchs. Wie du sehen kannst, repräsentiert $9/20$ oder $0.45$ 45% des Ganzen, was etwas weniger als die Hälfte ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wir haben mit $9/20$ begonnen 📊]
#v(20pt)
#only("2-")[- Multipliziert mit $5/5$ um $45/100$ zu erhalten ✖️]
#v(20pt)
#only("3-")[- Umgewandelt $45/100$ in $0.45$ 🔢]
#only("1")[
#voiceover("Zusammenfassend haben wir mit dem Bruch neun Zwanzigstel begonnen.")
]
#only("2")[
#voiceover("Wir haben sowohl den Zähler als auch den Nenner mit 5 multipliziert, um fünfundvierzig Hundertstel zu erhalten.")
]
#only("3")[
#voiceover("Schließlich haben wir fünfundvierzig Hundertstel in null Komma vier fünf umgewandelt. Gut gemacht beim Lösen dieses Problems!")
]
]