#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 11/20 in eine Dezimalzahl]
#v(40pt)
Was ist 11/20 als Dezimalzahl?
#v(40pt)
#only("-1")[a) 0,55]#only("2-")[#text(fill:green)[a) 0,55]]
#v(10pt)
#only("-2")[b) 0,5]#only("3-")[#text(fill:red)[b) 0,5]]
#v(10pt)
#only("-3")[c) 0,525]#only("4-")[#text(fill:red)[c) 0,525]]
#v(10pt)
#only("-4")[d) 0,50]#only("5-")[#text(fill:red)[d) 0,50]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns durchgehen, warum a) 0,55 die richtige Wahl ist und warum die anderen falsch sind.")]
#only("2")[#voiceover("a) 0,55 ist tatsächlich die richtige Antwort. Wir werden im nächsten Folien sehen, wie wir darauf kommen.")]
#only("3")[#voiceover("b) 0,5 ist falsch. Dies wäre die Dezimalform von ein halb oder 10/20, nicht 11/20.")]
#only("4")[#voiceover("c) 0,525 ist auch falsch. Das ist nah dran, aber nicht ganz richtig.")]
#only("5")[#voiceover("d) 0,50 ist ebenfalls falsch. Wie 0,5 repräsentiert dies ein halb oder 10/20, nicht 11/20.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 11/20 in eine Dezimalzahl: Methode]
#v(40pt)
#only("1-")[1️⃣ Multipliziere sowohl den Zähler als auch den Nenner mit 5]
#v(20pt)
#only("2-")[2️⃣ Vereinfache den resultierenden Bruch]
#v(20pt)
#only("3-")[3️⃣ Wandle in eine Dezimalzahl um]

#only("1")[#voiceover("Um 11/20 in eine Dezimalzahl umzuwandeln, verwenden wir eine einfache Methode. Zuerst multiplizieren wir sowohl den Zähler als auch den Nenner mit 5.")]
#only("2")[#voiceover("Dann vereinfachen wir den resultierenden Bruch.")]
#only("3")[#voiceover("Schließlich wandeln wir diesen vereinfachten Bruch in eine Dezimalzahl um.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multiplizieren mit 5]
#v(40pt)
#only("1-")[$(11 × 5)/(20 × 5) = 55/100$]
#v(20pt)
#only("2-")[💡 Das ändert den Wert des Bruchs nicht!]

#only("1")[#voiceover("Beginnen wir damit, sowohl den Zähler als auch den Nenner mit 5 zu multiplizieren. Das ergibt 55 durch 100.")]
#only("2")[#voiceover("Denke daran, dass das Multiplizieren von sowohl dem Zähler als auch dem Nenner eines Bruchs mit derselben Zahl den Wert des Bruchs nicht ändert. Wir machen es nur einfacher, ihn in eine Dezimalzahl umzuwandeln.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte 2 & 3: Vereinfachen und Umwandeln]
#v(40pt)
#only("1-")[55/100 = 0,55]
#v(20pt)
#only("2-")[💡 Der Dezimalpunkt steht vor der zweitletzten Ziffer]

#only("1")[#voiceover("Jetzt ist 55 durch 100 ein Bruch, den wir leicht in eine Dezimalzahl umwandeln können. Er ergibt 0,55.")]
#only("2")[#voiceover("Ein hilfreicher Tipp: Wenn du einen Bruch über 100 in eine Dezimalzahl umwandelst, steht der Dezimalpunkt vor der zweitletzten Ziffer.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

# Create data
labels = ['0.55', '0.45']
sizes = [55, 45]
colors = ['#ff9999', '#66b3ff']

# Plot
plt.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
plt.axis('equal')
plt.title('11/20 als Dezimalzahl')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung von 0,55. Wie du sehen kannst, ist es etwas mehr als die Hälfte, was für 11/20 Sinn macht.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- 11/20 = (11 × 5)/(20 × 5) = 55/100 = 0,55]
#v(20pt)
#only("2-")[- Das Multiplizieren mit 5/5 ändert den Wert des Bruchs nicht]
#v(20pt)
#only("3-")[- 55/100 ist leicht in eine Dezimalzahl umzuwandeln]

#only("1")[#voiceover("Zusammenfassend haben wir 11/20 in 0,55 umgewandelt, indem wir sowohl den Zähler als auch den Nenner mit 5 multipliziert haben.")]
#only("2")[#voiceover("Denke daran, dass das Multiplizieren mit 5/5 dasselbe ist wie das Multiplizieren mit 1, sodass der Wert des Bruchs nicht geändert wird.")]
#only("3")[#voiceover("Das ergab 55/100, was leicht in die Dezimalzahl 0,55 umgewandelt werden kann. Gute Arbeit beim Lösen dieses Problems!")]
]