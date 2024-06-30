#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 7/8 in eine Dezimalzahl]
#v(40pt)
Was ist 7/8 als Dezimalzahl?
#v(40pt)
#only("-1")[a) 0,875]#only("2-")[#text(fill:green)[a) 0,875]]
#v(10pt)
#only("-2")[b) 0,87]#only("3-")[#text(fill:red)[b) 0,87]]
#v(10pt)
#only("-3")[c) 0,85]#only("4-")[#text(fill:red)[c) 0,85]]
#v(10pt)
#only("-4")[d) 0,8]#only("5-")[#text(fill:red)[d) 0,8]]

#only("1")[#voiceover("Ausgezeichnet! Du hast die richtige Antwort gewählt. Lass uns erklären, warum a) 0,875 die richtige Wahl ist und die Lösung Schritt für Schritt durchgehen.")]
#only("2")[#voiceover("Option a, 0,875, ist tatsächlich die korrekte Dezimaldarstellung von 7/8.")]
#only("3")[#voiceover("Option b, 0,87, ist nah dran, aber nicht genau genug. Es ist etwas weniger als der tatsächliche Wert.")]
#only("4")[#voiceover("Option c, 0,85, ist zu klein, um 7/8 genau darzustellen.")]
#only("5")[#voiceover("Option d, 0,8, ist deutlich kleiner als 7/8 und daher falsch.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 7/8 in eine Dezimalzahl: Methode]
#v(40pt)
#only("1-")[- Multipliziere sowohl Zähler als auch Nenner mit 125 📏]
#v(20pt)
#only("2-")[- Dadurch wird der Nenner zu 1000 🎯]
#v(20pt)
#only("3-")[- Verschiebe das Dezimalzeichen um 3 Stellen nach links ⬅️]

#only("1")[#voiceover("Um 7/8 in eine Dezimalzahl umzuwandeln, verwenden wir eine clevere Methode. Zuerst multiplizieren wir sowohl den Zähler als auch den Nenner mit 125.")]
#only("2")[#voiceover("Warum 125? Weil 8 mal 125 gleich 1000 ist, was unsere Umwandlung erleichtert.")]
#only("3")[#voiceover("Sobald wir einen Bruch über 1000 haben, können wir ihn leicht in eine Dezimalzahl umwandeln, indem wir das Dezimalzeichen um drei Stellen nach links verschieben.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1️⃣ $7/8 = (7 dot 125)/(8 dot 125)$]
#v(20pt)
#only("2-")[2️⃣ $= 875/1000$]
#v(20pt)
#only("3-")[3️⃣ $= 0,875$]

#only("1")[#voiceover("Beginnen wir mit unserem Bruch, 7/8. Wir multiplizieren sowohl den Zähler als auch den Nenner mit 125.")]
#only("2")[#voiceover("Das ergibt 875 über 1000.")]
#only("3")[#voiceover("Um einen Bruch über 1000 in eine Dezimalzahl umzuwandeln, verschieben wir einfach das Dezimalzeichen um drei Stellen nach links. 875 über 1000 wird zu 0,875.")]
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

fig, ax = plt.subplots(figsize=(10, 6))

ax.bar(['7/8', '875/1000', '0.875'], [7/8, 875/1000, 0.875], color=['blue', 'green', 'red'])
ax.set_ylim(0, 1)
ax.set_title('Äquivalenz von 7/8, 875/1000 und 0,875')
ax.set_ylabel('Wert')

for i, v in enumerate([7/8, 875/1000, 0.875]):
    ax.text(i, v, f'{v:.3f}', ha='center', va='bottom')

plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung unserer Umwandlung. Wie du sehen kannst, repräsentieren 7/8, 875/1000 und 0,875 alle denselben Wert. Dies bestätigt, dass unsere Umwandlung korrekt ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- 7/8 = 0,875 in Dezimalform 🔢]
#v(20pt)
#only("2-")[- Multiplikation mit 125/125 hilft bei der Umwandlung zu /1000 🧮]
#v(20pt)
#only("3-")[- /1000 lässt sich leicht in eine Dezimalzahl umwandeln, indem man das Dezimalzeichen verschiebt ⬅️]

#only("1")[#voiceover("Zusammenfassend haben wir gelernt, dass 7/8 gleich 0,875 in Dezimalform ist.")]
#only("2")[#voiceover("Wir haben einen hilfreichen Trick verwendet, indem wir sowohl den Zähler als auch den Nenner mit 125 multipliziert haben, um einen Bruch über 1000 zu erhalten.")]
#only("3")[#voiceover("Schließlich haben wir gesehen, dass jeder Bruch über 1000 leicht in eine Dezimalzahl umgewandelt werden kann, indem man das Dezimalzeichen um drei Stellen nach links verschiebt. Großartige Arbeit beim Beherrschen dieses Konzepts!")]
]