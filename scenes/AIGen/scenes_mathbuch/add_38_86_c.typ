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
//Antwort des Schülers: 14/48
#only("2-")[Deine Antwort: $14/48$]
#only("1")[
#voiceover("Wir sollen drei achtel plus acht sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist vierzehn achtundvierzigstel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 3/8 + 8/6 ≠ (8+6)/(8 dot 6) $]
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
#only("2-")[Vielfache von 8: 8, 16, 24, 32, 40, 48, ...]
#v(20pt)
#only("3-")[Vielfache von 6: 6, 12, 18, 24, 30, 36, 42, 48, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 8 und 6 ist 24]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von acht sind acht, sechzehn, vierundzwanzig, zweiunddreißig, vierzig, achtundvierzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von sechs sind sechs, zwölf, achtzehn, vierundzwanzig, dreißig, sechsunddreißig, zweiundvierzig, achtundvierzig und so weiter.")
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
#voiceover("Drei achtel wird mit drei drittel erweitert, das ergibt neun vierundzwanzigstel.")
]
#only("3")[
#voiceover("Acht sechstel wird mit vier viertel erweitert, das ergibt zweiunddreißig vierundzwanzigstel.")
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
#voiceover("Neun vierundzwanzigstel plus zweiunddreißig vierundzwanzigstel ist gleich einundvierzig vierundzwanzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $3/8 + 8/6 = 41/24$, nicht $14/48$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann die Zähler!]
#only("1")[
#voiceover("Daher ist drei achtel plus acht sechstel gleich einundvierzig vierundzwanzigstel, nicht vierzehn achtundvierzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann die Zähler!")
]
]