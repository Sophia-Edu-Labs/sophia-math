#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $6/10 + 8/6$]
#v(40pt)
//Antwort des Schülers: 14/60
#only("2-")[Deine Antwort: $14/60$]
#only("1")[
#voiceover("Wir sollen sechs Zehntel plus acht Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist vierzehn Sechzigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 6/10 + 8/6 ≠  (6+8)/(10*6) $]
#v(40pt)
#only("2-")[$ 6/10 ≠ 6/60$, #h(10pt)sondern #h(10pt)$6/10 = 18/30 $]
#v(40pt)
#only("3-")[$ 8/6 ≠ 8/60$, #h(10pt)sondern #h(10pt)$8/6 = 40/30 $]
#only("1")[
#voiceover("Dein Fehler ist, dass du zwar die Zähler addiert und die Nenner multipliziert hast, aber das ist nicht richtig.")
]
#only("2")[
#voiceover("Sechs Zehntel ist nicht gleich sechs Sechzigstel, sondern achtzehn Dreißigstel.")
]
#only("3")[
#voiceover("Und acht Sechstel ist nicht gleich acht Sechzigstel, sondern vierzig Dreißigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 10: 10, 20, 30, 40, 50, ...]
#v(20pt)
#only("3-")[Vielfache von 6: 6, 12, 18, 24, 30, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 10 und 6 ist 30]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von zehn sind zehn, zwanzig, dreißig, vierzig, fünfzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von sechs sind sechs, zwölf, achtzehn, vierundzwanzig, dreißig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von zehn und sechs ist dreißig. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 6/10 = 6/10 dot 3/3 = 18/30 $]
#v(20pt)
#only("3-")[$ 8/6 = 8/6 dot 5/5 = 40/30 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner dreißig haben.")
]
#only("2")[
#voiceover("Sechs Zehntel wird mit drei Drittel erweitert, das ergibt achtzehn Dreißigstel.")
]
#only("3")[
#voiceover("Acht Sechstel wird mit fünf Fünftel erweitert, das ergibt vierzig Dreißigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 18/30 + 40/30 = (18+40)/30 = 58/30 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Achtzehn Dreißigstel plus vierzig Dreißigstel ist gleich achtundfünfzig Dreißigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $6/10 + 8/6 = 58/30$, nicht $14/60$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist sechs Zehntel plus acht Sechstel gleich achtundfünfzig Dreißigstel, nicht vierzehn Sechzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]