#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 24pt, weight: "bold")[#align(center)[⚅ Würfeln mit einem Würfel ⚅]]
#v(40pt)
#only("1")[
#voiceover("Super, das ist richtig. Um die Wahrscheinlichkeit zu berechnen, bei einmaligem Würfeln eine 1 oder eine 6 zu würfeln, wenden wir die Laplace-Formel an.")
]
#only("1-")[
$ P(E) = ✔/📊 $
]
#v(20pt)
#only("2")[
#voiceover("Zuerst bestimmen wir die Menge der günstigen Ergebnisse. Das sind die Ergebnisse, die wir als Erfolg werten, also eine 1 oder eine 6.")
]
#only("2-")[
- $✔ = {1, 6} $
]
#v(10pt)
#only("3")[
#voiceover("Als nächstes bestimmen wir die Menge aller möglichen Ergebnisse beim einmaligen Würfeln. Das sind die Augenzahlen 1 bis 6.")
]
#only("3-")[
- $📊 = {1, 2, 3, 4, 5, 6} $

]
#v(40pt)
#only("4")[
#voiceover("Jetzt setzen wir die Mächtigkeiten, also die Anzahl der Elemente dieser Mengen, in die Laplace-Formel ein.")
]
#only("4-")[
$ P(E) = (|{1, 6}|)/(|{1, 2, 3, 4, 5, 6}|) $
]
#only("5")[
#voiceover("Die Menge der günstigen Ergebnisse hat 2 Elemente, die Menge aller möglichen Ergebnisse hat 6 Elemente.")
]
#only("5")[$ -> P(E) = 2/6 $]#only("6-")[$ -> P(E) = 1/3 $]
#v(40pt)
#only("6")[
#voiceover("Kürzen wir den Bruch, erhalten wir als Endergebnis ein drittel. Also beträgt die Wahrscheinlichkeit, bei einmaligem Würfeln eine 1 oder eine 6 zu würfeln, ein Drittel.")
]
]