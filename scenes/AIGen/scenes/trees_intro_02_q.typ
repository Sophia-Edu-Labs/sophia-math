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
#only("1-4")[- $4$ rote Kugeln, $6$ blaue Kugeln]
#only("2-4")[- $2$ mal Ziehen]
#only("3-4")[- Zurücklegen nach Zug]
#v(20pt)
#only("1")[
#voiceover("Schauen wir uns noch ein Beispiel an. Stellen wir uns vor, wir haben eine Urne mit 4 roten und 6 blauen Kugeln.")
]
#only("2")[
#voiceover("Wir ziehen zweimal eine Kugel,")
]
#only("3")[
#voiceover("wobei wir die erste Kugel vor dem zweiten Zug wieder zurücklegen.")
]

#only("4-")[
#raw-render(
```
digraph Kugelziehen {
    Start -> Rot [label="4/10"];
    Start -> Blau [label="6/10"]; 
    Rot -> RR [label="4/10"];
    Rot -> RB [label="6/10"];
    Blau -> BR [label="4/10"];
    Blau -> BB [label="6/10"];
    Start [shape=ellipse];
    Rot [shape=ellipse];
    Blau [shape=ellipse];
    RR [label="Rot
Rot", shape=box];
    RB [label="Rot
Blau", shape=box];
    BR [label="Blau
Rot", shape=box];
    BB [label="Blau
Blau", shape=box];
}
```,
// engine: "neato", 
width: 13cm,
  )
]
#only("4")[
  #voiceover("Hier siehst du das entsprechende Baumdiagramm. Im ersten Zug ist die Wahrscheinlichkeit, eine rote Kugel zu ziehen, 4 zehntel, und die Wahrscheinlichkeit für eine blaue Kugel 6 zehntel. Da wir die erste Kugel zurücklegen, sind die Wahrscheinlichkeiten im zweiten Zug genauso.")
]
#only("5")[
  #voiceover("Nun bist du an der Reihe: Berechne die Wahrscheinlichkeit, für folgende Ergebnisse:") 
]
#v(40pt)
#only("5-")[
  Berechne Wahrscheinlichkeit für
]
#v(20pt)
#only("6-")[
  - ...beide Kugeln rot
]
#only("7-")[
  - ... $1.$ Kugel rot und $2.$ Kugel blau
]

#only("6")[
  #voiceover("Erstes Ergebnis: Beide Kugeln sind rot.")
]
#only("7")[  
  #voiceover("Und zweites Ergebnis: Die erste Kugel ist rot und die zweite Kugel ist blau.")
]
]


#questionDef(
  questionText: "Was ist die Wahrscheinlichkeit, dass beide Kugeln rot sind? Und dass die 1. rot, und die 2. blau ist?",
  // use latex!
  answerOptions: ("$RR:0.16, RB:0.24$", "$RR:0, RB:0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$RR:\key{a}, RB:\key{b}$"),
      answerOptionsTypes: (
        "a": "number",
        "b": "number"
      )
  ),
)
