#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von $2/5$ in eine Dezimalzahl]
#v(40pt)
Was ist $2/5$ als Dezimalzahl?
#v(40pt)
#only("-1")[a) 0,25]#only("2-")[#text(fill:red)[a) 0,25]]
#v(10pt)
#only("-2")[b) 0,4]#only("3-")[#text(fill:green)[b) 0,4]]
#v(10pt)
#only("-3")[c) 0,5]#only("4-")[#text(fill:red)[c) 0,5]]
#v(10pt)
#only("-4")[d) 0,2]#only("5-")[#text(fill:red)[d) 0,2]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns jede Option durchgehen, um zu verstehen warum.")]
#only("2")[#voiceover("Option a, $0,25$, ist falsch. Das entspricht eigentlich $1/4$, nicht $2/5$.")]
#only("3")[#voiceover("Option b, $0,4$, ist korrekt. Wir werden gleich sehen, wie man darauf kommt.")]
#only("4")[#voiceover("Option c, $0,5$, ist falsch. Das entspricht $1/2$, was größer als $2/5$ ist.")]
#only("5")[#voiceover("Option d, $0,2$, ist ebenfalls falsch. Das entspricht $1/5$, was kleiner als $2/5$ ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von $2/5$ in eine Dezimalzahl: Schritt für Schritt]
#v(40pt)
#only("1-")[1️⃣ Beginne mit dem Bruch: $2/5$]
#v(20pt)
#only("2-")[2️⃣ Multipliziere Zähler und Nenner mit 2:]
#v(20pt)
#only("3-")[$(2 * 2)/(5 * 2) = 4/10$]
#v(20pt)
#only("4-")[3️⃣ Ergebnis: $4/10 = 0,4$]

#only("1")[#voiceover("Lass uns $2/5$ Schritt für Schritt in eine Dezimalzahl umwandeln. Wir beginnen mit unserem Bruch, $2/5$.")]
#only("2")[#voiceover("Um es einfacher zu machen, können wir Zähler und Nenner mit 2 multiplizieren. Das ändert den Wert des Bruchs nicht, aber es gibt uns einen Nenner, der eine Zehnerpotenz ist, was die Umwandlung in eine Dezimalzahl erleichtert.")]
#only("3")[#voiceover("Wenn wir sowohl den Zähler als auch den Nenner mit 2 multiplizieren, erhalten wir $4/10$.")]
#only("4")[#voiceover("$4/10$ ist einfach als Dezimalzahl zu schreiben. Wir verschieben einfach das Dezimalkomma um eine Stelle nach links und erhalten $0,4$.")]
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

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

# First pie chart
labels1 = ['2/5', '3/5']
sizes1 = [2, 3]
colors1 = ['#ff9999', '#66b3ff']
ax1.pie(sizes1, labels=labels1, colors=colors1, autopct='%1.1f%%', startangle=90)
ax1.set_title('Fraction: 2/5')

# Second pie chart
labels2 = ['0.4', '0.6']
sizes2 = [4, 6]
colors2 = ['#ff9999', '#66b3ff']
ax2.pie(sizes2, labels=labels2, colors=colors2, autopct='%1.1f%%', startangle=90)
ax2.set_title('Decimal: 0.4')

plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung unserer Umwandlung. Links sehen wir den Bruch $2/5$ als Tortendiagramm dargestellt. Rechts sehen wir denselben Anteil als $0,4$ oder 40% des Ganzen dargestellt. Wie Du sehen kannst, repräsentieren sie denselben Betrag, nur anders geschrieben.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[📌 $2/5 = 0,4$ in Dezimalform]
#v(20pt)
#only("2-")[💡 Multipliziere Zähler und Nenner mit 2, um $4/10$ zu erhalten]
#v(20pt)
#only("3-")[🔢 $4/10$ ist leicht in $0,4$ umwandelbar]
#v(20pt)
#only("4-")[🧮 Übe diese Methode mit anderen Brüchen!]

#only("1")[#voiceover("Lass uns zusammenfassen, was wir gelernt haben. Erstens und vor allem ist $2/5$ gleich $0,4$ in Dezimalform.")]
#only("2")[#voiceover("Wir haben dies herausgefunden, indem wir sowohl den Zähler als auch den Nenner mit 2 multipliziert haben, was uns $4/10$ ergab.")]
#only("3")[#voiceover("$4/10$ ist leicht in $0,4$ umwandelbar, indem wir das Dezimalkomma um eine Stelle nach links verschieben.")]
#only("4")[#voiceover("Denke daran, dass Du diese Methode auch mit anderen Brüchen anwenden kannst! Übung macht den Meister.")]
]