#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/8 + 3/10$]
#v(40pt)
//Antwort des Schülers: 4/80
#only("2-")[Deine Antwort: $4/80$]
#only("1")[
#voiceover("Wir sollen ein Achtel plus drei Zehntel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist vier achtzigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 1/8 + 3/10 ≠ (1+3)/(8*10) $]
#v(40pt)
#only("2-")[$ 1/8 ≠ 1/80$, #h(10pt)sondern #h(10pt)$1/8 = 5/40 $]
#v(40pt)
#only("3-")[$ 3/10 ≠ 3/80$, #h(10pt)sondern #h(10pt)$3/10 = 12/40 $]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner einfach addiert und multipliziert hast. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Ein Achtel ist nicht gleich ein Achtzigstel, sondern fünf Vierzigstel.")
]
#only("3")[
#voiceover("Und drei Zehntel ist nicht gleich drei Achtzigstel, sondern zwölf Vierzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 8: 8, 16, 24, 32, 40, ...]
#v(20pt)
#only("3-")[Vielfache von 10: 10, 20, 30, 40, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 8 und 10 ist 40]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von acht sind acht, sechzehn, vierundzwanzig, zweiunddreißig, vierzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von zehn sind zehn, zwanzig, dreißig, vierzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von acht und zehn ist vierzig. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 1/8 = 1/8 dot 5/5 = 5/40 $]
#v(20pt)
#only("3-")[$ 3/10 = 3/10 dot 4/4 = 12/40 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner vierzig haben.")
]
#only("2")[
#voiceover("Ein Achtel wird mit fünf Fünftel erweitert, das ergibt fünf Vierzigstel.")
]
#only("3")[
#voiceover("Drei Zehntel wird mit vier Viertel erweitert, das ergibt zwölf Vierzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 5/40 + 12/40 = (5+12)/40 = 17/40 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Fünf Vierzigstel plus zwölf Vierzigstel ist gleich siebzehn Vierzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $1/8 + 3/10 = 17/40$, nicht $4/80$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist ein Achtel plus drei Zehntel gleich siebzehn Vierzigstel, nicht vier Achtzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]