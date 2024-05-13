#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/10 + 7/6$]
#v(40pt)
//Antwort des Schülers: 8/60
#only("2-")[Deine Antwort: $8/60$]
#only("1")[
#voiceover("Wir sollen ein Zehntel plus sieben Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist acht Sechzigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 1/10 + 7/6 ≠ (1+7)/(10*6) $]
#v(40pt)
#only("2-")[$ 1/10 ≠ 1/60$, #h(10pt)sondern #h(10pt)$1/10 = 6/60 $]
#v(40pt)
#only("3-")[$ 7/6 ≠ 7/60$, #h(10pt)sondern #h(10pt)$7/6 = 70/60 $]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler addiert und die Nenner multipliziert hast. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Ein Zehntel ist nicht gleich ein Sechzigstel, sondern sechs Sechzigstel.")
]
#only("3")[
#voiceover("Und sieben Sechstel ist nicht gleich sieben Sechzigstel, sondern siebzig Sechzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 10: 10, 20, 30, 40, 50, 60, ...]
#v(20pt)
#only("3-")[Vielfache von 6: 6, 12, 18, 24, 30, 36, 42, 48, 54, 60, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 10 und 6 ist 60]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von zehn sind zehn, zwanzig, dreißig, vierzig, fünfzig, sechzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von sechs sind sechs, zwölf, achtzehn, vierundzwanzig, dreißig, sechsunddreißig, zweiundvierzig, achtundvierzig, vierundfünfzig, sechzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von zehn und sechs ist sechzig. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 1/10 = 1/10 dot 6/6 = 6/60 $]
#v(20pt)
#only("3-")[$ 7/6 = 7/6 dot 10/10 = 70/60 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner sechzig haben.")
]
#only("2")[
#voiceover("Ein Zehntel wird mit sechs Sechstel erweitert, das ergibt sechs Sechzigstel.")
]
#only("3")[
#voiceover("Sieben Sechstel wird mit zehn Zehntel erweitert, das ergibt siebzig Sechzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 6/60 + 70/60 = (6+70)/60 = 76/60 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Sechs Sechzigstel plus siebzig Sechzigstel ist gleich sechsundsiebzig Sechzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $1/10 + 7/6 = 76/60$, nicht $8/60$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist ein Zehntel plus sieben Sechstel gleich sechsundsiebzig Sechzigstel, nicht acht Sechzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]