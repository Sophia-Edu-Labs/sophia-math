#import "../sophiatheme.typ": *
#import "@preview/diagraph:0.2.1": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Baumdiagramm]]
#v(40pt)
#only("1-")[#text(size: 20pt)[Beispiel: Zweimaliger unfairer Münzwurf]]
#v(20pt)
#only("1")[
#voiceover("Sehen wir uns nun an, was ein Baumdiagramm ist. Als Beispiel schauen wir uns einen zweimaligen unfairen Münzwurf an.")
]
#only("2-")[
#raw-render(
```
digraph Muenzwurf {
    Start -> Kopf [label="2/3"];  
    Start -> Zahl [label="1/3"];
    Start [shape=ellipse];
    Kopf [shape=ellipse];
    Zahl [shape=ellipse];
}
```, 
// engine: "neato",
width: 13cm,
  )
]
#only("2")[
  #voiceover("Stellen wir uns vor, wir haben eine Münze, die nicht fair ist. Die Wahrscheinlichkeit, dass sie Kopf zeigt, beträgt zwei Drittel, während die Wahrscheinlichkeit für Zahl nur ein Drittel ist. Wir beginnen mit einem Startknoten und zeichnen von dort aus Pfeile zu den möglichen Ergebnissen des ersten Wurfs - Kopf und Zahl. An den Pfeilen notieren wir die jeweiligen Wahrscheinlichkeiten. Also ist die Wahrscheinlichkeit für Kopf zwei Drittel, und die Wahrscheinlichkeit für Zahl ein Drittel. ... Was passiert nun, wenn wir die Münze erneut werfen?")  
]
]

#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Baumdiagramm]]
#only("1-")[
  #raw-render(
```
digraph Muenzwurf {
Start -> Kopf [label="2/3"];
Start -> Zahl [label="1/3"];
Kopf -> KK [label="2/3"];
Kopf -> KZ [label="1/3"];
Zahl -> ZK [label="2/3"];
Zahl -> ZZ [label="1/3"];
Start [shape=ellipse];
Kopf [shape=ellipse];
Zahl [shape=ellipse];
KK [label="Kopf
Kopf", shape=box];
KZ [label="Kopf
Zahl", shape=box];
ZK [label="Zahl
Kopf", shape=box];
ZZ [label="Zahl
Zahl", shape=box];
}
```,

// engine: "neato", 
width: 13cm,
  )
]
#v(40pt)
#only("1")[
  #voiceover("Dann sieht das Baumdiagramm so aus Von jedem Ergebnis des ersten Wurfs ziehen wir wieder Pfeile zu den möglichen Ergebnissen des zweiten Wurfs. Auch hier notieren wir wieder die Wahrscheinlichkeiten an den Pfeilen. Die Endergebnisse nach zwei Würfen schreiben wir in Rechtecke.")
]
#only("2-3")[
  - Wahrscheinlichkeit für jeden Pfad durch Multiplikation
]
#only("2")[
  #voiceover("Um nun die Wahrscheinlichkeit für ein bestimmtes Endergebnis zu berechnen, multiplizieren wir einfach die Wahrscheinlichkeiten entlang des entsprechenden Pfades. Zum Beispiel ist die Wahrscheinlichkeit, zweimal Kopf zu werfen, zwei Drittel mal zwei Drittel, also vier Neuntel.")
]  
#only("3")[
  - Wahrscheinlichkeit für Ereignisse durch Addition  
] 
#only("3")[
  #voiceover("Möchten wir die Wahrscheinlichkeit für ein Ereignis berechnen, das mehrere Endergebnisse umfasst, addieren wir die Wahrscheinlichkeiten der entsprechenden Pfade. So ist etwa die Wahrscheinlichkeit, mindestens einmal Kopf zu werfen, die Summe der Wahrscheinlichkeiten für die Pfade, die zu den Ergebnissen 'Kopf Kopf', 'Kopf Zahl' und 'Zahl Kopf' führen.")
]
#only("4-")[  
  - Übersichtliche Darstellung von Zufallsexperimenten
]
#only("5-")[   
  - Ermöglicht Berechnung von Wahrscheinlichkeiten
]
#only("6-")[
  - Hilfreich bei mehrstufigen Zufallsexperimenten  
]
#only("4")[
  #voiceover("Ein Baumdiagramm ist also eine übersichtliche Art, Zufallsexperimente darzustellen. ")
]
#only("5")[
  #voiceover("Es ermöglicht uns, Wahrscheinlichkeiten für verschiedene Ergebnisse und Ereignisse zu berechnen.")
]
#only("6")[
  #voiceover("Besonders hilfreich ist es bei mehrstufigen Zufallsexperimenten wie in unserem Beispiel mit den zwei Münzwürfen.")
]
]