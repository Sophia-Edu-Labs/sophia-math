#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $3/8 + 8/6$]
#v(40pt)
//Antwort des Schülers: 11/48
#only("2-")[Deine Antwort: $11/48$]
#only("1")[
#voiceover("Wir sollen drei Achtel plus acht Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist elf Achtundvierzigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 3/8 + 8/6 ≠  (3+8)/(8*6) $]
#v(40pt)
#only("2-")[$ 3/8 ≠ 3/(8*6)$, #h(10pt)sondern #h(10pt)$3/8 = 9/24 $]
#v(40pt)
#only("3-")[$ 8/6 ≠ 8/(8*6)$, #h(10pt)sondern #h(10pt)$8/6 = 32/24 $]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner einfach multipliziert hast, ohne sie auf einen gemeinsamen Nenner zu bringen. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Drei Achtel ist nicht gleich drei durch acht mal sechs, sondern neun Vierundzwanzigstel.")
]
#only("3")[
#voiceover("Und acht Sechstel ist nicht gleich acht durch acht mal sechs, sondern zweiunddreißig Vierundzwanzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 8: 8, 16, 24, 32, 40, ...]
#v(20pt)
#only("3-")[Vielfache von 6: 6, 12, 18, 24, 30, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 8 und 6 ist 24]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von acht sind acht, sechzehn, vierundzwanzig, zweiunddreißig, vierzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von sechs sind sechs, zwölf, achtzehn, vierundzwanzig, dreißig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von acht und sechs ist vierundzwanzig. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 3/8 = 3/8 dot 3/3 = 9/24 $]
#v(20pt)
#only("3-")[$ 8/6 = 8/6 dot 4/4 = 32/24 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner vierundzwanzig haben.")
]
#only("2")[
#voiceover("Drei Achtel wird mit drei Drittel erweitert, das ergibt neun Vierundzwanzigstel.")
]
#only("3")[
#voiceover("Acht Sechstel wird mit vier Viertel erweitert, das ergibt zweiunddreißig Vierundzwanzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 9/24 + 32/24 = (9+32)/24 = 41/24 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Neun Vierundzwanzigstel plus zweiunddreißig Vierundzwanzigstel ist gleich einundvierzig Vierundzwanzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $3/8 + 8/6 = 41/24$, nicht $11/48$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist drei Achtel plus acht Sechstel gleich einundvierzig Vierundzwanzigstel, nicht elf Achtundvierzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]