#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns gemeinsam die Lösung durchgehen, um zu verstehen, wie wir $4/25$ in eine Dezimalzahl umwandeln.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von $4/25$ in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$4/25$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch vier durch fünfundzwanzig.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Ansatz: Multiplizieren mit $4/4$]
#v(40pt)
#only("1-")[- Zähler und Nenner mit 4 multiplizieren ✖️]
#v(20pt)
#only("2-")[- Dies ändert den Wert des Bruchs nicht ⚖️]
#v(20pt)
#only("3-")[- Macht den Nenner zu 100, leichter umzurechnen 💡]
#only("1")[
#voiceover("Unser Ansatz wird sein, sowohl den Zähler als auch den Nenner mit 4 zu multiplizieren.")
]
#only("2")[
#voiceover("Dies ändert den Wert des Bruchs nicht, da wir mit $4/4$ multiplizieren, was gleich 1 ist.")
]
#only("3")[
#voiceover("Aber es macht den Nenner zu 100, was viel einfacher in eine Dezimalzahl umzurechnen ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[$4/25 = (4 × 4)/(25 × 4)$]
#v(20pt)
#only("2-")[$= 16/100$]
#v(20pt)
#only("3-")[$= 0.16$]
#only("1")[
#voiceover("Lass uns sowohl den Zähler als auch den Nenner mit 4 multiplizieren. Vier mal vier ist sechzehn, und fünfundzwanzig mal vier ist hundert.")
]
#only("2")[
#voiceover("Unser Bruch wird also zu sechzehn durch hundert.")
]
#only("3")[
#voiceover("Nun, sechzehn durch hundert ist leicht in eine Dezimalzahl umzurechnen. Es ist einfach 0,16.")
]
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
labels = '4/25', 'Rest'
sizes = [16, 84]
colors = ['#ff9999', '#66b3ff']
explode = (0.1, 0)  # explode 1st slice

plt.pie(sizes, explode=explode, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
plt.axis('equal')
plt.title('Visualisierung von $4/25$ (oder $16/100$)')
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine visuelle Darstellung unseres Bruchs. Wie Du sehen kannst, repräsentiert $4/25$, was dasselbe ist wie $16/100$, 16% des Ganzen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wir haben mit $4/25$ begonnen 📊]
#v(20pt)
#only("2-")[- Multipliziert mit $4/4$ um $16/100$ zu erhalten 🔢]
#v(20pt)
#only("3-")[- $16/100 = 0.16$ in Dezimalform 🎉]
#only("1")[
#voiceover("Zusammenfassend haben wir mit dem Bruch vier durch fünfundzwanzig begonnen.")
]
#only("2")[
#voiceover("Wir haben sowohl den Zähler als auch den Nenner mit vier multipliziert, was uns sechzehn durch hundert ergibt.")
]
#only("3")[
#voiceover("Sechzehn durch hundert ist gleich 0,16 in Dezimalform. Und das ist unsere endgültige Antwort! Gut gemacht beim Lösen dieses Problems.")
]
]