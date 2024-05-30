#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb und Volumen]
#v(40pt)
#only("1-")[Von drei unterschiedlich großen Objekten mit derselben Masse schwimmt das mit dem mittleren Volumen. Welches andere Objekt schwimmt auch?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) das kleine]#only("2-")[#text(fill:red)[a) das kleine]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) das große]#only("3-")[#text(fill:green)[b) das große]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) beide]#only("4-")[#text(fill:red)[c) beide]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) keines]#only("5-")[#text(fill:red)[d) keines]]

#only("1")[#voiceover("Großartig! Du hast die richtige Antwort ausgewählt. Lass uns die Lösung Schritt für Schritt durchgehen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schlüsselkonzepte]
#v(40pt)
#only("1-")[- Auftrieb: Aufwärtskraft, die von einer Flüssigkeit auf ein Objekt ausgeübt wird 🌊]
#v(20pt)
#only("2-")[- Archimedes' Prinzip: Auftriebskraft entspricht dem Gewicht der verdrängten Flüssigkeit 🎈]
#v(20pt)
#only("3-")[- Für Objekte mit derselben Masse gilt: größeres Volumen $arrow$ mehr verdrängte Flüssigkeit $arrow$ größerer Auftrieb 📈]

#only("1")[#voiceover("Erinnern wir uns zunächst daran, dass Auftrieb die Aufwärtskraft ist, die von einer Flüssigkeit auf ein eingetauchtes Objekt ausgeübt wird.")]
#only("2")[#voiceover("Das Archimedische Prinzip besagt, dass die Auftriebskraft auf ein Objekt gleich dem Gewicht der von ihm verdrängten Flüssigkeit ist.")]
#only("3")[#voiceover("Für Objekte mit derselben Masse bedeutet ein größeres Volumen, dass mehr Flüssigkeit verdrängt wird, was zu einer größeren Auftriebskraft führt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[- Gegeben: Drei Objekte mit derselben Masse, aber unterschiedlichen Volumen]
#v(20pt)
#only("2-")[- Das Objekt mit mittlerem Volumen schwimmt $arrow$ seine Auftriebskraft $>=$ sein Gewicht]
#v(20pt)
#only("3-")[- Das Objekt mit großem Volumen verdrängt mehr Flüssigkeit als das mit mittlerem Volumen]
#v(20pt)
#only("4-")[- Daher erfährt das Objekt mit großem Volumen eine noch größere Auftriebskraft und schwimmt ebenfalls 🚢]

#only("1")[#voiceover("In diesem Problem haben wir drei Objekte mit derselben Masse, aber unterschiedlichen Volumen.")]
#only("2")[#voiceover("Wir wissen, dass das Objekt mit mittlerem Volumen schwimmt, was bedeutet, dass seine Auftriebskraft größer oder gleich seinem Gewicht ist.")]
#only("3")[#voiceover("Das Objekt mit großem Volumen wird mehr Flüssigkeit verdrängen als das mit mittlerem Volumen, da es ein größeres Volumen hat.")]
#only("4")[#voiceover("Daher wird das Objekt mit großem Volumen eine noch größere Auftriebskraft erfahren als das mit mittlerem Volumen und ebenfalls schwimmen.")]
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

volumes = ['Klein', 'Mittel', 'Groß']
buoyancy = [0.8, 1.2, 1.6]

plt.figure(figsize=(8, 6))
plt.bar(volumes, buoyancy, color=['red', 'green', 'green'], alpha=0.7)
plt.axhline(1, color='black', linestyle='--', label='Gewicht')
plt.ylim(0, 2)
plt.xlabel('Objektvolumen')
plt.ylabel('Auftriebskraft (relativ zum Gewicht)')
plt.title('Auftrieb vs Volumen (gleiche Masse)')
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Dieses Diagramm zeigt die Auftriebskraft relativ zum Gewicht des Objekts für jedes Volumen.]
#v(20pt)
#only("2-")[Die gestrichelte Linie stellt das Gewicht dar. Wenn die Auftriebskraft $>=$ Gewicht ist, schwimmt das Objekt.]
#v(20pt)
#only("3-")[Sowohl das mittlere als auch das große Objekt haben eine Auftriebskraft $>$ Gewicht, daher schwimmen sie. 🛥️]

#only("1")[#voiceover("Dieses Diagramm visualisiert die Auftriebskraft relativ zum Gewicht des Objekts für jedes Volumen.")]
#only("2")[#voiceover("Die gestrichelte Linie stellt das Gewicht dar. Wenn die Auftriebskraft größer oder gleich dem Gewicht ist, wird das Objekt schwimmen.")]
#only("3")[#voiceover("Wir können sehen, dass sowohl das mittlere als auch das große Objekt eine Auftriebskraft haben, die größer als ihr Gewicht ist, daher werden sie beide schwimmen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- Für Objekte mit derselben Masse gilt: größeres Volumen führt zu größerem Auftrieb]
#v(20pt)
#only("2-")[- Wenn das Objekt mit mittlerem Volumen schwimmt, wird auch das Objekt mit großem Volumen schwimmen 🏊]
#v(20pt)
#only("3-")[- Das Objekt mit kleinem Volumen hat möglicherweise nicht genug Auftrieb, um zu schwimmen 🪨]

#only("1")[#voiceover("Abschließend lässt sich sagen, dass für Objekte mit derselben Masse ein größeres Volumen zu größerem Auftrieb führt, da mehr Flüssigkeit verdrängt wird.")]
#only("2")[#voiceover("Wenn das Objekt mit mittlerem Volumen schwimmt, wird auch das Objekt mit großem Volumen schwimmen, da es eine noch größere Auftriebskraft erfährt.")]
#only("3")[#voiceover("Das Objekt mit kleinem Volumen hingegen hat möglicherweise nicht genug Auftrieb, um sein Gewicht zu überwinden und zu schwimmen.")]
]