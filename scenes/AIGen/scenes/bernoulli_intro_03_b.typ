#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Bernoulli-Verteilung: Würfelspiel]
#v(20pt)
#only("2-")[Erfolg: Gewinn ≥ 15 Euro]
#v(20pt)
#only("3-")[Erfolg bei:]
#v(10pt)
#only("4-")[
- Wurf einer 5 (Gewinn: 20 Euro)
- Wurf einer 6 (Gewinn: 30 Euro)
]
#v(20pt)
#only("5-")[$p = P("5") + P("6")$]
#v(10pt)
#only("6-")[$p = 1/6+1/6=1/3$]
#only("1")[
#voiceover("Leider nicht ganz richtig. Lass uns die Erfolgswahrscheinlichkeit für das Würfelspiel berechnen.")
]
#only("2")[
#voiceover("Ein Erfolg liegt vor, wenn der Gewinn mindestens 15 Euro beträgt.")
]
#only("3")[
#voiceover("Das ist bei zwei Würfelergebnissen der Fall:")
]
#only("4")[
#voiceover("Beim Wurf einer 5 mit einem Gewinn von 20 Euro und beim Wurf einer 6 mit einem Gewinn von 30 Euro.")
]
#only("5")[
#voiceover("Die Erfolgswahrscheinlichkeit p ist die Summe der Wahrscheinlichkeiten für das Würfeln einer 5 und einer 6.")
]
#only("6")[
#voiceover("Da der Würfel fair ist, beträgt die Wahrscheinlichkeit für jede Zahl ein sechstel. Somit ist p gleich ein sechstel plus ein sechstel, was 2 sechstel oder ein drittel ergibt.")
]
]