#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gesamtkraft auf den Behälterboden]
#v(40pt)
In welchem Behälter ist die Gesamtkraft des Wassers auf den Boden am größten?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) A]#only("2-")[#text(fill:red)[a) A]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) B]#only("3-")[#text(fill:red)[b) B]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-3")[c) C]#only("4-")[#text(fill:green)[c) C]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Alle gleich]#only("5-")[#text(fill:red)[d) Alle gleich]]

#only("1")[#voiceover("Leider war das nicht die richtige Antwort. Lass uns sehen, warum Option c korrekt ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
#only("1-")[
- Drei Behälter mit unterschiedlichen Formen
- Gleiche Menge Wasser in jedem Behälter
]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

# Behälter A
ax1.set_title('Behälter A')
ax1.set_xlim(0, 10)
ax1.set_ylim(0, 10)
ax1.set_aspect('equal')
ax1.add_patch(plt.Rectangle((2, 2), 6, 6, fill=False))
ax1.add_patch(plt.Rectangle((2, 2), 6, 3, color='blue'))
ax1.text(5, 1, 'Wasser', ha='center')

# Behälter B
ax2.set_title('Behälter B')
ax2.set_xlim(0, 10)
ax2.set_ylim(0, 10)
ax2.set_aspect('equal')
ax2.add_patch(plt.Rectangle((2, 2), 6, 6, fill=False))
ax2.add_patch(plt.Rectangle((2, 2), 6, 4, color='blue'))
ax2.text(5, 1, 'Wasser', ha='center')

# Behälter C
ax3.set_title('Behälter C')
ax3.set_xlim(0, 10)
ax3.set_ylim(0, 10)
ax3.set_aspect('equal')
ax3.add_patch(plt.Rectangle((2, 2), 6, 6, fill=False))
ax3.add_patch(plt.Rectangle((2, 2), 6, 5, color='blue'))
ax3.text(5, 1, 'Wasser', ha='center')

plt.tight_layout()
plt.show()
```,
width: 480pt),
)
]
]
#only("1")[#voiceover("Wir haben drei Behälter, A, B und C, die jeweils eine unterschiedliche Form haben, aber die gleiche Menge Wasser enthalten.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gesamtkraft auf den Boden]
#v(40pt)
#only("1-")[Gesamtkraft = Druck × Fläche]
#v(20pt)
#only("2-")[Druck = $rho × g × h$]
#v(20pt)
#only("3-")[- $rho$ = Dichte des Wassers]
#only("3-")[- $g$ = Beschleunigung aufgrund der Schwerkraft]
#only("3-")[- $h$ = Höhe der Wassersäule]
#v(20pt)
#only("4-")[Fläche = Fläche des Behälterbodens]

#only("1")[#voiceover("Die Gesamtkraft auf den Boden eines Behälters ist gleich dem Druck multipliziert mit der Fläche des Bodens.")]
#only("2")[#voiceover("Der Druck ergibt sich aus dem Produkt der Dichte des Wassers, der Beschleunigung aufgrund der Schwerkraft und der Höhe der Wassersäule.")]
#only("3")[#voiceover("Hier steht rho für die Dichte des Wassers, g für die Beschleunigung aufgrund der Schwerkraft und h für die Höhe der Wassersäule.")]
#only("4")[#voiceover("Die Fläche in der Gleichung bezieht sich auf die Fläche des Behälterbodens.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vergleich der Behälter]
#v(40pt)
#only("1-")[- Gleiches $rho$ und $g$ für alle Behälter]
#v(20pt)
#only("2-")[- Unterschiedliches $h$ und Fläche für jeden Behälter]
#v(20pt)
#only("3-")[- Behälter C hat das größte $h$]
#v(20pt)
#only("4-")[- Behälter C hat auch die größte Fläche]
#v(20pt)
#only("5-")[Daher hat Behälter C die größte Gesamtkraft auf den Boden 💪]

#only("1")[#voiceover("Beim Vergleich der Behälter stellen wir fest, dass die Dichte des Wassers und die Beschleunigung aufgrund der Schwerkraft für alle gleich sind.")]
#only("2")[#voiceover("Jedoch unterscheiden sich die Höhe der Wassersäule und die Fläche des Bodens bei jedem Behälter.")]
#only("3")[#voiceover("Aus den gegebenen Informationen sehen wir, dass Behälter C die größte Höhe der Wassersäule hat.")]
#only("4")[#voiceover("Zusätzlich hat Behälter C auch die größte Bodenfläche.")]
#only("5")[#voiceover("Da sowohl die Höhe als auch die Fläche bei Behälter C am größten sind, wird die Gesamtkraft auf seinen Boden am größten sein.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Die Gesamtkraft hängt von Druck und Fläche ab 📏]
#v(20pt)
#only("2-")[- Der Druck hängt von der Wasserhöhe ab 📈]
#v(20pt)
#only("3-")[- Behälter C hat die größte Wasserhöhe und Bodenfläche 🥇]
#v(20pt)
#only("4-")[Daher erfährt Behälter C die größte Gesamtkraft auf seinen Boden 🎉]

#only("1")[#voiceover("Zusammenfassend hängt die Gesamtkraft auf den Boden eines Behälters vom Druck und der Fläche des Bodens ab.")]
#only("2")[#voiceover("Der Druck wiederum hängt von der Höhe der Wassersäule ab.")]
#only("3")[#voiceover("Unter den gegebenen Behältern hat Behälter C sowohl die größte Wasserhöhe als auch die größte Bodenfläche.")]
#only("4")[#voiceover("Folglich erfährt Behälter C die größte Gesamtkraft auf seinen Boden. Gut gemacht, dass du die richtige Antwort ausgewählt hast!")]
]