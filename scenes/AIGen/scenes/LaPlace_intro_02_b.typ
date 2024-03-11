#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Lass uns die Aufgabe zur Laplace-Formel mit den Würfeln Schritt für Schritt lösen!")
]
#text(size: 24pt, weight: "bold")[#align(center)[⚅ Würfeln mit zwei Würfeln ⚅]]
#v(40pt)
#only("2-")[Die Laplace Formel lautet:]
#only("2-")[
$ P(E) = ("günstige "✔)/("mögliche "📊) $
]
#only("2")[
#voiceover("Wir beginnen mit der Laplace-Formel, welche besagt, dass die Wahrscheinlichkeit eines Ereignisses gleich der Anzahl der günstigen Ergebnisse geteilt durch die Anzahl der möglichen Ergebnisse ist.")
]
]
#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Mögliche Ergebnisse]]
#v(40pt)
#only("1-")[- 6 Möglichkeiten pro Wurf]
#only("2-")[- $6 dot 6 = 36$ mögliche Ergebnisse]
#only("3-")[
$📊 = 36$
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
#only("1-")[Die Summe ist $> 10$, für:]
#only("2-")[$ {(5,6),(6,5),(6,6)} $]
#only("3-")[
  $->$ 3 günstige Ergebnisse
  ]
#only("1")[
#voiceover("Als nächstes zählen wir die günstigen Ergebnisse, also die Würfe, bei denen die Summe der Augenzahlen größer als 10 ist.")
]
#only("2")[
#voiceover("Das ist der Fall, wenn wir entweder eine 5 und eine 6, eine 6 und eine 5, oder zweimal eine 6 würfeln.")
]
#only("3")[
#voiceover("Es gibt also insgesamt 3 günstige Ergebnisse.")
]
]
#slide()[
#only("1-")[#text(size: 24pt, weight: "bold")[Finale Lösung]]
#v(40pt)
#only("1-")[
$P(E) = ✔/📊$
]

#only("2-")[$P(E) = 3/36$]#only("3-")[$= 1/12$]
#only("1")[
#voiceover("Jetzt setzen wir die Werte in die Laplace-Formel ein.")
]
#only("2")[
#voiceover("Das ergibt 3 geteilt durch 36...")
]
#only("3")[
#voiceover("...was wir als 1 zwölftel schreiben können. Die Wahrscheinlichkeit, dass die Summe der Augenzahlen größer als 10 ist, beträgt also 1/12 oder etwa 8.3%.")
]
]