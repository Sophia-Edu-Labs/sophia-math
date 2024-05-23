#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung 1]
#v(40pt)
Die Koordinaten eines Vektors bezüglich einer Basis sind die \_\_\_\_\_ der Linearkombination der Basisvektoren, die dem Vektor entspricht.
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Vektoren]#only("2-")[#text(fill:red)[a) Vektoren]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) Koeffizienten]#only("3-")[#text(fill:green)[b) Koeffizienten]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Dimensionen]#only("4-")[#text(fill:red)[c) Dimensionen]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Spannweite]#only("5-")[#text(fill:red)[d) Spannweite]]
#only("1")[#voiceover("Großartige Arbeit! Das ist die richtige Antwort.")]
#only("2")[#voiceover("Option a) Vektoren ist falsch. Die Koordinaten sind nicht die Vektoren selbst, sondern die Skalare, die die Basisvektoren multiplizieren.")]
#only("3")[#voiceover("Option b) Koeffizienten ist die richtige Antwort. Die Koordinaten sind tatsächlich die Koeffizienten der Linearkombination der Basisvektoren, die dem gegebenen Vektor entspricht.")]
#only("4")[#voiceover("Option c) Dimensionen ist falsch. Dimensionen beziehen sich auf die Größe des Vektorraums, nicht auf die Koordinaten eines bestimmten Vektors.")]
#only("5")[#voiceover("Und Option d) Spannweite ist ebenfalls falsch. Spannweite bezieht sich auf die Menge aller Linearkombinationen einer Menge von Vektoren, nicht auf die Koordinaten eines bestimmten Vektors.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[Lass uns das mit einem Beispiel verstehen 🧮]
#v(20pt)
#only("2-")[Betrachte den Vektor $v=mat(3;4)$ und die Standardbasis $mat(1;0), mat(0;1)$ für $RR^2$.]
#v(20pt)
#only("3-")[Wir können $v$ als Linearkombination der Basisvektoren schreiben:]
#v(20pt)
#only("4-")[$v = 3 mat(1;0) + 4 mat(0;1)$]
#v(20pt)
#only("5-")[Die Koeffizienten in dieser Linearkombination, $3$ und $4$, sind die Koordinaten von $v$ bezüglich der Standardbasis 📐]

#only("1")[#voiceover("Lass uns dieses Konzept mit einem Beispiel verstehen.")]
#only("2")[#voiceover("Betrachte den Vektor v gleich dem Vektor 3, 4 und die Standardbasisvektoren 1, 0 und 0, 1 für R².")]
#only("3")[#voiceover("Wir können v als Linearkombination dieser Basisvektoren schreiben.")]
#only("4")[#voiceover("v entspricht 3 mal dem Vektor 1, 0 plus 4 mal dem Vektor 0, 1.")]
#only("5")[#voiceover("Die Koeffizienten in dieser Linearkombination, 3 und 4, sind die Koordinaten von v bezüglich der Standardbasis.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

v = np.array([3, 4])
e1 = np.array([1, 0])
e2 = np.array([0, 1])

plt.figure(figsize=(6, 6))
plt.quiver(0, 0, e1[0], e1[1], angles='xy', scale_units='xy', scale=1, color='r', label='e1')
plt.quiver(0, 0, e2[0], e2[1], angles='xy', scale_units='xy', scale=1, color='g', label='e2')
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='v')

plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-1, 5)
plt.ylim(-1, 5)
plt.legend()
plt.title('Vektorkoordinaten')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Hier ist eine Visualisierung des Vektors v und der Standardbasisvektoren e1 und e2 in der xy-Ebene.")]
#only("2")[#voiceover("Der rote Vektor ist e1, der grüne Vektor ist e2 und der blaue Vektor ist v.")]
#only("3")[#voiceover("Wir können sehen, dass v 3 Einheiten in Richtung von e1 und 4 Einheiten in Richtung von e2 ist.")]
#only("4")[#voiceover("Diese Skalare, 3 und 4, sind die Koordinaten von v bezüglich der Basis e1 und e2.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Koordinaten sind die Koeffizienten in der Linearkombination der Basisvektoren 🎯]
#v(20pt)
#only("2-")[- Sie geben an, wie viel von jedem Basisvektor benötigt wird, um den gegebenen Vektor zu erreichen 📏]
#v(20pt)
#only("3-")[- Koordinaten hängen von der Wahl der Basis ab 🗳️]
#v(20pt)
#only("4-")[- Sie bieten eine eindeutige Darstellung eines Vektors bezüglich einer Basis 🪪]

#only("1")[#voiceover("Zusammenfassend sind die Koordinaten eines Vektors bezüglich einer Basis die Koeffizienten in der Linearkombination der Basisvektoren, die dem gegebenen Vektor entspricht.")]
#only("2")[#voiceover("Sie geben an, wie viel von jedem Basisvektor benötigt wird, um den gegebenen Vektor zu erreichen.")]
#only("3")[#voiceover("Koordinaten hängen von der Wahl der Basis ab. Eine andere Basis ergibt andere Koordinaten für denselben Vektor.")]
#only("4")[#voiceover("Koordinaten bieten eine eindeutige Darstellung eines Vektors bezüglich einer gegebenen Basis.")]
]