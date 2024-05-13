#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $7/6 + 5/8$]
#v(40pt)
//Antwort des Schülers: 12/48
#only("2-")[Deine Antwort: $12/48$]
#only("1")[
#voiceover("Wir sollen sieben Sechstel plus fünf Achtel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist zwölf Achtundvierzigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $7/6 + 5/8 ≠ (7+5)/(6*8)$]
#v(40pt)
#only("2-")[$7/6 ≠ 7/48$, #h(10pt)sondern #h(10pt)$7/6$]
#v(40pt)
#only("3-")[$5/8 ≠ 5/48$, #h(10pt)sondern #h(10pt)$5/8$]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner einfach addiert und multipliziert hast. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Sieben Sechstel ist nicht gleich sieben Achtundvierzigstel, sondern bleibt sieben Sechstel.")
]
#only("3")[
#voiceover("Und fünf Achtel ist nicht gleich fünf Achtundvierzigstel, sondern bleibt fünf Achtel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 6: 6, 12, 18, 24, 30, 36, 42, 48, ...]
#v(20pt)
#only("3-")[Vielfache von 8: 8, 16, 24, 32, 40, 48, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 6 und 8 ist 24]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von sechs sind sechs, zwölf, achtzehn, vierundzwanzig, dreißig, sechsunddreißig, zweiundvierzig, achtundvierzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von acht sind acht, sechzehn, vierundzwanzig, zweiunddreißig, vierzig, achtundvierzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von sechs und acht ist vierundzwanzig. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$7/6 = 7/6 dot 4/4 = 28/24$]
#v(20pt)
#only("3-")[$5/8 = 5/8 dot 3/3 = 15/24$]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner vierundzwanzig haben.")
]
#only("2")[
#voiceover("Sieben Sechstel wird mit vier Viertel erweitert, das ergibt achtundzwanzig Vierundzwanzigstel.")
]
#only("3")[
#voiceover("Fünf Achtel wird mit drei Drittel erweitert, das ergibt fünfzehn Vierundzwanzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$28/24 + 15/24 = (28+15)/24 = 43/24$]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Achtundzwanzig Vierundzwanzigstel plus fünfzehn Vierundzwanzigstel ist gleich dreiundvierzig Vierundzwanzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $7/6 + 5/8 = 43/24$, nicht $12/48$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist sieben Sechstel plus fünf Achtel gleich dreiundvierzig Vierundzwanzigstel, nicht zwölf Achtundvierzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]