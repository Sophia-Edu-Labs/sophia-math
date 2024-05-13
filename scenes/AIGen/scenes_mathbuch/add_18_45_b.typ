#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/8 + 4/5$]
#v(40pt)
//Antwort des Schülers: 5/40
#only("2-")[Deine Antwort: $5/40$]
#only("1")[
#voiceover("Wir sollen ein Achtel plus vier Fünftel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist fünf Vierzigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 1/8 + 4/5 ≠  (1+4)/(8*5) $]
#v(40pt)
#only("2-")[$ 1/8 ≠ 1/40$, #h(10pt)sondern #h(10pt)$1/8 = 5/40 $]
#v(40pt)
#only("3-")[$ 4/5 ≠ 4/40$, #h(10pt)sondern #h(10pt)$4/5 = 32/40 $]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner einfach addiert und multipliziert hast. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Ein Achtel ist nicht gleich ein Vierzigstel, sondern fünf Vierzigstel.")
]
#only("3")[
#voiceover("Und vier Fünftel ist nicht gleich vier Vierzigstel, sondern zweiunddreißig Vierzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 8: 8, 16, 24, 32, 40, ...]
#v(20pt)
#only("3-")[Vielfache von 5: 5, 10, 15, 20, 25, 30, 35, 40, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 8 und 5 ist 40]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von acht sind acht, sechzehn, vierundzwanzig, zweiunddreißig, vierzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von fünf sind fünf, zehn, fünfzehn, zwanzig, fünfundzwanzig, dreißig, fünfunddreißig, vierzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von acht und fünf ist vierzig. Das ist unser gemeinsamer Nenner.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 1/8 = 1/8 dot 5/5 = 5/40 $]
#v(20pt)
#only("3-")[$ 4/5 = 4/5 dot 8/8 = 32/40 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner vierzig haben.")
]
#only("2")[
#voiceover("Ein Achtel wird mit fünf Fünftel erweitert, das ergibt fünf Vierzigstel.")
]
#only("3")[
#voiceover("Vier Fünftel wird mit acht Achtel erweitert, das ergibt zweiunddreißig Vierzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 5/40 + 32/40 = (5+32)/40 = 37/40 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Fünf Vierzigstel plus zweiunddreißig Vierzigstel ist gleich siebenunddreißig Vierzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $1/8 + 4/5 = 37/40$, nicht $5/40$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist ein Achtel plus vier Fünftel gleich siebenunddreißig Vierzigstel, nicht fünf Vierzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]