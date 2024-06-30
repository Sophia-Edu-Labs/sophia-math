#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 5/8 in eine Dezimalzahl]
#v(40pt)
Was ist 5/8 als Dezimalzahl?
#v(40pt)
#only("-1")[a) 0,625]#only("2-")[#text(fill:green)[a) 0,625]]
#v(10pt)
#only("-2")[b) 0,62]#only("3-")[#text(fill:red)[b) 0,62]]
#v(10pt)
#only("-3")[c) 0,65]#only("4-")[#text(fill:red)[c) 0,65]]
#v(10pt)
#only("-4")[d) 0,6]#only("5-")[#text(fill:red)[d) 0,6]]

#only("1")[#voiceover("Ausgezeichnet! Du hast die richtige Antwort gewählt. Lass uns durchgehen, warum 0,625 tatsächlich die korrekte Dezimaldarstellung von 5/8 ist.")]
#only("2")[#voiceover("Option a, 0,625, ist korrekt. Dies ist die exakte Dezimaldarstellung von 5/8.")]
#only("3")[#voiceover("Option b, 0,62, ist falsch. Obwohl es nah dran ist, ist es nicht präzise genug.")]
#only("4")[#voiceover("Option c, 0,65, ist falsch. Es ist etwas zu groß.")]
#only("5")[#voiceover("Option d, 0,6, ist falsch. Es ist eine Vereinfachung und nicht genau genug.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 5/8 in 0,625]
#v(40pt)
#only("1-")[Schritt 1: Zähler und Nenner mit 125 multiplizieren]
#v(20pt)
#only("2-")[$5/8 = (5 × 125) / (8 × 125)$]
#v(20pt)
#only("3-")[$= 625 / 1000$]

#only("1")[#voiceover("Lass uns den Prozess der Umwandlung von 5/8 in eine Dezimalzahl aufschlüsseln. Unser erster Schritt ist, sowohl den Zähler als auch den Nenner mit 125 zu multiplizieren.")]
#only("2")[#voiceover("Wir tun dies, weil 125 mal 8 gleich 1000 ist, was uns einen Nenner von 1000 gibt. Dies ist hilfreich, weil Brüche mit 1000 als Nenner leicht in Dezimalzahlen umgewandelt werden können.")]
#only("3")[#voiceover("Nach der Multiplikation erhalten wir 625 durch 1000.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vom Bruch zur Dezimalzahl]
#v(40pt)
#only("1-")[Schritt 2: In Dezimalzahl umwandeln]
#v(20pt)
#only("2-")[$625 / 1000 = 0,625$]
#v(40pt)
#only("3-")[💡 Das Dezimalkomma wird drei Stellen von rechts verschoben]

#only("1")[#voiceover("Nun zu unserem zweiten und letzten Schritt, wir wandeln diesen Bruch in eine Dezimalzahl um.")]
#only("2")[#voiceover("625 geteilt durch 1000 ergibt 0,625. Das können wir leicht sehen, weil wir bei einem Bruch mit 1000 als Nenner das Dezimalkomma einfach drei Stellen nach links vom Ende des Zählers verschieben.")]
#only("3")[#voiceover("Denke daran, dass bei der Umwandlung eines Bruchs mit 1000 als Nenner in eine Dezimalzahl das Dezimalkomma immer drei Stellen von rechts im Zähler verschoben wird.")]
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

# Create data
labels = ['5/8', '0.625']
sizes = [5, 3]
colors = ['#ff9999', '#66b3ff']

# Create pie chart
fig, ax = plt.subplots()
ax.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle

plt.title('5/8 as a Fraction and Decimal')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung von 5/8 und seinem Dezimaläquivalent 0,625. Wie du sehen kannst, repräsentieren sie denselben Teil des Ganzen, nur in unterschiedlichen Formaten.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- 5/8 = 0,625 in Dezimalform 🔢]
#v(20pt)
#only("2-")[- Mit 125/125 multiplizieren, um einen Nenner von 1000 zu erhalten 🧮]
#v(20pt)
#only("3-")[- Bei Brüchen mit 1000 als Nenner Dezimalkomma 3 Stellen nach links verschieben ⬅️]

#only("1")[#voiceover("Lass uns zusammenfassen, was wir gelernt haben. Erstens und vor allem ist 5/8 gleich 0,625 in Dezimalform.")]
#only("2")[#voiceover("Wir haben dies herausgefunden, indem wir sowohl den Zähler als auch den Nenner mit 125 multipliziert haben, was uns einen Nenner von 1000 gegeben hat.")]
#only("3")[#voiceover("Denke schließlich daran, dass wir bei Brüchen mit 1000 als Nenner leicht in eine Dezimalzahl umwandeln können, indem wir das Dezimalkomma drei Stellen nach links im Zähler verschieben. Dieser Trick kann bei zukünftigen Berechnungen sehr hilfreich sein!")]
]