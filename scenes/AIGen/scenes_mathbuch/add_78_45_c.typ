#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $7/8 + 4/5$]
#v(40pt)
//Antwort des Schülers: 13/40
#only("2-")[Deine Antwort: $13/40$]
#only("1")[
#voiceover("Wir sollen sieben achtel plus vier fünftel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist dreizehn vierzigstel. Das ist leider nicht richtig.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 7/8 + 4/5 ≠ (8+5)/(8 dot 5) $]
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
#only("2-")[$ 7/8 = 7/8 dot 5/5 = 35/40 $]
#v(20pt)
#only("3-")[$ 4/5 = 4/5 dot 8/8 = 32/40 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner vierzig haben.")
]
#only("2")[
#voiceover("Sieben achtel wird mit fünf fünftel erweitert, das ergibt fünfunddreißig vierzigstel.")
]
#only("3")[
#voiceover("Vier fünftel wird mit acht achtel erweitert, das ergibt zweiunddreißig vierzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 35/40 + 32/40 = (35+32)/40 = 67/40 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Fünfunddreißig vierzigstel plus zweiunddreißig vierzigstel ist gleich siebenundsechzig vierzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $7/8 + 4/5 = 67/40$, nicht $13/40$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann die Zähler!]
#only("1")[
#voiceover("Daher ist sieben achtel plus vier fünftel gleich siebenundsechzig vierzigstel, nicht dreizehn vierzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann die Zähler!")
]
]