#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb und Tiefe]
#v(40pt)
Was passiert mit dem Auftrieb des kleinen Fisches, wenn er von 10 m auf 30 m taucht?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Er verdoppelt sich ungefähr.]#only("2-")[#text(fill:red)[a) Er verdoppelt sich ungefähr.]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Er verdreifacht sich ungefähr.]#only("3-")[#text(fill:red)[b) Er verdreifacht sich ungefähr.]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Er vervierfacht sich ungefähr.]#only("4-")[#text(fill:red)[c) Er vervierfacht sich ungefähr.]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-4")[d) Er bleibt ungefähr gleich.]#only("5-")[#text(fill:green)[d) Er bleibt ungefähr gleich.]]
#only("1")[#voiceover("Das war leider nicht korrekt. Lass uns anschauen, warum der Auftrieb des Fisches ungefähr gleich bleibt, wenn er tiefer taucht.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb]
#v(40pt)
#only("1-")[- Aufwärtskraft, die von einer Flüssigkeit auf einen Gegenstand ausgeübt wird 🌊]
#v(20pt)
#only("2-")[- Hängt vom #text(weight: "bold")[Volumen] der verdrängten Flüssigkeit ab 📏]
#v(20pt)
#only("3-")[- Archimedes' Prinzip: $"Auftriebskraft" = "Gewicht der verdrängten Flüssigkeit"$]
#only("1")[#voiceover("Auftrieb ist die Aufwärtskraft, die von einer Flüssigkeit auf einen eingetauchten Gegenstand ausgeübt wird.")]
#only("2")[#voiceover("Die Größe der Auftriebskraft hängt vom Volumen der verdrängten Flüssigkeit ab.")]
#only("3")[#voiceover("Dies ist als Archimedes' Prinzip bekannt: die Auftriebskraft ist gleich dem Gewicht der vom Gegenstand verdrängten Flüssigkeit.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb und Tiefe]
#v(40pt)
#only("1-")[- Wenn der Fisch taucht, steigt der #text(weight: "bold")[Druck] an 🌡]
#v(20pt)
#only("2-")[- Aber das #text(weight: "bold")[Volumen] des Fisches bleibt konstant 🐠]
#v(20pt)
#only("3-")[- Daher bleibt die #text(weight: "bold")[Auftriebskraft] gleich 🎈]
#only("1")[#voiceover("Wenn der Fisch von 10 Metern auf 30 Meter taucht, steigt der Druck des umgebenden Wassers an.")]
#only("2")[#voiceover("Wenn man annimmt, dass der Fisch sich nicht signifikant komprimiert, bleibt sein Volumen konstant.")]
#only("3")[#voiceover("Da das verdrängte Wasservolumen des Fisches sich nicht ändert, bleibt auch die auf den Fisch wirkende Auftriebskraft konstant.")]
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

depths = [10, 20, 30]
buoyancy = [1, 1, 1]  

plt.figure(figsize=(8, 6))
plt.plot(depths, buoyancy, 'bo-')
plt.xlabel('Tiefe (m)')
plt.ylabel('Relativer Auftrieb')
plt.title('Auftrieb vs Tiefe')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Hier ist ein Diagramm, das den relativen Auftrieb des Fisches in verschiedenen Tiefen zeigt. Wie Du sehen kannst, bleibt der Auftrieb bei 1, unabhängig von der Tiefe.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Auftrieb hängt vom Volumen der verdrängten Flüssigkeit ab 🌊]
#v(20pt)
#only("2-")[- Das Volumen des Fisches bleibt mit der Tiefe konstant 🐠]
#v(20pt)
#only("3-")[- Daher bleibt der Auftrieb unverändert 🎈]
#only("1")[#voiceover("Zusammenfassend hängt der Auftrieb vom Volumen der vom Gegenstand verdrängten Flüssigkeit ab.")]
#only("2")[#voiceover("Wenn der Fisch taucht, bleibt sein Volumen konstant, vorausgesetzt, es gibt keine signifikante Kompression.")]
#only("3")[#voiceover("Daher bleibt die auf den Fisch wirkende Auftriebskraft ungefähr gleich, unabhängig von der Tiefe. Gute Arbeit beim Verstehen dieses Konzepts!")]
]