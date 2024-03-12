#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#only("1")[
#voiceover("So nächster Begriff: Ereignisraum. Ein Ereignisraum beschreibt alle möglichen Ergebnisse eines Zufallsexperiments. Schauen wir uns das anhand eines einfachen Beispiels an:")
]
#only("2")[
#voiceover("Dem einmaligen Werfen eines Würfels. ... Welche Ergebnisse sind bei diesem Zufallsexperiment möglich? ")
]
#only("1-3")[
#text(size: 30pt, weight: "bold")[Ereignisraum]
#v(40pt)
]
#only("2-")[
#text(weight: "bold")[⚅ Einfacher Würfelwurf ⚅]

]
#only("3")[
#voiceover("Es gibt sechs Möglichkeiten: Wir können eine 1, oder eine 2, oder eine 3, oder eine 4, eine 5 oder eine 6 würfeln.")
]
#v(20pt)
#only("3-")[
Die möglichen Ergebnisse sind:
#align(center)[⚀⚁⚂⚃⚄⚅]
]
#v(20pt)
#only("4")[
#voiceover("Die Menge aller dieser möglichen Ergebnisse nennen wir den Ereignisraum. Wir schreiben ihn als Menge und geben ihm oft den Buchstaben Omega.")
]
#only("4-")[
- #text(weight: "bold")[Ereignisraum]: Alle Ergebnisse
$ Omega={⚀,⚁,⚂,⚃,⚄,⚅} $
]
#only("5")[
#voiceover("Ein einzelnes Ergebnis, wie zum Beispiel eine Drei zu würfeln, ist ein Element des Ereignisraums.")
]
#only("5-")[
- Ergebnis: #text(weight: "bold")[Element] des Ereignisraums
$ ⚂ in Omega $
]
#only("6")[
#voiceover("Eine Menge von Ergebnissen, wie zum Beispiel eine gerade Zahl zu würfeln, nennen wir ein Ereignis.")
]
#only("6-")[
- Menge von Ergebnissen: #text(weight: "bold")[Ereignis]
$ A={⚁,⚃,⚅} $
]
#only("7")[
#voiceover("Und jedes Ereignis ist eine Teilmenge des Ereignisraums.")
]
#only("7-")[
- Jedes Ereignis #text(weight: "bold")[Teilmenge] des Ereignisraums
$ A subset.eq Omega $
]
]
#slide()[
#only("1")[
#voiceover("Zusammengefasst: Der Ereignisraum enthält alle möglichen Ergebnisse eines Zufallsexperiments.")
]
#only("2")[
#voiceover("Ein einzelnes Ergebnis ist ein Element des Ereignisraums. ...")
]
#only("3")[
#voiceover("Und eine Menge von Ergebnissen ist ein Ereignis und damit eine Teilmenge des Ereignisraums.")
]

#align(center)[#text(size: 23pt, weight: "bold")[Zusammenfassung]]
#v(40pt)
#only("1-")[
- #text(weight: "bold")[Ereignisraum $Omega$]: Menge aller möglichen Ergebnisse
]
#only("2-")[
- #text(weight: "bold")[Ergebnis:] Element von $Omega$
]
#only("3-")[
- #text(weight: "bold")[Ereignis $A$:] Teilmenge von $Omega$, d.h. $A subset.eq Omega$ 
]
]