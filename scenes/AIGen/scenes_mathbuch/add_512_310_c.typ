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
//Antwort des Schülers: 22/120
#only("2-")[Deine Antwort: $22/120$]
#only("1")[
#voiceover("Wir sollen fünf zwölftel plus drei zehntel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist zweiundzwanzig hundertzwanzigstel. Das ist leider nicht richtig.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 5/12 + 3/10 ≠ (12+10)/(12 dot 10) $]
#v(20pt)
#only("2-")[🛠️ Du hast die Summe der Nenner durch das Produkt der Nenner geteilt und die Zähler ignoriert]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche zuerst auf den gemeinsamen Nenner bringen und dann die Zähler addieren]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Summe der Nenner durch das Produkt der Nenner geteilt und die Zähler außen vor gelassen hast.")
]
#only("2")[
#voiceover("Indem du die Zähler ignorierst und nur mit den Nennern rechnest, erhältst du nicht das korrekte Ergebnis.")
]
#only("3")[
#voiceover("Du musst die Brüche zuerst auf den gemeinsamen Nenner bringen und dann die Zähler addieren.")
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
#only("2-")[$ 5/12 = 5/12 dot 5/5 = 25/60 $]
#v(20pt)
#only("3-")[$ 3/10 = 3/10 dot 6/6 = 18/60 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner sechzig haben.")
]
#only("2")[
#voiceover("Fünf zwölftel wird mit fünf fünftel erweitert, das ergibt fünfundzwanzig sechzigstel.")
]
#only("3")[
#voiceover("Drei zehntel wird mit sechs sechstel erweitert, das ergibt achtzehn sechzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 25/60 + 18/60 = (25+18)/60 = 43/60 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Fünfundzwanzig sechzigstel plus achtzehn sechzigstel ist gleich dreiundvierzig sechzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $5/12 + 3/10 = 43/60$, nicht $22/120$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann die Zähler!]
#only("1")[
#voiceover("Daher ist fünf zwölftel plus drei zehntel gleich dreiundvierzig sechzigstel, nicht zweiundzwanzig hundertzwanzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann die Zähler!")
]
]