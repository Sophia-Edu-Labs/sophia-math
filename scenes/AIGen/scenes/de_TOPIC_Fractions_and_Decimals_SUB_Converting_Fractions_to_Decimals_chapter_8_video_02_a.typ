#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von $3/25$ in eine Dezimalzahl]
#v(40pt)
Was ist $3/25$ als Dezimalzahl?
#v(40pt)
#only("-1")[a) $0.12$]#only("2-")[#text(fill:green)[a) $0.12$]]
#v(10pt)
#only("-2")[b) $0.13$]#only("3-")[#text(fill:red)[b) $0.13$]]
#v(10pt)
#only("-3")[c) $0.14$]#only("4-")[#text(fill:red)[c) $0.14$]]
#v(10pt)
#only("-4")[d) $0.15$]#only("5-")[#text(fill:red)[d) $0.15$]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns Schritt für Schritt durch die Lösung gehen, um zu verstehen, warum 0,12 die richtige Antwort ist.")]
#only("2")[#voiceover("Option a, 0,12, ist tatsächlich die richtige Antwort. Lass uns sehen, warum.")]
#only("3")[#voiceover("Option b, 0,13, ist falsch. Es ist etwas größer als der tatsächliche Wert.")]
#only("4")[#voiceover("Option c, 0,14, ist ebenfalls falsch. Es ist noch weiter vom tatsächlichen Wert entfernt.")]
#only("5")[#voiceover("Option d, 0,15, ist auch falsch. Es ist die größte Option und ziemlich weit vom tatsächlichen Wert entfernt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Beide Teile multiplizieren]
#v(40pt)
#only("1-")[- Beginne mit $3/25$]
#v(20pt)
#only("2-")[- Multipliziere sowohl Zähler als auch Nenner mit 4:]
#v(20pt)
#only("3-")[$(3 × 4) / (25 × 4) = 12/100$]

#only("1")[#voiceover("Lass uns mit unserem Bruch, 3 durch 25, beginnen.")]
#only("2")[#voiceover("Um diesen Bruch leichter in eine Dezimalzahl umzuwandeln, multiplizieren wir sowohl den Zähler als auch den Nenner mit 4.")]
#only("3")[#voiceover("Das ergibt 3 mal 4 durch 25 mal 4, was 12 durch 100 ergibt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: In Dezimalzahl umwandeln]
#v(40pt)
#only("1-")[- $12/100 = 0.12$]
#v(20pt)
#only("2-")[- Dezimalpunkt 2 Stellen nach links verschieben ⬅️]
#v(20pt)
#only("3-")[- Ergebnis: $0.12$ 🎉]

#only("1")[#voiceover("Nun, 12 durch 100 ist ein viel leichterer Bruch, um ihn in eine Dezimalzahl umzuwandeln.")]
#only("2")[#voiceover("Um einen Bruch über 100 in eine Dezimalzahl umzuwandeln, verschieben wir einfach den Dezimalpunkt um zwei Stellen nach links.")]
#only("3")[#voiceover("Das gibt uns unser Endergebnis: 0,12.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

labels = ['0', '0.12', '0.25', '0.5', '0.75', '1']
positions = [0, 0.12, 0.25, 0.5, 0.75, 1]

fig, ax = plt.subplots(figsize=(10, 2))
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_yticks([])
ax.set_xticks(positions)
ax.set_xticklabels(labels)
ax.axvline(x=0.12, color='r', linestyle='--')
ax.annotate('3/25 = 0.12', xy=(0.12, 0.5), xytext=(0.12, 0.7),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.set_title('Position of 3/25 on Number Line')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung, wo 0,12 auf einer Zahlengeraden zwischen 0 und 1 liegt. Wie du sehen kannst, liegt es etwas rechts von 0,1, was für den Bruch 3 durch 25 Sinn ergibt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wir haben $3/25$ in eine Dezimalzahl umgewandelt 📊]
#v(20pt)
#only("2-")[- Wir haben beide Teile mit 4 multipliziert, um $12/100$ zu erhalten ✖️]
#v(20pt)
#only("3-")[- $12/100 = 0.12$ in Dezimalform 🎯]

#only("1")[#voiceover("Zusammenfassend haben wir den Bruch 3 durch 25 in eine Dezimalzahl umgewandelt.")]
#only("2")[#voiceover("Wir haben dies getan, indem wir sowohl den Zähler als auch den Nenner mit 4 multipliziert haben, was uns den äquivalenten Bruch 12 durch 100 gegeben hat.")]
#only("3")[#voiceover("Schließlich haben wir erkannt, dass 12 durch 100 gleich 0,12 in Dezimalform ist. Gute Arbeit bei der Lösung dieses Problems!")]
]