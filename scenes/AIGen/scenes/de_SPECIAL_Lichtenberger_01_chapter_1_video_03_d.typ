#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Druck und Wasserstand]
#v(40pt)
#only("1-")[Ein Boot fährt über einen Fisch und verursacht, dass der Wasserstand direkt darüber sinkt. Was passiert mit dem Druck?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Er bleibt gleich.]#only("2-")[#text(fill:red)[a) Er bleibt gleich.]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) Er sinkt.]#only("3-")[#text(fill:green)[b) Er sinkt.]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Er steigt.]#only("4-")[#text(fill:red)[c) Er steigt.]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Es kann nicht bestimmt werden.]#only("5-")[#text(fill:red)[d) Es kann nicht bestimmt werden.]]
#only("1")[#voiceover("Das war leider nicht korrekt. Hier ist die Erklärung:")]
#only("2")[#voiceover("Option a) ist falsch. Der Druck bleibt nicht gleich, wenn der Wasserstand sinkt.")]
#only("3")[#voiceover("Option b) ist korrekt. Wenn der Wasserstand sinkt, sinkt auch der Druck, den das Wasser auf den Fisch ausübt.")]
#only("4")[#voiceover("Option c) ist falsch. Der Druck steigt nicht, wenn der Wasserstand sinkt.")]
#only("5")[#voiceover("Option d) ist ebenfalls falsch. Wir können bestimmen, was mit dem Druck passiert, basierend auf der Änderung des Wasserstands.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erklärung]
#v(40pt)
#only("1-")[Wasserdruck wird durch die Tiefe beeinflusst 🌊]
#v(20pt)
#only("2-")[- Der Druck $P$ ist proportional zur Tiefe $h$: $P = rho g h$]
#v(20pt)
#only("3-")[$rho$ = Dichte des Wassers, $g$ = Erdbeschleunigung]
#v(20pt)
#only("4-")[Wenn das Boot über den Fisch fährt 🐟, sinkt der Wasserstand $h$ ⬇]
#v(20pt)
#only("5-")[Daher sinkt auch der Druck $P$ auf den Fisch ⬇]
#only("1")[#voiceover("Lass uns verstehen, warum der Druck sinkt.")]
#only("2")[#voiceover("Der Wasserdruck ist proportional zur Tiefe. Die Formel lautet P gleich rho g h, wobei P der Druck ist, rho die Dichte des Wassers und g die Erdbeschleunigung ist.")]
#only("3")[#voiceover("Rho und g sind in diesem Szenario Konstanten.")]
#only("4")[#voiceover("Wenn das Boot über den Fisch fährt, verursacht es, dass der Wasserstand h direkt über dem Fisch sinkt.")]
#only("5")[#voiceover("Da der Druck proportional zur Tiefe ist, sinkt der Druck P auf den Fisch, wenn die Tiefe h sinkt.")]
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
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Plot 1: Before the boat passes
ax1.set_title('Bevor das Boot vorbeifährt')
ax1.set_xlim(0, 10)
ax1.set_ylim(0, 10)
ax1.set_aspect('equal')
ax1.set_xlabel('Entfernung')
ax1.set_ylabel('Tiefe')

water_level_1 = 8
fish_depth_1 = 6
ax1.axhline(water_level_1, color='blue', linewidth=2, label='Wasserstand')
ax1.plot([4, 6], [fish_depth_1, fish_depth_1], 'go', markersize=10, label='Fisch')
ax1.annotate(f'Druck: {water_level_1 - fish_depth_1}', xy=(5, fish_depth_1), xytext=(5, 4), 
             arrowprops=dict(facecolor='black', shrink=0.05))

# Plot 2: After the boat passes
ax2.set_title('Nachdem das Boot vorbeigefahren ist')
ax2.set_xlim(0, 10)
ax2.set_ylim(0, 10)
ax2.set_aspect('equal')
ax2.set_xlabel('Entfernung')
ax2.set_ylabel('Tiefe')

water_level_2 = 7
fish_depth_2 = 6
ax2.plot([2, 8], [water_level_2, water_level_2], color='blue', linewidth=2, label='Wasserstand')
ax2.plot([4, 6], [fish_depth_2, fish_depth_2], 'go', markersize=10, label='Fisch')
ax2.annotate(f'Druck: {water_level_2 - fish_depth_2}', xy=(5, fish_depth_2), xytext=(5, 4), 
             arrowprops=dict(facecolor='black', shrink=0.05))

# Add legend
ax1.legend()
ax2.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung, um das Konzept zu veranschaulichen. Das erste Diagramm zeigt die Situation, bevor das Boot über den Fisch fährt. Der Wasserstand ist hoch, was zu einem höheren Druck auf den Fisch führt.")
]
#v(20pt)
#only("2-")[
#voiceover("Das zweite Diagramm zeigt, was passiert, nachdem das Boot vorbeigefahren ist. Der Wasserstand direkt über dem Fisch ist gesunken, was zu einem Druckabfall auf den Fisch führt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Der Druck in einer Flüssigkeit ist proportional zur Tiefe 📏]
#v(20pt)
#only("2-")[- Wenn die Tiefe abnimmt, nimmt auch der Druck ab ⬇]
#v(20pt)
#only("3-")[- Ein Boot, das über einen Fisch fährt, verringert die Wassertiefe über dem Fisch 🚤🐟]
#v(20pt)
#only("4-")[- Daher nimmt der Druck auf den Fisch ab ⬇]
#only("1")[#voiceover("Lass uns die wichtigsten Punkte zusammenfassen.")]
#only("2")[#voiceover("Der Druck in einer Flüssigkeit, wie Wasser, ist proportional zur Tiefe. Wenn die Tiefe abnimmt, nimmt auch der Druck ab.")]
#only("3")[#voiceover("Wenn ein Boot über einen Fisch fährt, verringert es die Wassertiefe direkt über dem Fisch.")]
#only("4")[#voiceover("Infolgedessen nimmt der Druck auf den Fisch ab. Denke daran, dass Tiefe und Druck in Flüssigkeiten direkt miteinander verbunden sind.")]
]