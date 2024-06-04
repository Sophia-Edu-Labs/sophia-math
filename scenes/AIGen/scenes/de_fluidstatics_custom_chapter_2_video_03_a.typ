#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vergleich der Kräfte auf den Damm]
#v(40pt)
#only("1-")[Wie verhält sich die Kraft auf andere Abschnitte gleicher Größe, aber unterschiedlicher Position?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie grün, weil sie korrekt ist.
#only("-1")[a) Größer]#only("2-")[#text(fill:green)[a) Größer]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-2")[b) Kleiner]#only("3-")[#text(fill:red)[b) Kleiner]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-3")[c) Gleich]#only("4-")[#text(fill:red)[c) Gleich]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-4")[d) Kann nicht bestimmt werden]#only("5-")[#text(fill:red)[d) Kann nicht bestimmt werden]]
#v(40pt)

#only("1")[#voiceover("Das ist richtig, gute Arbeit! Die richtige Antwort ist...")]
// Sehr kurz über a sprechen und warum es korrekt ist
#only("2")[#voiceover("a) Größer. Die Kraft auf tiefer liegende Abschnitte des Damms ist tatsächlich größer.")]
// Sehr kurz über b sprechen und warum es falsch ist
#only("3")[#voiceover("b) Kleiner ist falsch. Die Kraft nimmt mit der Tiefe zu, nicht ab.")]
// Sehr kurz über c sprechen und warum es falsch ist
#only("4")[#voiceover("c) Gleich ist auch falsch. Die Kraft variiert mit der Tiefe, daher ist sie nicht für alle Abschnitte gleich.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("Und d) Kann nicht bestimmt werden ist ebenfalls falsch. Wir können die Kraft anhand der Tiefe und Fläche jedes Abschnitts bestimmen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kraft auf Dammabschnitte]
#v(40pt)
#only("1-")[Lass uns sehen warum:]
#v(20pt)
#only("2-")[- Kraft auf einen Dammabschnitt: $F = rho g h A$]
#only("3-")[    - $rho$ = Wasserdichte (konstant)]
#only("4-")[    - $g$ = Gravitationsbeschleunigung (konstant)]
#only("5-")[    - $A$ = Fläche des Abschnitts (für alle gleich)]
#only("6-")[    - $h$ = Tiefe des Abschnitts (variiert!)]
#v(20pt)
#only("7-")[⇒ Tiefere Abschnitte erfahren größere Kraft! 🌊]

#only("1")[#voiceover("Lass uns sehen, warum die Kraft für tiefer liegende Abschnitte des Damms größer ist.")]
#only("2")[#voiceover("Die Kraft auf einen Dammabschnitt wird durch die Formel F gleich rho g h A gegeben, wobei")]
#only("3")[#voiceover("rho die Dichte des Wassers ist, die konstant ist,")]
#only("4")[#voiceover("g die Gravitationsbeschleunigung ist, die ebenfalls konstant ist,")]
#only("5")[#voiceover("A die Fläche des Abschnitts ist, die in diesem Fall für alle Abschnitte gleich ist, und")]
#only("6")[#voiceover("h die Tiefe des Abschnitts ist, die variiert.")]
#only("7")[#voiceover("Da die Tiefe h die einzige Variable ist, die sich ändert, und sie im Zähler steht, führt eine größere Tiefe zu einer größeren Kraft. Daher erfahren tiefere Abschnitte des Damms eine größere Kraft.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Set up the figure
fig, ax = plt.subplots(figsize=(8, 6))

# Draw the dam
dam_height = 10
dam_width = 2
dam = plt.Rectangle((0, 0), dam_width, dam_height, linewidth=1, edgecolor='k', facecolor='gray')
ax.add_patch(dam)

# Draw the water
water = plt.Rectangle((dam_width, 0), 4, dam_height, linewidth=1, edgecolor='k', facecolor='skyblue')
ax.add_patch(water)

# Highlight sections
section1 = plt.Rectangle((0, 7), dam_width, 2, linewidth=2, edgecolor='r', facecolor='none')
ax.add_patch(section1)
section2 = plt.Rectangle((0, 2), dam_width, 2, linewidth=2, edgecolor='g', facecolor='none')
ax.add_patch(section2)

# Add labels
ax.text(1, 8, 'Section 1', ha='center', va='center', color='r', fontsize=12)
ax.text(1, 3, 'Section 2', ha='center', va='center', color='g', fontsize=12)
ax.text(3, 10.5, 'Water', ha='center', va='center', fontsize=14)

# Add force arrows
ax.arrow(1, 8, 0, 1, head_width=0.3, head_length=0.5, linewidth=2, color='r')
ax.arrow(1, 3, 0, 2, head_width=0.3, head_length=0.5, linewidth=2, color='g')

# Set axis limits and remove ticks
ax.set_xlim(0, 6)
ax.set_ylim(0, 12)
ax.set_xticks([])
ax.set_yticks([])

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Hier ist eine Visualisierung, um dieses Konzept zu veranschaulichen.")]
#only("2")[#voiceover("Der Damm ist in Grau dargestellt, und das Wasser in Blau.")]
#only("3")[#voiceover("Wir vergleichen zwei Abschnitte gleicher Größe, die in Rot und Grün markiert sind.")]
#only("4")[#voiceover("Der rote Abschnitt, Abschnitt 1, liegt tiefer im Damm als der grüne Abschnitt, Abschnitt 2.")]
#only("5")[#voiceover("Die Kraft auf jeden Abschnitt wird durch die Pfeile dargestellt. Wie du sehen kannst, ist der Pfeil für Abschnitt 1 länger, was auf eine größere Kraft hinweist.")]
#only("6")[#voiceover("Dies liegt daran, dass Abschnitt 1 eine größere Tiefe h hat und daher gemäß der Formel F gleich rho g h A eine größere Kraft erfährt.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Die Kraft auf einen Dammabschnitt hängt von seiner Tiefe ab 🧮]
#v(20pt)
#only("2-")[- Tiefere Abschnitte erfahren größere Kraft 🌊]
#v(20pt)
#only("3-")[- Aufgrund der Formel: $F = rho g h A$]
#v(20pt)
#only("4-")[⇒ Die Position ist entscheidend! 📍]

#only("1")[#voiceover("Zusammenfassend hängt die Kraft auf einen Dammabschnitt von seiner Tiefe ab.")]
#only("2")[#voiceover("Tiefere Abschnitte erfahren größere Kraft,")]
#only("3")[#voiceover("aufgrund der Formel F gleich rho g h A, wobei die Tiefe h im Zähler steht.")]
#only("4")[#voiceover("Daher ist die Position eines Abschnitts entscheidend für die Kraft, die er erfährt. Denk daran, wenn du Dämme entwirfst!")]
]