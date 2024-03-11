#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 24pt, weight: "bold")[Laplace Formel:]
#v(40pt)
$ P(E) = ✔/📊 $
#only("2")[
#voiceover("Ganz richtig, toll! Wir beginnen mit der Laplass-Formel, welche besagt, dass die Wahrscheinlichkeit eines Ereignisses gleich der Anzahl der günstigen Ergebnisse geteilt durch die Anzahl der möglichen Ergebnisse ist.")
]
]
#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Mögliche Ergebnisse]]
#v(20pt)
#only("1-")[
6 Möglichkeiten pro Wurf
]
#v(20pt)
#only("2-")[
$->$ $6 * 6 = 36$ mögliche Ergebnisse
]

#only("1")[
#voiceover("Zuerst bestimmen wir die Gesamtzahl der möglichen Ergebnisse. Da es sich um einen fairen Würfel handelt, gibt es für jeden Wurf 6 mögliche Ergebnisse.")
]
#only("2")[
#voiceover("Da wir zweimal würfeln, multiplizieren wir die Anzahl der Möglichkeiten für jeden Wurf miteinander. Das ergibt 6 mal 6 gleich 36 mögliche Ergebnisse insgesamt.")
]
#only("3")[
#voiceover("Wir notieren also, dass die Gesamtzahl der möglichen Ergebnisse 36 beträgt.")
]
]
#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Anzahl der günstigen Ergebnisse]]
#v(40pt)
#only("1-")[Produkt $> 12$ für]
#only("2-")[${(3,5),(3,6),(4,4),(4,5),$
$(4,6),(5,3),(5,4),(5,5),$
$(5,6),(6,3),(6,4),(6,5),$
$(6,6)}$]
#v(20pt)
#only("3-")[$->$Es gibt 13 günstige Ergebnisse.]
#only("1")[
#voiceover("Als nächstes zählen wir die günstigen Ergebnisse, also die Würfe, bei denen das Produkt der Augenzahlen größer als 12 ist.")
]
#only("2")[
#voiceover("Das ist der Fall für die Kombinationen: (drei fünf), (drei sechs), (vier vier), (vier fünf), (vier sechs), (fünf drei), (fünf vier), (fünf fünf), (fünf sechs), (sechs drei), (sechs vier), (sechs fünf) und (sechs sechs).")
]
#only("3")[
#voiceover("Es gibt also insgesamt 13 günstige Ergebnisse.")
]
]

#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Wahrscheinlichkeit]]
#v(40pt)
#only("1-")[
$P(E) = ✔/📊$
]

#only("2-")[
$P(E) = 13/36$
]
#only("1")[
#voiceover("Jetzt setzen wir die Werte in die Laplace-Formel ein.")
]
#only("2")[
#voiceover("Das ergibt 13 geteilt durch 36. Die Wahrscheinlichkeit, dass das Produkt der Augenzahlen größer als 12 ist, beträgt also 13 sechsundreissigstel oder etwa 36.1%.")
]
]