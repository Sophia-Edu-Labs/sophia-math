#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
Was ist $4/5$ als Dezimalzahl?
#v(40pt)
#only("-1")[a) 0,8]#only("2-")[#text(fill:green)[a) 0,8]]
#v(10pt)
#only("-2")[b) 0,45]#only("3-")[#text(fill:red)[b) 0,45]]
#v(10pt)
#only("-3")[c) 0,75]#only("4-")[#text(fill:red)[c) 0,75]]
#v(10pt)
#only("-4")[d) 0,5]#only("5-")[#text(fill:red)[d) 0,5]]

#only("1")[#voiceover("Großartig! Du hast es richtig gemacht. Lass uns durchgehen, warum 0,8 die richtige Antwort ist und warum die anderen Optionen falsch sind.")]
#only("2")[#voiceover("a) 0,8 ist tatsächlich die richtige Antwort. Wir werden gleich sehen, wie man darauf kommt.")]
#only("3")[#voiceover("b) 0,45 ist falsch. Dies wäre die Dezimalform von 9/20, nicht 4/5.")]
#only("4")[#voiceover("c) 0,75 ist ebenfalls falsch. Dies ist tatsächlich die Dezimalform von 3/4.")]
#only("5")[#voiceover("d) 0,5 ist auch falsch. Dies ist die Dezimalform von 1/2.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 4/5 in eine Dezimalzahl]
#v(40pt)
#only("1-")[Schritt 1: Multipliziere sowohl Zähler als auch Nenner mit 2]
#v(20pt)
#only("2-")[$4/5 = (4 × 2)/(5 × 2) = 8/10$]
#v(20pt)
#only("3-")[Schritt 2: Schreibe es als Dezimalzahl]
#v(20pt)
#only("4-")[$8/10 = 0,8$]

#only("1")[#voiceover("Lass uns 4/5 Schritt für Schritt in eine Dezimalzahl umwandeln. Zuerst multiplizieren wir sowohl den Zähler als auch den Nenner mit 2.")]
#only("2")[#voiceover("Das ergibt 8 durch 10. Wir machen das, weil 10 eine Zehnerpotenz ist, was die Umwandlung in eine Dezimalzahl erleichtert.")]
#only("3")[#voiceover("Nun können wir dies leicht als Dezimalzahl schreiben.")]
#only("4")[#voiceover("8/10 entspricht 0,8. Der Dezimalpunkt steht vor der 8, weil die 8 an der Zehntelstelle steht.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung des Bruchs]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

# Create a pie chart
labels = ['Fraction', 'Remaining']
sizes = [4, 1]
colors = ['#ff9999', '#66b3ff']
explode = (0.1, 0)  # explode 1st slice

plt.pie(sizes, explode=explode, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
plt.axis('equal')
plt.title('4/5 as a Fraction of a Whole')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung von 4/5 als Bruch eines Ganzen. Wie du sehen kannst, nimmt es 80% des Kreises ein, was 0,8 in Dezimalform entspricht.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Um einen Bruch in eine Dezimalzahl umzuwandeln, mache den Nenner zu einer Zehnerpotenz 📊]
#v(20pt)
#only("2-")[- Multipliziere sowohl den Zähler als auch den Nenner mit derselben Zahl ✖️]
#v(20pt)
#only("3-")[- Setze den Dezimalpunkt, um Zehntel, Hundertstel usw. darzustellen 🔢]

#only("1")[#voiceover("Lass uns zusammenfassen, was wir gelernt haben. Um einen Bruch in eine Dezimalzahl umzuwandeln, ist es hilfreich, den Nenner zu einer Zehnerpotenz zu machen.")]
#only("2")[#voiceover("Das können wir tun, indem wir sowohl den Zähler als auch den Nenner mit derselben Zahl multiplizieren. Dies ändert den Wert des Bruchs nicht.")]
#only("3")[#voiceover("Schließlich setzen wir den Dezimalpunkt, um Zehntel, Hundertstel und so weiter darzustellen. In diesem Fall wird 8/10 zu 0,8, weil die 8 an der Zehntelstelle steht.")]
]