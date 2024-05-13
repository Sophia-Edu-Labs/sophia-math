#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $5/5 + 6/6$]
#v(40pt)
//Antwort des Schülers: 11/30
#only("2-")[Deine Antwort: $11/30$]
#only("1")[
#voiceover("Wir sollen fünf fünftel plus sechs sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist elf dreißigstel. Das ist leider nicht richtig.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $5/5 + 6/6 ≠ (5+6)/(5 dot 6)$]
#v(20pt)
#only("2-")[🛠️ Du hast die Summe der Zähler durch das Produkt der Nenner geteilt]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche zuerst berechnen und dann addieren]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Summe der Zähler durch das Produkt der Nenner geteilt hast.")
]
#only("2")[
#voiceover("Indem du die Zähler addierst und durch das Produkt der Nenner teilst, erhältst du nicht das korrekte Ergebnis.")
]
#only("3")[
#voiceover("Du musst die Brüche zuerst berechnen und dann addieren.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Berechnen der Brüche]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Berechne die einzelnen Brüche]
#v(20pt)
#only("2-")[$5/5 = 1$]
#v(20pt)
#only("3-")[$6/6 = 1$]
#only("1")[
#voiceover("Um die Brüche zu berechnen, teilst du den Zähler durch den Nenner.")
]
#only("2")[
#voiceover("Fünf fünftel ist gleich eins.")
]
#only("3")[
#voiceover("Sechs sechstel ist ebenfalls gleich eins.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Addiere die Ergebnisse]
#v(20pt)
#only("2-")[$1 + 1 = 2$]
#only("1")[
#voiceover("Jetzt kannst du die berechneten Werte addieren.")
]
#only("2")[
#voiceover("Eins plus eins ist gleich zwei.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $5/5 + 6/6 = 2$, nicht $11/30$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Berechne die einzelnen Brüche zuerst und addiere dann die Ergebnisse!]
#only("1")[
#voiceover("Daher ist fünf fünftel plus sechs sechstel gleich zwei, nicht elf dreißigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Berechne die einzelnen Brüche zuerst und addiere dann die Ergebnisse!")
]
]