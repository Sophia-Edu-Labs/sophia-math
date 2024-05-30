#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb und Tiefe]
#v(40pt)
#only("1-")[Der kleine Fisch taucht von einer Tiefe von 10 m auf eine Tiefe von 30 m. Was passiert mit seinem Auftrieb?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-1")[a) Er verdoppelt sich ungefähr.]#only("2-")[#text(fill:red)[a) Er verdoppelt sich ungefähr.]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-2")[b) Er verdreifacht sich ungefähr.]#only("3-")[#text(fill:red)[b) Er verdreifacht sich ungefähr.]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-3")[c) Er vervierfacht sich ungefähr.]#only("4-")[#text(fill:red)[c) Er vervierfacht sich ungefähr.]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie grün, weil sie richtig ist.
#only("-4")[d) Er bleibt etwa gleich.]#only("5-")[#text(fill:green)[d) Er bleibt etwa gleich.]]
#only("1")[#voiceover("Leider ist das nicht korrekt. Hier ist das Video zur Erklärung.")]
#only("2")[#voiceover("Option a) ist falsch. Der Auftrieb verdoppelt sich nicht, wenn der Fisch von 10 m auf 30 m taucht.")]
#only("3")[#voiceover("Option b) ist ebenfalls falsch. Der Auftrieb verdreifacht sich in diesem Szenario auch nicht.")]
#only("4")[#voiceover("Option c) ist auch falsch. Der Auftrieb vervierfacht sich nicht, wenn der Fisch tiefer taucht.")]
#only("5")[#voiceover("Die richtige Antwort ist d) Er bleibt etwa gleich. Lass uns im nächsten Slide sehen, warum das so ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erklärung]
#v(40pt)
#only("1-")[Der Auftrieb hängt ab von:]
#v(20pt)
#only("2-")[1. 💧 Verdrängtes Wasservolumen]
#v(10pt)
#only("3-")[2. 🐟 Volumen des Objekts (Fisch)]
#v(40pt)
#only("4-")[Wenn der Fisch tiefer taucht, bleibt sein Volumen konstant. 📏]
#v(20pt)
#only("5-")[Daher bleibt auch das verdrängte Wasservolumen gleich. 🌊]
#v(20pt)
#only("6-")[⇒ Der Auftrieb wird durch Tiefenänderungen nicht beeinflusst. 🎈]
#only("1")[#voiceover("Der Auftrieb hängt von zwei Faktoren ab:")]
#only("2")[#voiceover("Erstens, vom Volumen des verdrängten Wassers,")]
#only("3")[#voiceover("und zweitens, vom Volumen des Objekts selbst, in diesem Fall des Fisches.")]
#only("4")[#voiceover("Wenn der Fisch von 10 Metern auf 30 Meter taucht, ändert sich sein Volumen nicht.")]
#only("5")[#voiceover("Folglich bleibt auch das verdrängte Wasservolumen des Fisches konstant.")]
#only("6")[#voiceover("Das bedeutet, dass der Auftrieb, der auf den Fisch wirkt, durch die Tiefenänderung nicht beeinflusst wird.")]
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

depths = [10, 30]
buoyancy = [1, 1]

plt.figure(figsize=(8, 6))
plt.plot(depths, buoyancy, marker='o', linestyle='-', color='blue', label='Auftrieb')
plt.xlabel('Tiefe (m)')
plt.ylabel('Relativer Auftrieb')
plt.title('Auftrieb vs Tiefe')
plt.legend()
plt.grid(True)
plt.annotate('10 m', (depths[0], buoyancy[0]), textcoords="offset points", xytext=(0,10), ha='center')
plt.annotate('30 m', (depths[1], buoyancy[1]), textcoords="offset points", xytext=(0,10), ha='center')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Dieses Diagramm zeigt, dass der Auftrieb bei zunehmender Tiefe konstant bleibt. 📈]
#only("1")[#voiceover("Dieses Diagramm zeigt, dass der Auftrieb konstant bleibt, wenn der Fisch von 10 Metern auf 30 Meter Tiefe taucht.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Der Auftrieb hängt vom verdrängten Wasservolumen und vom Volumen des Objekts ab 🌊🐟]
#v(20pt)
#only("2-")[- Wenn das Volumen des Objekts konstant bleibt, ändert sich der Auftrieb nicht mit der Tiefe 📏🎈]
#v(20pt)
#only("3-")[- Für den tauchenden Fisch bleibt der Auftrieb von 10 m bis 30 m etwa gleich 🐠]
#only("1")[#voiceover("Zusammenfassend lässt sich sagen, dass der Auftrieb durch das verdrängte Wasservolumen und das Volumen des Objekts bestimmt wird.")]
#only("2")[#voiceover("Wenn das Volumen des Objekts konstant bleibt, ändert sich der Auftrieb nicht mit der Tiefe.")]
#only("3")[#voiceover("Im Fall des kleinen Fisches, der von 10 Metern auf 30 Meter taucht, bleibt sein Auftrieb etwa gleich.")]
]