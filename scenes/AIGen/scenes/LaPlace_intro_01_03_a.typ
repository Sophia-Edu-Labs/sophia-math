#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 24pt, weight: "bold")[#align(center)[① Zweimaliges Kugelziehen ③]]
#v(40pt)
#only("1")[
#voiceover("Super, das ist richtig. Um die Wahrscheinlichkeit zu berechnen, dass die Nummer der zweiten gezogenen Kugel größer ist als die der ersten, wenn wir die Kugel nach dem Ziehen zurücklegen, wenden wir die Laplace-Formel an.")

]
#only("1-")[
$ P(E) = ✔/📊 $
]
#v(20pt)
#only("2")[

#voiceover("Zuerst bestimmen wir die Menge der günstigen Ergebnisse. Das sind die Ergebnisse, bei denen die zweite Kugel eine größere Nummer hat als die erste: 1 2, 1 3 und 2 3 sind günstig.")
]
#only("2-")[
- $✔ = {(1,2), (1,3), (2,3)} $

]
#v(10pt)
#only("3")[
#voiceover("Als nächstes bestimmen wir die Menge aller möglichen Ergebnisse beim Ziehen mit Zurücklegen. Das sind alle möglichen Paare von Nummern, inklusive der Paare mit gleicher Nummer.")

]
#only("3-")[
- $📊 = {(1,1), (1,2), (1,3), (2,1),$$(2,2), (2,3), (3,1), (3,2), (3,3)}$
]
#v(40pt)
#only("4")[
#voiceover("Jetzt setzen wir die Mächtigkeiten, also die Anzahl der Elemente dieser Mengen, in die Laplace-Formel ein. Die Menge der günstigen Ergebnisse hat 3 Elemente, die Menge aller möglichen Ergebnisse hat 9 Elemente.")
]
#only("4-")[
$ P(E) = (|{(1,2), (1,3), (2,3)}|)/(|{(1,1), (1,2), ..., (3,3)}|) $
]
#only("5")[
#voiceover("Also erhalten wir für die Wahrscheinlichkeit drei neuntel,")
]
#only("5")[$ -> P(E) = 3/9 $]
#only("6-")[$ -> P(E) = 1/3 $]
#v(40pt)
#only("7")[
#voiceover("was sich zu einem drittel kürzen lässt. Die Wahrscheinlichkeit, dass die Nummer der zweiten gezogenen Kugel größer ist als die der ersten, beträgt also ein Drittel.")
]
]
