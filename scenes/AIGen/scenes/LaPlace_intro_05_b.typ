#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Schade, das ist leider falsch. ... Schauen wir uns die Aufgabe gemeinsam an...")
]
#text(size: 24pt, weight: "bold")[Zweimaliges Würfeln]
#v(40pt)
#only("2-")[Die Laplace Formel lautet:]
#only("2-")[
$ P(E) = ✔/📊 $
]
#only("2")[
#voiceover("Wir beginnen mit der Laplace-Formel, welche besagt, dass die Wahrscheinlichkeit eines Ereignisses gleich der Anzahl der günstigen Ergebnisse geteilt durch die Anzahl der möglichen Ergebnisse ist.")
]
]
#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Gesamtzahl der möglichen Ergebnisse]]
#v(40pt)
#only("1-")[- 6 Möglichkeiten pro Wurf.]
#only("2-")[- $6 dot 6 = 36$ mögliche Ergebnisse]
#only("1")[
#voiceover("Zuerst bestimmen wir die Gesamtzahl der möglichen Ergebnisse. Da es sich um einen fairen Würfel handelt, gibt es für jeden Wurf 6 mögliche Ergebnisse.")
]
#only("2")[
#voiceover("Da wir zweimal würfeln, multiplizieren wir die Anzahl der Möglichkeiten für jeden Wurf miteinander. Das ergibt 6 mal 6 gleich 36 mögliche Ergebnisse insgesamt.")
]

]
#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Anzahl der günstigen Ergebnisse]]
#v(40pt)
#only("1-")[-  Günstige: Zwei Gerade]
#only("2-")[- Gerade:  ⚁, ⚃ und ⚅.]
#only("3-")[$->$ $3 * 3 = 9$ Günstige:

{(⚁,⚁), (⚁,⚃), (⚁,⚅), (⚃,⚁), (⚃,⚃),
(⚃,⚅), (⚅,⚁), (⚅,⚃), (⚅,⚅)}.]

#only("1")[
#voiceover("Als nächstes zählen wir die günstigen Ergebnisse. Das sind alle Würfe, bei denen beide Augenzahlen gerade sind.")
]
#only("2")[
#voiceover("Die geraden Zahlen auf einem Würfel sind 2, 4 und 6.")
]
#only("3")[
#voiceover("Für jeden Wurf gibt es 3 Möglichkeiten, eine gerade Zahl zu würfeln. Da wir zweimal würfeln, multiplizieren wir die Anzahl der Möglichkeiten für jeden Wurf miteinander. Das ergibt 3 mal 3 gleich 9 günstige Ergebnisse: (⚁,⚁), (⚁,⚃), (⚁,⚅), (⚃,⚁), (⚃,⚃), (⚃,⚅), (⚅,⚁), (⚅,⚃) und (⚅,⚅).")
]
]
#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Berechnung der Wahrscheinlichkeit]]
#v(40pt)
#only("1-")[
$P(E) = ✔/📊$
]

#only("2-")[$P(E) = 9/36$]#only("3-")[$ = 1/4$]
#only("1")[
#voiceover("Jetzt setzen wir die Werte in die Laplace-Formel ein.")
]
#only("2")[
#voiceover("Das ergibt 9 geteilt durch 36...")
]
#only("3")[
#voiceover("...was wir als 1 viertel schreiben können. Die Wahrscheinlichkeit, dass beide gewürfelten Augenzahlen gerade sind, beträgt also ein viertel oder 25%.")
]
]