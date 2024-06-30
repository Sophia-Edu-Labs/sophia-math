#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 1/2 in eine Dezimalzahl]
#v(40pt)
Was ist 1/2 als Dezimalzahl?
#v(40pt)
#only("-1")[a) 0,2]#only("2-")[#text(fill:red)[a) 0,2]]
#v(10pt)
#only("-2")[b) 0,5]#only("3-")[#text(fill:green)[b) 0,5]]
#v(10pt)
#only("-3")[c) 2,0]#only("4-")[#text(fill:red)[c) 2,0]]
#v(10pt)
#only("-4")[d) 5,0]#only("5-")[#text(fill:red)[d) 5,0]]

#only("1")[#voiceover("Ausgezeichnet! Du hast richtig erkannt, dass 1/2 als Dezimalzahl 0,5 ist. Lass uns jede Option durchgehen, um zu verstehen, warum.")]
#only("2")[#voiceover("Option a, 0,2, ist falsch. Dies entspricht tatsächlich 1/5, nicht 1/2.")]
#only("3")[#voiceover("Option b, 0,5, ist korrekt! Dies entspricht tatsächlich 1/2.")]
#only("4")[#voiceover("Option c, 2,0, ist falsch. Dies sind 2 Ganze, was größer als 1/2 ist.")]
#only("5")[#voiceover("Option d, 5,0, ist ebenfalls falsch. Dies sind 5 Ganze, was viel größer als 1/2 ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 1/2 in 0,5]
#v(40pt)
#only("1-")[Schritt 1: Zähler und Nenner mit 5 multiplizieren]
#v(20pt)
#only("2-")[$ 1/2 = (1 dot 5)/(2 dot 5) = 5/10 $]
#v(20pt)
#only("3-")[Schritt 2: 5 durch 10 teilen]
#v(20pt)
#only("4-")[$ 5/10 = 0.5 $]

#only("1")[#voiceover("Lass uns den Prozess der Umwandlung von 1/2 in eine Dezimalzahl durchgehen. Unser erster Schritt ist, sowohl den Zähler als auch den Nenner mit 5 zu multiplizieren.")]
#only("2")[#voiceover("Wenn wir das tun, erhalten wir 1 mal 5 über 2 mal 5, was 5 über 10 ergibt. Denke daran, dass das Multiplizieren mit 5 über 5 den Wert des Bruchs nicht ändert, es hilft uns nur, ihn leichter in eine Dezimalzahl umzuwandeln.")]
#only("3")[#voiceover("Nun ist unser zweiter Schritt, 5 durch 10 zu teilen.")]
#only("4")[#voiceover("5 geteilt durch 10 ergibt 0,5. Und da haben wir es! Wir haben 1/2 in die Dezimalzahl 0,5 umgewandelt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung von 1/2 als 0,5]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Pie chart
sizes = [1, 1]
colors = ['#ff9999', '#66b3ff']
ax1.pie(sizes, colors=colors, autopct='%1.1f%%', startangle=90)
ax1.set_title('1/2 as a Fraction')

# Bar chart
ax2.bar(['0.5'], [0.5], color='#ff9999', width=0.4)
ax2.set_ylim(0, 1)
ax2.set_title('0.5 as a Decimal')
ax2.set_ylabel('Value')

plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung von 1/2 und 0,5. Links sehen wir ein Kreisdiagramm, das in zwei gleiche Hälften geteilt ist und den Bruch 1/2 darstellt. Rechts haben wir ein Balkendiagramm, das 0,5 zeigt, das genau bis zur Hälfte der Skala von 0 bis 1 reicht.")]
#only("2")[#voiceover("Diese Visualisierung hilft uns zu sehen, dass 1/2 und 0,5 tatsächlich denselben Wert haben, nur in unterschiedlichen Formen ausgedrückt. Ob wir 'ein Halb' oder 'null Komma fünf' sagen, wir sprechen über denselben Betrag.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- 1/2 entspricht 0,5 in Dezimalform 🔢]
#v(20pt)
#only("2-")[- Zur Umwandlung multipliziere Zähler und Nenner mit 5 ✖️]
#v(20pt)
#only("3-")[- Diese Methode funktioniert auch für andere Brüche! 🧠]

#only("1")[#voiceover("Lass uns zusammenfassen, was wir gelernt haben. Zuerst und vor allem wissen wir jetzt, dass 1/2 in Dezimalform 0,5 entspricht.")]
#only("2")[#voiceover("Wir haben auch eine praktische Methode gelernt, um 1/2 in eine Dezimalzahl umzuwandeln: multipliziere sowohl den Zähler als auch den Nenner mit 5. Das ergibt 5/10, was leicht in 0,5 umgewandelt werden kann.")]
#only("3")[#voiceover("Denke daran, dass diese Methode, sowohl den Zähler als auch den Nenner mit derselben Zahl zu multiplizieren, auch nützlich sein kann, um andere Brüche in Dezimalzahlen umzuwandeln! Übe weiter, und du wirst im Handumdrehen ein Profi im Umwandeln von Brüchen in Dezimalzahlen!")]
]