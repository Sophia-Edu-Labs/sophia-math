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
#only("1-4")[- $5$ rote Kugeln, $5$ blaue Kugeln]
#only("2-4")[- $2$ mal Ziehen]
#only("3-4")[- Ohne Zurücklegen]
#v(20pt)
#only("1")[
#voiceover("Nun haben wir eine Urne mit 5 roten und 5 blauen Kugeln.")
]
#only("2")[
#voiceover("Wir ziehen wieder zweimal eine Kugel,")
]
#only("3")[
#voiceover("aber diesmal legen wir die erste Kugel nicht zurück, bevor wir die zweite Kugel ziehen.")
]
#only("4-")[
#raw-render(

```
digraph Kugelziehen {
    Start -> Rot [label="5/10"];
    Start -> Blau [label="5/10"]; 
    Rot -> RR [label="4/9"];
    Rot -> RB [label="5/9"];
    Blau -> BR [label="5/9"];
    Blau -> BB [label="4/9"];
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
width: 13cm,
  )
]

#only("4")[
  #voiceover("Hier ist das entsprechende Baumdiagramm. Im ersten Zug ist die Wahrscheinlichkeit, eine rote oder eine blaue Kugel zu ziehen, jeweils 5 zehntel, da wir 5 rote und 5 blaue Kugeln haben. Aber die Wahrscheinlichkeiten im zweiten Zug hängen davon ab, was im ersten Zug passiert ist, da wir nicht zurücklegen. Wenn wir im ersten Zug eine rote Kugel gezogen haben, haben wir für den zweiten Zug nur noch 4 rote, aber immer noch 5 blaue Kugeln, insgesamt also 9 Kugeln. Deshalb ist die Wahrscheinlichkeit für Rot im zweiten Zug 4 neuntel und für Blau 5 neuntel, wenn im ersten Zug Rot gezogen wurde. Wenn im ersten Zug blau gezogen wurde, dann ist es umgekehrt.")
]

#only("5")[
  #voiceover("Nun bist du wieder an der Reihe: Berechne die Wahrscheinlichkeit für folgende Ergebnisse:")
]

#v(40pt)
#only("5-")[
  Berechne Wahrscheinlichkeit für
]
#v(20pt)
#only("6-")[
  - ...beide Kugeln blau  
]
#only("7-")[
  - ... $1.$ Kugel blau und $2.$ Kugel rot
]

#only("6")[
  #voiceover("Erstes Ergebnis: Beide Kugeln sind blau.")
]
#only("7")[
  #voiceover("Und zweites Ergebnis: Die erste Kugel ist blau und die zweite Kugel ist rot.")
]
]
#questionDef(
  questionText: "Was ist die Wahrscheinlichkeit, dass beide Kugeln rot sind? Und dass die 1. blau, und die 2. rot ist?",
  // use latex!
  answerOptions: ("$RR:\frac{20}{90}, BR:\frac{25}{90}$", "$RR:0, BR:0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$RR:\key{a}, BR:\key{b}$"),
      answerOptionsTypes: (
        "a": "number",
        "b": "number"
      )
  ),
)
