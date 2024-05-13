#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $5/12 + 3/10$]
#v(40pt)
//Antwort des Schülers: 8/120
#only("2-")[Deine Antwort: $8/120$]
#only("1")[
#voiceover("Wir sollen fünf Zwölftel plus drei Zehntel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist acht Hundertzwanzigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $5/12 + 3/10 ≠ (5+3)/(12*10)$]
#v(40pt)
#only("2-")[$5/12 ≠ 5/120$, #h(10pt)sondern #h(10pt)$5/12$]
#v(40pt)
#only("3-")[$3/10 ≠ 3/120$, #h(10pt)sondern #h(10pt)$3/10$]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner einfach addiert hast. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Fünf Zwölftel ist nicht gleich fünf Hundertzwanzigstel, sondern bleibt fünf Zwölftel.")
]
#only("3")[
#voiceover("Und drei Zehntel ist nicht gleich drei Hundertzwanzigstel, sondern bleibt drei Zehntel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 12: 12, 24, 36, 48, 60, ...]
#v(20pt)
#only("3-")[Vielfache von 10: 10, 20, 30, 40, 50, 60, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 12 und 10 ist 60]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von zwölf sind zwölf, vierundzwanzig, sechsunddreißig, achtundvierzig, sechzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von zehn sind zehn, zwanzig, dreißig, vierzig, fünfzig, sechzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von zwölf und zehn ist sechzig. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$5/12 = 5/12 dot 5/5 = 25/60$]
#v(20pt)
#only("3-")[$3/10 = 3/10 dot 6/6 = 18/60$]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner sechzig haben.")
]
#only("2")[
#voiceover("Fünf Zwölftel wird mit fünf Fünftel erweitert, das ergibt fünfundzwanzig Sechzigstel.")
]
#only("3")[
#voiceover("Drei Zehntel wird mit sechs Sechstel erweitert, das ergibt achtzehn Sechzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$25/60 + 18/60 = (25+18)/60 = 43/60$]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Fünfundzwanzig Sechzigstel plus achtzehn Sechzigstel ist gleich dreiundvierzig Sechzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $5/12 + 3/10 = 43/60$, nicht $8/120$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist fünf Zwölftel plus drei Zehntel gleich dreiundvierzig Sechzigstel, nicht acht Hundertzwanzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]