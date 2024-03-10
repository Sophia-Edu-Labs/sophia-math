#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Wahrscheinlichkeit]
#v(40pt)
#only("1-")[- Maß für die Möglichkeit, dass ein Ereignis eintritt]
#v(20pt)
#only("2-")[- Werte zwischen 0 (unmöglich) und 1 (sicher)]
#v(20pt)
#only("3-")[- Beispiel: Wahrscheinlichkeit, eine 6 zu würfeln = 1/6]
#only("1")[
#voiceover("Wahrscheinlichkeit ist ein Maß dafür, wie sehr wir es erwarten können, dass ein bestimmtes Ereignis eintritt.")
]
#only("2")[
#voiceover("Wahrscheinlichkeiten werden als Werte zwischen 0 und 1 angegeben. 0 bedeutet, das Ereignis ist unmöglich, 1 bedeutet, es tritt sicher ein.")
]
#only("3")[
#voiceover("Ein Beispiel: Die Wahrscheinlichkeit, mit einem fairen Würfel eine 6 zu würfeln, beträgt ein sechstel, denn eine von sechs möglichen Augenzahlen ist eine 6.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Laplace-Formel]
#v(40pt)
#only("1-")[$ P(E) = ("günstige Ergebnisse" ✔)/("mögliche Ergebnisse" 📊) $]
#v(20pt)
#only("2-")[- Berechnet Wahrscheinlichkeit eines Ereignisses E]
#v(20pt)
#only("3-")[- Beispiel: P("Augensumme ist 7") = 6/36 = 1/6]
#only("1")[
#voiceover("Die Laplace-Formel ist eine Methode zur Berechnung von Wahrscheinlichkeiten. Sie lautet: Die Wahrscheinlichkeit eines Ereignisses E ist gleich der Anzahl der günstigen Ergebnisse geteilt durch die Anzahl der möglichen Ergebnisse.")
]
#only("2")[
#voiceover("Mit dieser Formel lässt sich die Wahrscheinlichkeit für jedes beliebige Ereignis in einem Zufallsexperiment berechnen, sofern alle Ergebnisse gleich wahrscheinlich sind.")
]
#only("3")[
#voiceover("Nehmen wir als Beispiel zweimaliges Würfeln. Die Wahrscheinlichkeit, dass die Augensumme 7 ist, beträgt 6 durch 36, also 1 sechstel. Denn es gibt 6 günstige Ergebnisse, die zur Summe 7 führen, bei insgesamt 36 möglichen Ergebnissen.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Voraussetzungen für Laplace]
#v(40pt)
#only("1-")[- Endliche Anzahl an möglichen Ergebnissen]
#v(20pt)
#only("2-")[- Alle Ergebnisse sind gleich wahrscheinlich]
#v(20pt)
#only("3-")[→ Nur dann liefert die Laplace-Formel korrekte Wahrscheinlichkeiten]
#only("1")[
#voiceover("Wichtig ist: Die Laplace-Formel funktioniert nur unter bestimmten Voraussetzungen.")
]
#only("2")[
#voiceover("Es muss eine endliche Anzahl an möglichen Ergebnissen geben und alle Ergebnisse müssen gleich wahrscheinlich sein.")
]
#only("3")[
#voiceover("Nur wenn diese Voraussetzungen erfüllt sind, liefert die Laplace-Formel korrekte Wahrscheinlichkeiten. Bei Zufallsexperimenten mit unendlich vielen oder nicht gleich wahrscheinlichen Ergebnissen darf sie nicht angewendet werden.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wahrscheinlichkeit: Maß für Möglichkeit eines Ereignisses]
#v(20pt)
#only("2-")[- Laplace-Formel: $P(E) = ✔/📊$ ]
#v(20pt)
#only("3-")[- Voraussetzung: Endlich viele, gleich wahrscheinliche Ergebnisse]
#only("1")[
#voiceover("Fassen wir zusammen: Wahrscheinlichkeit ist ein Maß dafür, wie sehr wir ein Ereignis erwarten können.")
]
#only("2")[
#voiceover("Die Wahrscheinlichkeit eines Ereignisses E lässt sich mit der Laplace-Formel berechnen als Quotient aus der Anzahl der günstigen und der Anzahl der möglichen Ergebnisse.")
]
#only("3")[
#voiceover("Voraussetzung für die Anwendbarkeit der Laplace-Formel ist, dass es endlich viele, gleich wahrscheinliche Ergebnisse gibt. Mit diesem Wissen kannst du jetzt einfache Wahrscheinlichkeiten berechnen!")
]
]