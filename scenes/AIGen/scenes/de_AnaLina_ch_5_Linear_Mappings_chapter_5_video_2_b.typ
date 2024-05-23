#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimensionsformel]
#v(40pt)
Wobei hilft uns die Dimensionsformel zu verstehen?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Der Kern und das Bild einer linearen Abbildung]#only("2-")[#text(fill:green)[a) Der Kern und das Bild einer linearen Abbildung]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Der Definitionsbereich und der Zielbereich einer linearen Abbildung]#only("3-")[#text(fill:red)[b) Der Definitionsbereich und der Zielbereich einer linearen Abbildung]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Die Vektoren und Skalare in einem Vektorraum]#only("4-")[#text(fill:red)[c) Die Vektoren und Skalare in einem Vektorraum]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Die Basis und Dimension eines Vektorraums]#only("5-")[#text(fill:red)[d) Die Basis und Dimension eines Vektorraums]]
#only("1")[#voiceover("Das ist nicht ganz richtig. Schauen wir uns die richtige Lösung an.")]
#only("2")[#voiceover("Die Dimensionsformel hilft uns tatsächlich, die Beziehung zwischen dem Kern und dem Bild einer linearen Abbildung zu verstehen.")]
#only("3")[#voiceover("Option b ist falsch. Obwohl der Definitionsbereich und der Zielbereich wichtige Aspekte einer linearen Abbildung sind, bezieht sich die Dimensionsformel nicht direkt darauf.")]
#only("4")[#voiceover("Option c ist ebenfalls falsch. Die Dimensionsformel handelt nicht von der Beziehung zwischen Vektoren und Skalaren in einem Vektorraum.")]
#only("5")[#voiceover("Und Option d, obwohl sie sich auf Dimensionen bezieht, ist nicht das Hauptthema der Dimensionsformel. Die Formel bezieht sich auf die Dimensionen des Kerns und des Bildes, nicht auf die Basis und die Gesamtdimension des Vektorraums.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Die Dimensionsformel lautet:]
#v(20pt)
#only("2-")[$"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]
#v(20pt)
#only("3-")[wobei:]
#v(10pt)
#only("4-")[- $V$: Definitionsbereich der linearen Abbildung 🏠]
#only("5-")[- $T$: lineare Abbildung 🗺️]
#only("6-")[- $"ker"(T)$: Kern (Nullraum) von $T$ 🌽]

#only("1")[#voiceover("Lassen Sie uns die Dimensionsformel Schritt für Schritt durchgehen.")]
#only("2")[#voiceover("Die Dimensionsformel besagt, dass die Dimension von V gleich der Dimension des Kerns von T plus der Dimension des Bildes von T ist.")]
#only("3")[#voiceover("In dieser Formel:")]
#only("4")[#voiceover("V steht für den Definitionsbereich der linearen Abbildung, den Raum, von dem die Abbildung ausgeht.")]
#only("5")[#voiceover("T ist die lineare Abbildung selbst, eine Funktion, die die Struktur des Vektorraums erhält.")]
#only("6")[#voiceover("Der Kern von T, bezeichnet als ker T, ist die Menge aller Vektoren in V, die T auf Null abbildet.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung (Fortsetzung)]
#v(40pt)
#only("1-")[- $"im"(T)$: Bild (Wertebereich) von $T$ 📷]
#v(20pt)
#only("2-")[Also, die Formel bezieht sich auf:]
#v(10pt)
#only("3-")[- Dimension des Definitionsbereichs ($"dim"(V)$) 📏]
#only("4-")[- Dimensionen des Kerns und des Bildes von $T$ 🔗]

#only("1")[#voiceover("Und das Bild von T, bezeichnet als im T, ist die Menge aller Vektoren im Zielbereich, die T abbildet.")]
#only("2")[#voiceover("Was die Formel uns sagt, ist also:")]
#only("3")[#voiceover("Die Dimension des Definitionsbereichs V...")]
#only("4")[#voiceover("...ist die Summe der Dimensionen des Kerns und des Bildes von T. Mit anderen Worten, sie bezieht sich auf die Dimensionen dieser beiden wichtigen Unterräume, die mit der linearen Abbildung verbunden sind.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

fig, ax = plt.subplots(figsize=(8, 8))

# Draw V
ax.add_patch(Rectangle((0, 0), 10, 10, fill=False, label='V (Definitionsbereich)'))

# Draw kernel
ax.add_patch(Rectangle((1, 1), 3, 3, color='blue', alpha=0.5, label='ker(T)'))

# Draw image
ax.add_patch(Rectangle((6, 6), 3, 3, color='green', alpha=0.5, label='im(T)'))

# Draw mapping arrows
ax.annotate('', xy=(2.5, 2.5), xytext=(7.5, 7.5), 
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('T', xy=(5, 5), xytext=(5, 5))

ax.set_xlim(0, 10)
ax.set_ylim(0, 10)
ax.set_aspect('equal')
ax.legend(loc='upper right')

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Hier ist eine visuelle Darstellung:]
#v(20pt)
#only("2-")[- Das blaue Quadrat stellt den Kern dar 🟦]
#only("3-")[- Das grüne Quadrat stellt das Bild dar 🟩]
#only("4-")[- Der Pfeil stellt die lineare Abbildung $T$ dar ➡️]
#only("5-")[- $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$ 🧮]

#only("1")[#voiceover("Lassen Sie uns dies visualisieren, um es noch klarer zu machen.")]
#only("2")[#voiceover("Das blaue Quadrat im Definitionsbereich V stellt den Kern von T dar. Dies sind die Vektoren, die auf Null abgebildet werden.")]
#only("3")[#voiceover("Das grüne Quadrat stellt das Bild von T dar. Hier enden die Vektoren aus dem Definitionsbereich nach der Abbildung.")]
#only("4")[#voiceover("Und der Pfeil stellt die lineare Abbildung T selbst dar, die zeigt, wie Vektoren vom Definitionsbereich in den Zielbereich transformiert werden.")]
#only("5")[#voiceover("Die Dimensionsformel sagt uns, dass die Dimension des gesamten Definitionsbereichs V gleich der Summe der Dimensionen dieser beiden Teile ist: des Kerns und des Bildes. Dies ist eine grundlegende Beziehung in der linearen Algebra.")]
]