#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 24pt, weight: "bold")[#align(center)[① Ziehen von Kugeln ⑩]]
#v(40pt)
#only("1")[
#voiceover("Das ist leider falsch, schade. Um die Wahrscheinlichkeit zu berechnen, beim einmaligen Ziehen eine Kugel mit einer durch 3 teilbaren Nummer zu ziehen, wenden wir die Laplace-Formel an.")
]
#only("1-")[
$ P(E) = ✔/📊 $
]
#v(20pt)
#only("2")[
#voiceover("Zuerst bestimmen wir die Menge der günstigen Ergebnisse. Das sind die Ergebnisse, die wir als Erfolg werten, also Nummern, die durch 3 teilbar sind: 3, 6 und 9.")
]
#only("2-")[
- $✔ = {3, 6, 9} $
]
#v(10pt)
#only("3")[
#voiceover("Als nächstes bestimmen wir die Menge aller möglichen Ergebnisse beim einmaligen Ziehen. Das sind die Nummern 1 bis 10.")
]
#only("3-")[
- $📊 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10} $
]
#v(40pt)
#only("4")[
#voiceover("Jetzt setzen wir die Mächtigkeiten, also die Anzahl der Elemente dieser Mengen, in die Laplace-Formel ein. Die Menge der günstigen Ergebnisse hat 3 Elemente, die Menge aller möglichen Ergebnisse hat 10 Elemente.")
]
#only("4-")[
$ P(E) = (|{3, 6, 9}|)/(|{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}|) $
]
#only("5")[
#voiceover("")
]
#only("5")[$ -> P(E) = 3/10 $]
#v(40pt)
#only("6")[
#voiceover("Also beträgt die Wahrscheinlichkeit, beim einmaligen Ziehen eine Kugel mit einer durch 3 teilbaren Nummer zu ziehen, drei Zehntel, also 0 komma 3.")
]
]