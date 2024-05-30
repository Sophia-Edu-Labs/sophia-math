#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung 2]
#v(40pt)
An welchem See ist der Luftdruck am höchsten (unter der Annahme gleicher Wetterbedingungen)?
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
#only("1")[#voiceover("Ausgezeichnet! Du hast die richtige Antwort gewählt.")]
#only("2-5")[#voiceover("Lass uns sehen, warum d) Am Lago Maggiore die richtige Wahl ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Luftdruck und Höhe]
#v(40pt)
#only("1-")[- Der Luftdruck nimmt mit zunehmender Höhe ab 🏔️]
#v(20pt)
#only("2-")[- Niedrigere Höhe ⇒ höherer Luftdruck]
#v(20pt)  
#only("3-")[- Höhen der Seen:]
  - Lago Maggiore: 193 m
  - Neuenburgersee: 429 m 
  - Zürichsee: 406 m
  - Klöntalersee: 848 m
#only("1")[#voiceover("Es ist wichtig zu wissen, dass der Luftdruck mit zunehmender Höhe abnimmt.")]
#only("2")[#voiceover("Das bedeutet, dass Orte in niedrigeren Höhen höheren Luftdruck haben werden als solche in höheren Höhen.")]
#only("3")[#voiceover("Schauen wir uns die Höhen der gegebenen Seen an. Der Lago Maggiore liegt auf 193 Metern, der Neuenburgersee auf 429 Metern, der Zürichsee auf 406 Metern und der Klöntalersee auf 848 Metern.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
seen = ['Lago Maggiore', 'Neuenburgersee', 'Zürichsee', 'Klöntalersee']
höhen = [193, 429, 406, 848]
plt.figure(figsize=(8, 6))
plt.barh(seen, höhen)
plt.xlabel('Höhe (m)')
plt.title('Höhen der Seen')
plt.gca().invert_yaxis()  
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Unter den gegebenen Seen hat der #text(fill:green, weight: "bold")[Lago Maggiore mit 193 m die niedrigste Höhe].]
#v(20pt)
#only("2-")[Daher wird der #text(fill:green, weight: "bold")[Lago Maggiore den höchsten Luftdruck haben].]
#only("1")[#voiceover("Dieses Diagramm zeigt deutlich, dass unter den gegebenen Seen der Lago Maggiore mit 193 Metern die niedrigste Höhe hat.")]  
#only("2")[#voiceover("Folglich wird der Lago Maggiore den höchsten Luftdruck haben, vorausgesetzt, die Wetterbedingungen sind an allen Seen gleich.")]
]

#slide()[  
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Der Luftdruck nimmt mit zunehmender Höhe ab 📉]
#v(20pt)
#only("2-")[- Niedrigere Höhe ⇒ höherer Luftdruck 🌡️]
#v(20pt)
#only("3-")[- Der Lago Maggiore hat die niedrigste Höhe unter den gegebenen Seen 🥇]
#v(20pt)
#only("4-")[⇒ Der Lago Maggiore hat den höchsten Luftdruck 🎉]
#only("1")[#voiceover("Denke daran, dass der Luftdruck mit zunehmender Höhe abnimmt.")]
#only("2")[#voiceover("Daher werden Orte in niedrigeren Höhen höheren Luftdruck haben.")]  
#only("3")[#voiceover("Unter den Seen in der Frage hat der Lago Maggiore die niedrigste Höhe.")]
#only("4")[#voiceover("Daher wird der Lago Maggiore den höchsten Luftdruck haben. Großartige Arbeit bei der Beantwortung dieser Frage!")]
]