#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Luftdruck und Höhe]
#v(40pt)
#only("1-")[An welchem See ist der Luftdruck am höchsten (unter der Annahme gleicher Wetterbedingungen)?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Am Zürichsee]#only("2-")[#text(fill:red)[a) Am Zürichsee]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Am Neuenburgersee]#only("3-")[#text(fill:red)[b) Am Neuenburgersee]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Am Klöntalersee]#only("4-")[#text(fill:red)[c) Am Klöntalersee]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-4")[d) Am Lago Maggiore]#only("5-")[#text(fill:green)[d) Am Lago Maggiore]]
#only("1")[#voiceover("Leider nicht ganz richtig. Hier ist die Erklärung:")]
#only("2")[#voiceover("Der Zürichsee ist nicht die richtige Antwort. Er liegt in einer höheren Höhe im Vergleich zum Lago Maggiore, daher wäre der Luftdruck dort niedriger.")]
#only("3")[#voiceover("Der Neuenburgersee ist auch falsch. Obwohl er niedriger liegt als der Zürichsee, ist er immer noch höher als der Lago Maggiore.")]
#only("4")[#voiceover("Der Klöntalersee liegt sogar höher als der Zürichsee und der Neuenburgersee, daher wäre der Luftdruck dort am niedrigsten unter den gegebenen Optionen.")]
#only("5")[#voiceover("Die richtige Antwort ist d) Am Lago Maggiore. Der Lago Maggiore hat die niedrigste Höhe unter den gegebenen Seen, und da der Luftdruck mit zunehmender Höhe abnimmt, wäre der Luftdruck am Lago Maggiore am höchsten.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erklärung]
#v(40pt)
#only("1-")[Hier ist der Grund, warum der Lago Maggiore den höchsten Luftdruck hat:]
#v(20pt)
#only("2-")[🏔 Der Luftdruck nimmt mit zunehmender Höhe ab]
#only("3-")[📏 Der Lago Maggiore hat die niedrigste Höhe unter den gegebenen Seen]
#only("4-")[⇒ Daher hat der Lago Maggiore den höchsten Luftdruck]

#only("1")[#voiceover("Lass uns verstehen, warum der Lago Maggiore die richtige Antwort ist.")]
#only("2")[#voiceover("Ein wichtiger Punkt, den man sich merken sollte, ist, dass der Luftdruck mit zunehmender Höhe abnimmt. Je höher man geht, desto niedriger wird der Luftdruck.")]
#only("3")[#voiceover("Unter den in der Frage genannten Seen liegt der Lago Maggiore auf der niedrigsten Höhe.")]
#only("4")[#voiceover("Folglich, da der Lago Maggiore auf der niedrigsten Höhe liegt und der Luftdruck auf niedrigeren Höhen am höchsten ist, können wir schließen, dass der Lago Maggiore den höchsten Luftdruck unter den gegebenen Optionen hat.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

seen = ['Klöntalersee', 'Zürichsee', 'Neuenburgersee', 'Lago Maggiore']
höhen = [800, 400, 200, 100]  # Ungefähre Höhen in Metern

plt.figure(figsize=(8, 6))
plt.barh(seen, höhen)
plt.xlabel('Höhe (Meter)')
plt.ylabel('Seen')
plt.title('Höhenvergleich der Seen')
plt.grid(axis='x')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Dieses Diagramm vergleicht die Höhen der Seen:]
#v(20pt)
#only("2-")[- Der Lago Maggiore hat die niedrigste Höhe 📏]
#only("3-")[- Niedrigere Höhe ⇒ Höherer Luftdruck 🌡]
#only("4-")[Also hat der Lago Maggiore den höchsten Luftdruck unter den gegebenen Seen 🏆]

#only("1")[#voiceover("Dieses Balkendiagramm bietet einen visuellen Vergleich der Höhen der verschiedenen Seen.")]
#only("2")[#voiceover("Wie wir sehen können, hat der Lago Maggiore den kürzesten Balken, was darauf hinweist, dass er auf der niedrigsten Höhe unter den Seen liegt.")]
#only("3")[#voiceover("Denke daran, dass eine niedrigere Höhe einem höheren Luftdruck entspricht.")]
#only("4")[#voiceover("Daher bestätigt dieses Diagramm unsere Schlussfolgerung, dass der Lago Maggiore den höchsten Luftdruck unter den gegebenen Optionen hat.")]
]