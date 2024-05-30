#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Druck und Wasserstand]
#v(40pt)
Ein Boot fährt über einen Fisch hinweg, wodurch der Wasserstand direkt darüber sinkt. Was passiert mit dem Druck?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Von Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Er bleibt gleich.]#only("2-")[#text(fill:green)[a) Er bleibt gleich.]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Von Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Er sinkt.]#only("3-")[#text(fill:green)[b) Er sinkt.]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Von Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Er steigt.]#only("4-")[#text(fill:red)[c) Er steigt.]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Von Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Kann nicht bestimmt werden.]#only("5-")[#text(fill:red)[d) Kann nicht bestimmt werden.]]

#only("1")[#voiceover("Leider war das nicht die richtige Antwort. Lass uns sehen, warum.")]
#only("2")[#voiceover("Der Druck sinkt, wenn das Boot über den Fisch fährt. Dies liegt daran, dass der Druck in einer Flüssigkeit durch die Höhe der Flüssigkeitssäule über dem interessierenden Punkt bestimmt wird.")]
#only("3")[#voiceover("Wenn das Boot darüber fährt, verdrängt es einen Teil des Wassers, wodurch die Höhe der Wassersäule über dem Fisch effektiv reduziert wird. Diese Reduktion der Höhe der Wassersäule führt zu einem Druckabfall in der Tiefe des Fisches.")]
#only("4-5")[#voiceover("Die anderen Optionen sind falsch. Der Druck bleibt weder gleich noch steigt er, und er kann anhand der gegebenen Informationen bestimmt werden.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erklärung]
#v(40pt)
#only("1-")[- Der Druck in einer Flüssigkeit hängt von der Höhe der Flüssigkeitssäule darüber ab 📏]
#v(20pt)
#only("2-")[- Das Boot verdrängt Wasser, wenn es vorbeifährt, wodurch der Wasserstand vorübergehend sinkt 🚤]
#v(20pt)
#only("3-")[- Reduzierter Wasserstand = reduzierte Höhe der Wassersäule über dem Fisch 🐟]
#v(20pt)
#only("4-")[- Daher sinkt der Druck in der Tiefe des Fisches vorübergehend 👇]

#only("1")[#voiceover("Der Druck in einer Flüssigkeit wird durch die Höhe der Flüssigkeitssäule über dem interessierenden Punkt bestimmt. Je höher die Flüssigkeitssäule, desto größer der Druck.")]
#only("2")[#voiceover("Wenn ein Boot über den Fisch fährt, verdrängt es einen Teil des Wassers, wodurch der Wasserstand vorübergehend sinkt.")]
#only("3")[#voiceover("Diese Reduktion des Wasserstands bedeutet, dass die Höhe der Wassersäule über dem Fisch abgenommen hat.")]
#only("4")[#voiceover("Infolgedessen sinkt der Druck in der Tiefe des Fisches vorübergehend, da weniger Wasser über dem Fisch nach unten drückt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Normaler Wasserstand
x = np.linspace(0, 10, 100)
y1 = np.ones_like(x) * 5
ax1.plot(x, y1, 'b', linewidth=2, label='Wasserstand')
ax1.scatter(5, 1, s=200, c='r', marker='o', label='Fisch')
ax1.set_ylim(0, 6)
ax1.set_title('Normaler Wasserstand')
ax1.set_xlabel('Position')
ax1.set_ylabel('Tiefe')
ax1.legend()

# Gesenkter Wasserstand durch Boot
y2 = np.ones_like(x) * 5
y2[40:60] = 4  # Wasserstand senken, wo das Boot vorbeifährt
ax2.plot(x, y2, 'b', linewidth=2, label='Wasserstand')
ax2.scatter(5, 1, s=200, c='r', marker='o', label='Fisch')
ax2.set_ylim(0, 6)
ax2.set_title('Gesenkter Wasserstand (Boot vorbeifahrend)')
ax2.set_xlabel('Position')
ax2.set_ylabel('Tiefe')
ax2.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine Visualisierung, um das Konzept zu verdeutlichen. Das linke Diagramm zeigt den normalen Wasserstand mit dem Fisch in einer bestimmten Tiefe.")]
#only("2")[#voiceover("Das rechte Diagramm zeigt, was passiert, wenn ein Boot über den Fisch fährt. Beachte, wie der Wasserstand vorübergehend direkt über dem Fisch sinkt.")]
#only("3")[#voiceover("Dieser Rückgang des Wasserstands entspricht einer Verringerung der Höhe der Wassersäule über dem Fisch.")]
#only("4")[#voiceover("Und wie wir gelernt haben, führt eine Verringerung der Höhe der Wassersäule zu einem Druckabfall in dieser Tiefe.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
- Der Druck in Flüssigkeiten hängt von der Höhe der Flüssigkeitssäule ab 💧
- Vorbeifahrendes Boot senkt den Wasserstand vorübergehend 🚤👇
- Reduzierter Wasserstand = reduzierter Druck in der Tiefe des Fisches 🐟👇
#v(40pt)
#text(weight: "bold")[Wichtigste Erkenntnis: Der Druck sinkt, wenn der Wasserstand sinkt 🔑]

#only("1")[#voiceover("Zusammenfassend lässt sich sagen, dass der Druck in Flüssigkeiten durch die Höhe der Flüssigkeitssäule über dem interessierenden Punkt bestimmt wird.")]
#only("2")[#voiceover("Wenn ein Boot über einen Fisch fährt, senkt es den Wasserstand vorübergehend.")]
#only("3")[#voiceover("Diese Reduktion des Wasserstands entspricht einer Reduktion des Drucks in der Tiefe des Fisches.")]
#only("4")[#voiceover("Die wichtigste Erkenntnis ist, dass der Druck sinkt, wenn der Wasserstand sinkt. Großartige Arbeit beim Verständnis dieses Konzepts!")]
]