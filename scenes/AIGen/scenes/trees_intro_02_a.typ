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
#only("1-")[
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

#only("1")[
  #voiceover("Super, das stimmt. Um die Wahrscheinlichkeit zu berechnen, dass beide Kugeln rot sind, müssen wir die Wahrscheinlichkeiten entlang des Pfades 'Rot-Rot' multiplizieren.")
]

#only("2")[
  #voiceover("4 zehntel mal 4 zehntel ist 16 hundertstel oder 0,16. Die Wahrscheinlichkeit, dass beide Kugeln rot sind, ist also 0,16 oder 16%.")
]
#v(40pt)
#only("2-")[
  - ...beide Kugeln rot:$ P("RR") = 4/10 dot 4/10 = 16/100 = 0.16 $
]

#only("3")[
  #voiceover("Nun zur Wahrscheinlichkeit, dass die erste Kugel rot und die zweite Kugel blau ist. Hier müssen wir die Wahrscheinlichkeiten entlang des Pfades 'Rot-Blau' multiplizieren.")  
]

#only("4")[
  #voiceover("4 zehntel mal 6 zehntel ist 24 hunderstel oder 0,24. Die Wahrscheinlichkeit, dass die erste Kugel rot und die zweite Kugel blau ist, beträgt also 0,24 oder 24%.")
]

#only("4-")[  
  - ... $1.$ Kugel rot und $2.$ Kugel blau: $ P("RB") = 4/10 dot 6/10 = 24/100 = 0.24 $
]
]