#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $4/10 + 9/6$]
#v(40pt)
//Antwort des Schülers: 16/60
#only("2-")[Deine Antwort: $16/60$]
#only("1")[
#voiceover("Wir sollen vier zehntel plus neun sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist sechzehn sechzigstel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 4/10 + 9/6 ≠ (10+6)/(10 dot 6) $]
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
#only("2-")[$ 4/10 = 4/10 dot 3/3 = 12/30 $]
#v(20pt)
#only("3-")[$ 9/6 = 9/6 dot 5/5 = 45/30 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner dreißig haben.")
]
#only("2")[
#voiceover("Vier zehntel wird mit drei drittel erweitert, das ergibt zwölf dreißigstel.")
]
#only("3")[
#voiceover("Neun sechstel wird mit fünf fünftel erweitert, das ergibt fünfundvierzig dreißigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 12/30 + 45/30 = (12+45)/30 = 57/30 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Zwölf dreißigstel plus fünfundvierzig dreißigstel ist gleich siebenundfünfzig dreißigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $4/10 + 9/6 = 57/30$, nicht $16/60$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann die Zähler!]
#only("1")[
#voiceover("Daher ist vier zehntel plus neun sechstel gleich siebenundfünfzig dreißigstel, nicht sechzehn sechzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann die Zähler!")
]
]