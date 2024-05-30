#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck]
#v(40pt)
Ein Wasserhahn befindet sich 10 m unter der Wasseroberfläche in einem Reservoir. Wie hoch ist der Wasserdruck am Wasserhahn?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) 0,01 bar]#only("2-")[#text(fill:red)[a) 0,01 bar]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) 0,1 bar]#only("3-")[#text(fill:red)[b) 0,1 bar]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-3")[c) 1 bar]#only("4-")[#text(fill:green)[c) 1 bar]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) 10 bar]#only("5-")[#text(fill:red)[d) 10 bar]]

#only("1")[#voiceover("Großartig! Das ist die richtige Antwort.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[- Der Wasserdruck steigt um etwa 1 bar für alle 10 Meter Tiefe 🌊]
#v(20pt)
#only("2-")[- Der Wasserhahn befindet sich 10 m unter der Oberfläche]
#v(20pt)
#only("3-")[- Daher beträgt der Druck am Wasserhahn: $"Druck" = "Tiefe" dot 1 "bar"/10 "m" = 10 "m" dot 1 "bar"/10 "m" = 1 "bar"$]

#only("1")[#voiceover("Lass uns sehen, warum 1 bar die richtige Antwort ist. Denke daran, dass der Wasserdruck um etwa 1 bar für alle 10 Meter Tiefe steigt.")]
#only("2")[#voiceover("In diesem Problem befindet sich der Wasserhahn 10 Meter unter der Wasseroberfläche.")]
#only("3")[#voiceover("Um den Druck zu berechnen, multiplizieren wir die Tiefe von 10 Metern mit der Druckzunahme von 1 bar pro 10 Meter. Dies ergibt einen Druck von 1 bar am Wasserhahn.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(8, 6))

ax.set_xlim(0, 2)
ax.set_ylim(0, 12)

ax.set_xlabel('Druck (bar)')
ax.set_ylabel('Tiefe (m)')

ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

ax.plot([0, 1], [0, 10], color='blue', linewidth=2)
ax.scatter(1, 10, color='red', s=100, zorder=10)

ax.annotate('Oberfläche', xy=(0, 0), xytext=(-0.5, 0.5), 
            arrowprops=dict(facecolor='black', shrink=0.05))

ax.annotate('Wasserhahn', xy=(1, 10), xytext=(1.1, 9.5),
            arrowprops=dict(facecolor='black', shrink=0.05))

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Hier ist eine visuelle Darstellung:]
#v(20pt)
#only("2-")[- Die Tiefe ist auf der y-Achse, der Druck auf der x-Achse 📏]
#only("3-")[- Die #text(fill:blue)[blaue Linie] zeigt, wie der Druck mit der Tiefe zunimmt 📈]
#only("4-")[- Der #text(fill:red)[rote Punkt] markiert den Wasserhahn in 10 m Tiefe und 1 bar Druck 🔴]

#only("1")[#voiceover("Lass uns dieses Problem visualisieren, um es besser zu verstehen.")]
#only("2")[#voiceover("In diesem Diagramm ist die Tiefe auf der y-Achse und der Druck auf der x-Achse dargestellt.")]
#only("3")[#voiceover("Die blaue Linie zeigt, wie der Druck mit zunehmender Tiefe steigt.")]
#only("4")[#voiceover("Und der rote Punkt markiert die Position des Wasserhahns, in einer Tiefe von 10 Metern, wo der Druck 1 bar beträgt. Dieses Diagramm zeigt deutlich die lineare Beziehung zwischen Tiefe und Druck im Wasser.")]
]