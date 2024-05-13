#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $5/5 + 3/6$]
#v(40pt)
//Antwort des Schülers: 8/30
#only("2-")[Deine Antwort: $8/30$]
#only("1")[
#voiceover("Wir sollen fünf Fünftel plus drei Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist acht Dreißigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $5/5 + 3/6 ≠ (5+3)/(5*6)$]
#v(40pt)
#only("2-")[$5/5 ≠ 5/30$, #h(10pt)sondern #h(10pt)$5/5 = 1$]
#v(40pt)
#only("3-")[$3/6 ≠ 3/30$, #h(10pt)sondern #h(10pt)$3/6 = 1/2$]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner einfach addiert und multipliziert hast. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Fünf Fünftel ist nicht gleich fünf Dreißigstel, sondern eins.")
]
#only("3")[
#voiceover("Und drei Sechstel ist nicht gleich drei Dreißigstel, sondern ein Halb.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 5: 5, 10, 15, 20, 25, 30, ...]
#v(20pt)
#only("3-")[Vielfache von 6: 6, 12, 18, 24, 30, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 5 und 6 ist 30]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von fünf sind fünf, zehn, fünfzehn, zwanzig, fünfundzwanzig, dreißig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von sechs sind sechs, zwölf, achtzehn, vierundzwanzig, dreißig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von fünf und sechs ist dreißig. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$5/5 = 5/5 dot 6/6 = 30/30$]
#v(20pt)
#only("3-")[$3/6 = 3/6 dot 5/5 = 15/30$]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner dreißig haben.")
]
#only("2")[
#voiceover("Fünf Fünftel wird mit sechs Sechstel erweitert, das ergibt dreißig Dreißigstel.")
]
#only("3")[
#voiceover("Drei Sechstel wird mit fünf Fünftel erweitert, das ergibt fünfzehn Dreißigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$30/30 + 15/30 = (30+15)/30 = 45/30 = 3/2$]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Dreißig Dreißigstel plus fünfzehn Dreißigstel ist gleich fünfundvierzig Dreißigstel, was vereinfacht drei Halbe ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $5/5 + 3/6 = 3/2$, nicht $8/30$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist fünf Fünftel plus drei Sechstel gleich drei Halbe, nicht acht Dreißigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]