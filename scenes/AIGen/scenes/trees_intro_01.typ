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
    KK [label="Kopf-Kopf", shape=box];
    KZ [label="Kopf-Zahl", shape=box];
    ZK [label="Zahl-Kopf", shape=box];
    ZZ [label="Zahl-Zahl", shape=box];
}

    ```,
    // engine: "neato",
    width: 13cm,
  )
]

#only("1")[
#voiceover("Lass uns mit dem Zeichnen des Baumdiagramms beginnen. Wir starten mit zwei Ästen, einem für das Ziehen einer roten Kugel (mit Wahrscheinlichkeit 3/5) und einem für das Ziehen einer blauen Kugel (mit Wahrscheinlichkeit 2/5). Von jedem dieser Äste zeichnen wir dann zwei weitere Äste für den zweiten Zug, wieder mit den Wahrscheinlichkeiten 3/5 für rot und 2/5 für blau.")
]
]

// #slide()[
// #only("1-")[#text(size: 24pt, weight: "bold")[Berechnung der Wahrscheinlichkeiten]]

// #only("1-")[#align(center)[P(Zwei Rote) = P(Rot beim 1.) × P(Rot beim 2.)]]
// #only("2-")[#align(center)[= (3/5) × (3/5) = 9/25]]

// #only("1")[
// #voiceover("Um die Wahrscheinlichkeit für das Ziehen von zwei roten Kugeln zu berechnen, multiplizieren wir die Wahrscheinlichkeiten entlang des Pfades 'Rot, Rot'. Das ist die Wahrscheinlichkeit, beim ersten Zug rot zu ziehen (3/5), multipliziert mit der Wahrscheinlichkeit, beim zweiten Zug rot zu ziehen (3/5), was 9/25 ergibt.")
// ]

// #only("3-")[#align(center)[P(Eine Rote, Eine Blaue) = P(Rot, Blau) + P(Blau, Rot)]]
// #only("4-")[#align(center)[= (3/5) × (2/5) + (2/5) × (3/5) = 12/25]]

// #only("3")[
// #voiceover("Für eine rote und eine blaue Kugel addieren wir die Wahrscheinlichkeiten der Pfade 'Rot, Blau' und 'Blau, Rot'. Jede Pfadwahrscheinlichkeit wird berechnet, indem man die Wahrscheinlichkeiten entlang des Pfades multipliziert. Das ergibt (3/5) mal (2/5) plus (2/5) mal (3/5), was 12/25 ergibt.")
// ]

// #only("5-")[#align(center)[P(Zwei Blaue) = P(Blau beim 1.) × P(Blau beim 2.)]]
// #only("6-")[#align(center)[= (2/5) × (2/5) = 4/25]]

// #only("5")[
// #voiceover("Für zwei blaue Kugeln multiplizieren wir entlang des Pfades 'Blau, Blau'. Das ist (2/5) mal (2/5), was 4/25 ergibt.")
// ]
// ]

// #slide()[
// #only("1")[
// #voiceover("Zusammenfassend bieten Baumdiagramme eine visuelle Möglichkeit, Wahrscheinlichkeiten für mehrstufige Experimente zu organisieren und zu berechnen. Jeder Pfad durch den Baum repräsentiert ein mögliches Ergebnis, und die Wahrscheinlichkeit jedes Ergebnisses ist das Produkt der Wahrscheinlichkeiten entlang seines Pfades.")
// ]
// #text(size: 24pt, weight: "bold")[Wichtige Erkenntnisse]
// #v(40pt)
// #only("2-")[- Baumdiagramme stellen mehrstufige Experimente visuell dar]
// #only("3-")[- Jeder Ast repräsentiert ein Ereignis mit seiner Wahrscheinlichkeit]
// #only("4-")[- Pfadwahrscheinlichkeiten werden durch Multiplikation der Wahrscheinlichkeiten entlang des Pfades berechnet]
// #only("5-")[- Ergebniswahrscheinlichkeiten können vom Baumdiagramm abgelesen werden]
// ]