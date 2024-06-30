#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)
Was ist $19/4$ als Dezimalzahl?
#v(40pt)
#only("-1")[a) 4.75]#only("2-")[#text(fill:green)[a) 4.75]]
#v(10pt)
#only("-2")[b) 4.7]#only("3-")[#text(fill:red)[b) 4.7]]
#v(10pt)
#only("-3")[c) 4.25]#only("4-")[#text(fill:red)[c) 4.25]]
#v(10pt)
#only("-4")[d) 4.5]#only("5-")[#text(fill:red)[d) 4.5]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns das Video anschauen, um zu sehen, warum 4.75 die richtige Dezimaldarstellung von 19/4 ist.")]
#only("2")[#voiceover("Option a, 4.75, ist tatsächlich die richtige Antwort. Wir werden gleich sehen, warum.")]
#only("3")[#voiceover("Option b, 4.7, ist falsch. Es ist nah dran, aber nicht genau.")]
#only("4")[#voiceover("Option c, 4.25, ist auch falsch. Dies wäre die Dezimalform von 17/4, nicht 19/4.")]
#only("5")[#voiceover("Option d, 4.5, ist ebenfalls falsch. Dies ist die Dezimalform von 18/4 oder 9/2.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von 19/4 in eine Dezimalzahl]
#v(40pt)
#only("1-")[Schritt 1: Multipliziere sowohl Zähler als auch Nenner mit 25]
#v(20pt)
#only("2-")[$19/4 = (19 dot 25)/(4 dot 25)$]
#v(20pt)
#only("3-")[$= 475/100$]

#only("1")[#voiceover("Um 19/4 in eine Dezimalzahl umzuwandeln, verwenden wir einen hilfreichen Trick. Wir multiplizieren sowohl den Zähler als auch den Nenner mit 25. Das ändert den Wert des Bruchs nicht, macht es aber einfacher, ihn in eine Dezimalzahl umzuwandeln.")]
#only("2")[#voiceover("Also haben wir 19 durch 4 gleich 19 mal 25 durch 4 mal 25.")]
#only("3")[#voiceover("Wenn wir das berechnen, erhalten wir 475 durch 100.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vom Bruch zur Dezimalzahl]
#v(40pt)
#only("1-")[Schritt 2: Interpretiere $475/100$ als Dezimalzahl]
#v(20pt)
#only("2-")[$475/100 = 4.75$]
#v(40pt)
#only("3-")[💡 Das Dezimalzeichen geht zwei Stellen von rechts in 475]

#only("1")[#voiceover("Jetzt, wo wir 475 durch 100 haben, ist es einfach, es in eine Dezimalzahl umzuwandeln.")]
#only("2")[#voiceover("475 geteilt durch 100 ist einfach 4.75.")]
#only("3")[#voiceover("Hier ist ein Tipp: Wenn man durch 100 teilt, muss man das Dezimalzeichen nur zwei Stellen nach links im Zähler verschieben. Also wird 475 zu 4.75.")]
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
import numpy as np

# Create data
x = np.linspace(0, 5, 100)
y = x

# Create plot
fig, ax = plt.subplots(figsize=(8, 6))

# Plot line
ax.plot(x, y, 'b-', linewidth=2)

# Plot point
ax.plot(4.75, 4.75, 'ro', markersize=10)

# Add text
ax.text(4.8, 4.8, '(4.75, 4.75)', fontsize=12)

# Set limits
ax.set_xlim(0, 5)
ax.set_ylim(0, 5)

# Add labels and title
ax.set_xlabel('x', fontsize=14)
ax.set_ylabel('y', fontsize=14)
ax.set_title('Visual Representation of 19/4 = 4.75', fontsize=16)

# Add grid
ax.grid(True)

plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung unseres Ergebnisses. Auf diesem Graphen stellt der Punkt (4.75, 4.75) unseren Bruch 19/4 auf der Linie y gleich x dar. Das hilft uns zu visualisieren, wo 4.75 auf der Zahlenlinie liegt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wir haben $19/4$ in eine Dezimalzahl umgewandelt 📊]
#v(20pt)
#only("2-")[- Wir haben sowohl den Zähler als auch den Nenner mit 25 multipliziert ✖️]
#v(20pt)
#only("3-")[- Wir haben $475/100$ erhalten, was $4.75$ entspricht 🎉]

#only("1")[#voiceover("Zusammenfassend haben wir den Bruch 19/4 in eine Dezimalzahl umgewandelt.")]
#only("2")[#voiceover("Wir haben dies getan, indem wir sowohl den Zähler als auch den Nenner mit 25 multipliziert haben, was uns einen gleichwertigen Bruch gegeben hat, der einfacher in eine Dezimalzahl umzuwandeln ist.")]
#only("3")[#voiceover("Das Ergebnis war 475 durch 100, was 4.75 entspricht. Und das ist unsere endgültige Antwort! Großartige Arbeit bei der Lösung dieses Problems.")]
]