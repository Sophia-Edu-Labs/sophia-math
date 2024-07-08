#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Flächeninhalt eines Kreises]
#v(40pt)

#only("1-")[Welche der folgenden Anwendungen ist eine Anwendung von Potenzfunktionen?]
#v(20pt)
#only("-1")[a) Projektilbewegung]#only("2-")[#text(fill:red)[a) Projektilbewegung]]
#v(10pt)
#only("-2")[b) Bevölkerungswachstum]#only("3-")[#text(fill:red)[b) Bevölkerungswachstum]]
#v(10pt)
#only("-3")[c) Temperaturumrechnung]#only("4-")[#text(fill:red)[c) Temperaturumrechnung]]
#v(10pt)
#only("-4")[d) Flächeninhalt eines Kreises]#only("5-")[#text(fill:green)[d) Flächeninhalt eines Kreises]]

#only("1")[#voiceover("Großartig! Du hast richtig erkannt, dass der Flächeninhalt eines Kreises eine Anwendung von Potenzfunktionen ist. Lass uns erkunden, warum das so ist und warum die anderen Optionen falsch sind.")]
#only("2")[#voiceover("a) Projektilbewegung ist falsch. Obwohl sie quadratische Funktionen beinhaltet, wird sie normalerweise nicht als Potenzfunktion klassifiziert.")]
#only("3")[#voiceover("b) Bevölkerungswachstum ist ebenfalls falsch. Es beinhaltet normalerweise exponentielle Funktionen, nicht Potenzfunktionen.")]
#only("4")[#voiceover("c) Temperaturumrechnung ist auch falsch. Sie beinhaltet typischerweise lineare Funktionen, nicht Potenzfunktionen.")]
#only("5")[#voiceover("d) Flächeninhalt eines Kreises ist korrekt! Dies ist tatsächlich eine Anwendung von Potenzfunktionen. Lass uns tiefer darauf eingehen, warum.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Flächeninhalt eines Kreises: Eine Potenzfunktion]
#v(40pt)

#only("1-")[Flächeninhalt eines Kreises: $A = pi r^2$]
#v(20pt)
#only("2-")[- $r$ ist der Radius]
#only("3-")[- $r^2$ ist eine Potenzfunktion]
#only("4-")[- $pi$ ist eine Konstante]

#only("1")[#voiceover("Die Formel für den Flächeninhalt eines Kreises ist A gleich pi r Quadrat.")]
#only("2")[#voiceover("Hier repräsentiert r den Radius des Kreises.")]
#only("3")[#voiceover("Der Term r Quadrat ist eine Potenzfunktion. Genauer gesagt, es ist eine quadratische Funktion, die eine Art von Potenzfunktion ist.")]
#only("4")[#voiceover("Pi ist eine Konstante in dieser Formel. Das Vorhandensein dieser Konstante ändert nichts daran, dass der Kern dieser Formel eine Potenzfunktion ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Potenzfunktion]
#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

r = np.linspace(0, 5, 100)
A = np.pi * r**2

plt.figure(figsize=(10, 6))
plt.plot(r, A, 'b-', linewidth=2)
plt.title('Flächeninhalt eines Kreises als Funktion des Radius')
plt.xlabel('Radius (r)')
plt.ylabel('Flächeninhalt (A)')
plt.grid(True)
plt.annotate('A = πr²', xy=(3, 20), xytext=(3.5, 30),
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Lass uns visualisieren, wie sich der Flächeninhalt eines Kreises mit zunehmendem Radius verändert. Dieses Diagramm zeigt die Beziehung zwischen dem Radius auf der x-Achse und dem Flächeninhalt auf der y-Achse.")]
#only("2")[#voiceover("Beachte, dass die Kurve keine gerade Linie ist. Sie ist gekrümmt und speziell eine Parabel. Diese Form ist charakteristisch für quadratische Funktionen, die eine Art von Potenzfunktion sind.")]
#only("3")[#voiceover("Mit zunehmendem Radius nimmt der Flächeninhalt viel schneller zu. Dies liegt daran, dass der Flächeninhalt proportional zum Quadrat des Radius ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum es eine Potenzfunktion ist]
#v(40pt)

#only("1-")[Potenzfunktion: $f(x) = a x^n$]
#v(20pt)
#only("2-")[Für den Flächeninhalt eines Kreises: $A = pi r^2$]
#v(20pt)
#only("3-")[- $a = pi$ (Konstante)]
#only("4-")[- $x = r$ (Variable)]
#only("5-")[- $n = 2$ (Potenz)]

#only("1")[#voiceover("Eine Potenzfunktion wird allgemein definiert als f von x gleich a mal x hoch n, wobei a und n Konstanten sind und x die Variable ist.")]
#only("2")[#voiceover("Im Fall des Flächeninhalts eines Kreises haben wir A gleich pi r Quadrat.")]
#only("3")[#voiceover("Hier fungiert pi als unsere Konstante a.")]
#only("4")[#voiceover("Der Radius r ist unsere Variable, äquivalent zu x in der allgemeinen Form.")]
#only("5")[#voiceover("Und die Potenz, n, ist 2. Dies macht es zu einer quadratischen Funktion, die eine spezifische Art von Potenzfunktion ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)

#only("1-")[- Der Flächeninhalt eines Kreises ist eine Potenzfunktion 🔍]
#only("2-")[- Es ist speziell eine quadratische Funktion 📈]
#only("3-")[- Das Verständnis davon hilft bei der Analyse von kreisförmigen Objekten 🌍]
#only("4-")[- Potenzfunktionen sind in vielen Bereichen der Mathematik und Wissenschaft von entscheidender Bedeutung! 🧮🔬]

#only("1")[#voiceover("Abschließend lässt sich sagen, dass der Flächeninhalt eines Kreises tatsächlich eine Anwendung von Potenzfunktionen ist.")]
#only("2")[#voiceover("Genauer gesagt, es ist eine quadratische Funktion, bei der der Flächeninhalt mit dem Quadrat des Radius zunimmt.")]
#only("3")[#voiceover("Das Verständnis dieser Beziehung ist entscheidend, wenn man kreisförmige Objekte oder Phänomene in der realen Welt analysiert.")]
#only("4")[#voiceover("Potenzfunktionen wie diese sind grundlegend in vielen Bereichen der Mathematik und Wissenschaft. Großartig, dass Du diese wichtige Anwendung erkannt hast!")]
]