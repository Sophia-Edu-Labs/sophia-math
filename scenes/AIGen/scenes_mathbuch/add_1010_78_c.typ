#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $10/10 + 7/8$]
#v(40pt)
//Antwort des Schülers: 18/80
#only("2-")[Deine Antwort: $18/80$]
#only("1")[
#voiceover("Wir sollen zehn zehntel plus sieben achtel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist achtzehn achtzigstel. Das ist leider nicht richtig.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $10/10 + 7/8 ≠ (10+8)/(10 dot 8)$]
#v(20pt)
#only("2-")[🛠️ Du hast die Summe der Zähler durch das Produkt der Nenner geteilt]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche zuerst auf den gemeinsamen Nenner bringen und dann die Zähler addieren]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Summe der Zähler durch das Produkt der Nenner geteilt hast.")
]
#only("2")[
#voiceover("Indem du die Nenner multiplizierst und die Zähler addierst, erhältst du nicht das korrekte Ergebnis.")
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
#only("2-")[Vielfache von 10: 10, 20, 30, 40, ...]
#v(20pt)
#only("3-")[Vielfache von 8: 8, 16, 24, 32, 40, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 10 und 8 ist 40]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von zehn sind zehn, zwanzig, dreißig, vierzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von acht sind acht, sechzehn, vierundzwanzig, zweiunddreißig, vierzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von zehn und acht ist vierzig. Das ist unser gemeinsamer Nenner.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$10/10 = 10/10 dot 4/4 = 40/40$]
#v(20pt)
#only("3-")[$7/8 = 7/8 dot 5/5 = 35/40$]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner vierzig haben.")
]
#only("2")[
#voiceover("Zehn zehntel wird mit vier viertel erweitert, das ergibt vierzig vierzigstel.")
]
#only("3")[
#voiceover("Sieben achtel wird mit fünf fünftel erweitert, das ergibt fünfunddreißig vierzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$40/40 + 35/40 = (40+35)/40 = 75/40$]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Vierzig vierzigstel plus fünfunddreißig vierzigstel ist gleich fünfundsiebzig vierzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $10/10 + 7/8 = 75/40$, nicht $18/80$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann die Zähler!]
#only("1")[
#voiceover("Daher ist zehn zehntel plus sieben achtel gleich fünfundsiebzig vierzigstel, nicht achtzehn achtzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann die Zähler!")
]
]