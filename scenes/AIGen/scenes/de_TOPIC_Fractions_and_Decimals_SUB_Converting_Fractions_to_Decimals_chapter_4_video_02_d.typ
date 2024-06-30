#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 3/8 in eine Dezimalzahl]
#v(40pt)
Was ist 3/8 als Dezimalzahl?
#v(40pt)
#only("-1")[a) 0,375]#only("2-")[#text(fill:green)[a) 0,375]]
#v(10pt)
#only("-2")[b) 0,38]#only("3-")[#text(fill:red)[b) 0,38]]
#v(10pt)
#only("-3")[c) 0,35]#only("4-")[#text(fill:red)[c) 0,35]]
#v(10pt)
#only("-4")[d) 0,3]#only("5-")[#text(fill:red)[d) 0,3]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns gemeinsam Schritt für Schritt durch die Lösung gehen, um zu sehen, wie man 3/8 in eine Dezimalzahl umwandelt.")]
#only("2")[#voiceover("Option a, 0,375, ist tatsächlich die richtige Antwort. Wir werden gleich sehen, wie wir darauf kommen.")]
#only("3")[#voiceover("Option b, 0,38, ist falsch. Es ist nah dran, aber nicht genau.")]
#only("4")[#voiceover("Option c, 0,35, ist ebenfalls falsch. Es ist eine Unterschätzung des tatsächlichen Wertes.")]
#only("5")[#voiceover("Option d, 0,3, ist auch falsch. Es ist zu klein, um die richtige Antwort zu sein.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 3/8 in eine Dezimalzahl: Der Prozess]
#v(40pt)
#only("1-")[1️⃣ Beginne mit dem Bruch: $3/8$]
#v(20pt)
#only("2-")[2️⃣ Multipliziere sowohl Zähler als auch Nenner mit 125: $3/8 = (3 × 125)/(8 × 125)$]
#v(20pt)
#only("3-")[3️⃣ Vereinfache: $375/1000$]
#v(20pt)
#only("4-")[4️⃣ Schreibe es als Dezimalzahl: $0,375$]

#only("1")[#voiceover("Lass uns mit unserem Bruch, drei Achtel, beginnen.")]
#only("2")[#voiceover("Um dies in eine Dezimalzahl umzuwandeln, multiplizieren wir sowohl den Zähler als auch den Nenner mit 125. Warum 125? Weil 8 mal 125 1000 ergibt, was uns einen Nenner gibt, der eine Zehnerpotenz ist.")]
#only("3")[#voiceover("Nach der Multiplikation erhalten wir 375 durch 1000.")]
#only("4")[#voiceover("Nun können wir dies leicht als Dezimalzahl schreiben, indem wir das Komma um drei Stellen nach links verschieben: 0,375.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum diese Methode funktioniert]
#v(40pt)
#only("1-")[• Multiplikation mit 125/125 = 1, daher ändert sich der Wert des Bruchs nicht 🔄]
#v(20pt)
#only("2-")[• 1000 im Nenner macht es einfach, es als Dezimalzahl zu schreiben 🔟]
#v(20pt)
#only("3-")[• Diese Methode funktioniert für jeden Bruch mit einem Nenner von 8 ✨]

#only("1")[#voiceover("Diese Methode funktioniert, weil wir im Wesentlichen den Bruch mit 1 in Form von 125 durch 125 multiplizieren. Dies ändert den Wert des Bruchs nicht.")]
#only("2")[#voiceover("Indem wir 1000 im Nenner erhalten, machen wir es einfach, es als Dezimalzahl zu schreiben. Wir müssen das Komma nur um drei Stellen nach links verschieben.")]
#only("3")[#voiceover("Interessanterweise funktioniert diese Methode der Multiplikation mit 125 für jeden Bruch mit einem Nenner von 8, weil 8 mal 125 immer 1000 ergibt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Dezimalzahl]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(10, 2))

ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_yticks([])
ax.set_xticks([0, 0.375, 1])
ax.set_xticklabels(['0', '0.375', '1'])

ax.axvline(x=0.375, color='r', linestyle='--')
ax.annotate('3/8 = 0.375', xy=(0.375, 0.5), xytext=(0.4, 0.7),
            arrowprops=dict(facecolor='black', shrink=0.05))

ax.set_title('3/8 on a Number Line')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung, wo 0,375 auf einer Zahlengeraden zwischen 0 und 1 liegt. Wie du sehen kannst, ist es etwas weniger als die Hälfte, was für den Bruch drei Achtel Sinn macht.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[• 3/8 als Dezimalzahl ist 0,375 ✅]
#v(20pt)
#only("2-")[• Wir können Brüche in Dezimalzahlen umwandeln, indem wir den Nenner zu einer Zehnerpotenz machen 💡]
#v(20pt)
#only("3-")[• Diese Methode hilft uns, Brüche in Dezimalzahlen umzuwandeln, ohne lange Division 🧮]

#only("1")[#voiceover("Zum Abschluss, lass uns die wichtigsten Punkte zusammenfassen. Erstens haben wir bestätigt, dass drei Achtel als Dezimalzahl tatsächlich 0,375 ist.")]
#only("2")[#voiceover("Wir haben eine nützliche Methode gelernt, um Brüche in Dezimalzahlen umzuwandeln, indem wir den Nenner zu einer Zehnerpotenz machen.")]
#only("3")[#voiceover("Diese Methode ist besonders hilfreich, da sie uns ermöglicht, Brüche in Dezimalzahlen umzuwandeln, ohne auf lange Division zurückzugreifen. Übe diese Technik weiter, und du wirst feststellen, dass es jedes Mal einfacher wird!")]
]