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

#only("1")[
  #voiceover("Das ist richtig, super! Um die Wahrscheinlichkeit zu berechnen, dass beide Kugeln blau sind, müssen wir die Wahrscheinlichkeiten entlang des Pfades 'Blau-Blau' multiplizieren. Dabei müssen wir beachten, dass die Wahrscheinlichkeiten im zweiten Zug von der Farbe der ersten Kugel abhängen.")
]

#only("2")[
  #voiceover(" Wir erhalten dann 5 zehntel mal 4 neuntel, und das ist 20 neunzigstel oder etwa 0, 2 2. Die Wahrscheinlichkeit, dass beide Kugeln blau sind, ist also rund 22%.")
]

#v(40pt)
#only("1-")[
  - ...beide Kugeln blau:
]

#only("2-")[
$ P("BB") = 5/10 dot 4/9 = 20/90 approx 0.22 $
]

#only("3")[
  #voiceover("Nun zur Wahrscheinlichkeit, dass die erste Kugel blau und die zweite Kugel rot ist. Hier müssen wir die Wahrscheinlichkeiten entlang des Pfades 'Blau-Rot' multiplizieren.")  
]

#only("4")[
  #voiceover("5 zehntel mal 5 neuntel ist 25 neunzigstel oder etwa 0, 2 8. Die Wahrscheinlichkeit, dass die erste Kugel blau und die zweite Kugel rot ist, beträgt also rund 28%.")
]

#only("3-")[  
  - ... $1.$ Kugel blau und $2.$ Kugel rot:
]
#only("4-")[  
$ P("BR") = 5/10 dot 5/9 = 25/90 approx 0.28 $
]

#only("5")[
  #voiceover("Beachte den Unterschied zum Beispiel mit Zurücklegen: Dort waren die Wahrscheinlichkeiten im zweiten Zug unabhängig vom Ergebnis des ersten Zugs. Hier jedoch ändern sich die Wahrscheinlichkeiten im zweiten Zug, je nachdem, was im ersten Zug passiert ist. Das ist der Schlüssel zum Verständnis von Baumdiagrammen ohne Zurücklegen.")
]
]