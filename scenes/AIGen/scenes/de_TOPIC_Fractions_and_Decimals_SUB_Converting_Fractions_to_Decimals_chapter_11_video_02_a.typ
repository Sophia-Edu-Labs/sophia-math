#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 5/4 in eine Dezimalzahl]
#v(40pt)
Was ist 5/4 als Dezimalzahl?
#v(40pt)
#only("-1")[a) 1,25]#only("2-")[#text(fill:green)[a) 1,25]]
#v(10pt)
#only("-2")[b) 1,2]#only("3-")[#text(fill:red)[b) 1,2]]
#v(10pt)
#only("-3")[c) 1,15]#only("4-")[#text(fill:red)[c) 1,15]]
#v(10pt)
#only("-4")[d) 1,3]#only("5-")[#text(fill:red)[d) 1,3]]

#only("1")[#voiceover("Ausgezeichnet! Du hast die richtige Antwort. Lass uns durchgehen, warum a) 1,25 die richtige Wahl ist und den Prozess Schritt für Schritt erklären.")]
#only("2")[#voiceover("Option a) 1,25 ist tatsächlich korrekt. 5/4 entspricht 1,25, wenn es in eine Dezimalzahl umgewandelt wird.")]
#only("3")[#voiceover("Option b) 1,2 ist falsch. Es ist nah dran, aber nicht genau.")]
#only("4")[#voiceover("Option c) 1,15 ist ebenfalls falsch. Es ist kleiner als der tatsächliche Wert.")]
#only("5")[#voiceover("Option d) 1,3 ist auch falsch. Es ist größer als der tatsächliche Wert.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 5/4 in eine Dezimalzahl: Methode]
#v(40pt)
#only("1-")[- Multipliziere sowohl den Zähler als auch den Nenner mit 25 📊]
#v(20pt)
#only("2-")[- Dadurch wird der Nenner 100, was leichter zu konvertieren ist 💡]
#v(20pt)
#only("3-")[- Setze das Dezimalzeichen an die richtige Stelle ➡️]

#only("1")[#voiceover("Um 5/4 in eine Dezimalzahl umzuwandeln, verwenden wir eine clevere Methode. Zuerst multiplizieren wir sowohl den Zähler als auch den Nenner mit 25.")]
#only("2")[#voiceover("Warum 25? Weil es den Nenner zu 100 macht, was viel einfacher in eine Dezimalzahl umzuwandeln ist.")]
#only("3")[#voiceover("Dann setzen wir das Dezimalzeichen an die richtige Stelle, um unser Ergebnis zu erhalten.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[$ 5/4 = (5 dot 25)/(4 dot 25) $]
#v(20pt)
#only("2-")[$ = 125/100 $]
#v(20pt)
#only("3-")[$ = 1,25 $]

#only("1")[#voiceover("Beginnen wir mit unserem Bruch, 5/4. Wir multiplizieren sowohl den Zähler als auch den Nenner mit 25.")]
#only("2")[#voiceover("Das ergibt 125 durch 100.")]
#only("3")[#voiceover("Nun, 125 durch 100 ist leicht in eine Dezimalzahl umzuwandeln. Wir müssen nur das Dezimalzeichen zwei Stellen nach links in 125 verschieben, was uns 1,25 ergibt.")]
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

fig, ax = plt.subplots(figsize=(8, 6))

ax.pie([1, 0.25], labels=['1', '0.25'], autopct='%1.2f%%', startangle=90, colors=['#ff9999', '#66b3ff'])
ax.set_title('Visual Representation of 1.25 (5/4)')

plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung von 1,25 oder 5/4. Wie Du sehen kannst, ist es ein Ganzes plus ein Viertel, was zusammen 1,25 ergibt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- 5/4 = 1,25 in Dezimalform 🔢]
#v(20pt)
#only("2-")[- Das Multiplizieren mit 25/25 hilft, in Hundertstel umzuwandeln 💯]
#v(20pt)
#only("3-")[- Übe diese Methode mit anderen Brüchen! 🏋️]

#only("1")[#voiceover("Zusammenfassend haben wir gelernt, dass 5/4 in Dezimalform 1,25 entspricht.")]
#only("2")[#voiceover("Wir haben einen hilfreichen Trick verwendet, indem wir mit 25 durch 25 multipliziert haben, um unseren Bruch in Hundertstel umzuwandeln, was es einfacher macht, ihn als Dezimalzahl zu schreiben.")]
#only("3")[#voiceover("Versuche, diese Methode mit anderen Brüchen zu üben, um Deine Fähigkeiten zur Umwandlung von Brüchen in Dezimalzahlen zu verbessern!")]
]