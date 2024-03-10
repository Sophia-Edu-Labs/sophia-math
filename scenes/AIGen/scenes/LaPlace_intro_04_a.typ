#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Das ist richtig, toll gemacht!")
]
#text(size: 24pt, weight: "bold")[Lösung]
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
#only("1-")[#text(size: 24pt, weight: "bold")[Mögliche Ergebnisse]]
#v(40pt)
#only("1-")[6 Möglichkeiten pro Wurf]
#v(20pt)
#only("2-")[$-> 6 * 6 * 6 = 216$ mögliche Ergebnisse]

#only("1")[
#voiceover("Zuerst bestimmen wir die Gesamtzahl der möglichen Ergebnisse. Da es sich um einen fairen Würfel handelt, gibt es für jeden Wurf 6 mögliche Ergebnisse.")
]
#only("2")[
#voiceover("Da wir dreimal würfeln, multiplizieren wir die Anzahl der Möglichkeiten für jeden Wurf miteinander. Das ergibt 6 mal 6 mal 6 gleich 216 mögliche Ergebnisse insgesamt.")
]

]
#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Ungünstige Ergebnisse]]
#v(40pt)
#only("1-")[- Ungünstige Ergebnisse: Würfe ohne ⚅]
#only("2-")[- 5 Möglichkeiten pro Wurf: ⚀, ⚁, ⚂, ⚃, ⚄]
#only("3-")[$-> 5 dot 5 dot 5 = 125$ ungünstige Ergebnisse.]
#only("1")[
#voiceover("Um die Anzahl der günstigen Ergebnisse zu bestimmen, berechnen wir zuerst die Anzahl der ungünstigen Ergebnisse. Das sind alle Würfe, bei denen keine sechs vorkommt.")
]
#only("2")[
#voiceover("Für jeden Wurf gibt es 5 Möglichkeiten, keine sechs zu würfeln: 1,2,3,4,5.")
]
#only("3")[
#voiceover("Da wir dreimal würfeln, multiplizieren wir die Anzahl der Möglichkeiten für jeden Wurf miteinander. Das ergibt 5 mal 5 mal 5 gleich 125 ungünstige Ergebnisse.")
]
]

#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Anzahl der günstigen Ergebnisse]]
#v(40pt)
#only("1-")[Günstige Ergebnisse:
Mögliche - Ungünstige]
#only("2-")[$✔ = 📊 - 📊_{"ungünstig"}$]
#only("3-")[$✔ = 216 - 125 = 91$]
#only("1")[
#voiceover("Jetzt können wir die Anzahl der günstigen Ergebnisse berechnen. Das sind alle möglichen Ergebnisse minus die ungünstigen Ergebnisse.")
]
#only("2")[
#voiceover("Wir subtrahieren also die Anzahl der ungünstigen Ergebnisse von der Gesamtzahl der möglichen Ergebnisse.")
]
#only("3")[
#voiceover("Das ergibt zweihundertsechzehn minus hundertfünfundzwanzig gleich 91. Es gibt also 91 günstige Ergebnisse.")
]
]
#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Berechnung der Wahrscheinlichkeit]]
#v(40pt)
#only("1-")[
$P(E) = ✔/📊$
]

#only("2-")[
$P(E) = 91/216$
]
#only("1")[
#voiceover("Jetzt setzen wir die Werte in die Laplace-Formel ein.")
]
#only("2")[
#voiceover("Das ergibt 91 geteilt durch zweihundertsechzehn. Die Wahrscheinlichkeit, dass beim dreimaligen Würfeln mindestens einmal eine sechs gewürfelt wird, beträgt also 91 zweihundertsechzehntel oder etwa 42.1%.")
]
]