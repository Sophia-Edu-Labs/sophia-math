#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Was ist der Ereignisraum bei einem Zufallsexperiment?")
]
#text(size: 30pt, weight: "bold")[Ereignisraum]
#v(20pt)
#only("2-")[#align(center)[⚅⚄ Zweimaliger Würfelwurf ⚀⚁]]
#only("2")[
#voiceover("Betrachten wir wieder das Beispiel eines zweimaligen Würfelwurfs mit einem fairen Würfel. ...")
]

#v(40pt)
#only("3-")[- Menge aller möglichen Ergebnisse eines Zufallsexperiments]
#v(20pt)
#only("4-")[- Bezeichnung: Ω ("Omega")]
#v(20pt)
#only("5-")[- Beispiel zweimaliger Würfelwurf: Ω = {(1,1), (1,2), ..., (6,5), (6,6)}]
#only("3")[
#voiceover("Der Ereignisraum ist die Menge aller möglichen Ergebnisse eines Zufallsexperiments.")
]
#only("4")[
#voiceover("Er wird oft mit dem griechischen Buchstaben Omega bezeichnet.")
]
#only("5")[
#voiceover("In unserem Beispiel des zweimaligen Würfelwurfs besteht der Ereignisraum aus den 36 Ergebnispaaren (1 1) bis (6 6).")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Teilmengen des Ereignisraums]
#v(40pt)
#only("1-")[- Jedes Ereignis ist eine Teilmenge von Ω]
#v(20pt)
#only("2-")[- Beispiel: A = "Summe ist gerade" = {(1,1), (1,3), (1,5), (2,2), ...}]
#v(20pt)
#only("3-")[- A ⊆ Ω]
#only("1")[
#voiceover("Jedes Ereignis, das wir betrachten, ist eine Teilmenge des Ereignisraums.")
]
#only("2")[
#voiceover("Nehmen wir zum Beispiel das Ereignis A 'Die Summe der Augenzahlen ist gerade'. Dieses Ereignis umfasst alle Ergebnispaare, bei denen die Summe gerade ist, wie (1 1), (1 3), (1 5), (2 2) und so weiter.")
]
#only("3")[
#voiceover("A ist also eine Teilmenge von Omega, was wir in der Mengenlehre mit diesem Zeichen ausdrücken.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Ereignisraum Ω: Menge aller möglichen Ergebnisse]
#v(20pt)
#only("2-")[- Jedes Ereignis ist eine Teilmenge von Ω]
#v(20pt)
#only("3-")[- Notation: A ⊆ Ω bedeutet "A ist Teilmenge von Ω"]
#only("1")[
#voiceover("Fassen wir zusammen: Der Ereignisraum Omega ist die Menge aller möglichen Ergebnisse eines Zufallsexperiments.")
]
#only("2")[
#voiceover("Jedes Ereignis, das wir betrachten, ist eine Teilmenge dieses Ereignisraums.")
]
#only("3")[
#voiceover("In der Mengenlehre schreiben wir A Teilmenge von Omega, um auszudrücken, dass das Ereignis A im Ereignisraum Omega enthalten ist.")
]
]