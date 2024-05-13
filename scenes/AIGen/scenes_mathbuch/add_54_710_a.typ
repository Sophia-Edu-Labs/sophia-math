#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $5/4 + 7/10$]
#v(40pt)
//Antwort des Schülers: 12/14
#only("2-")[Deine Antwort: $12/14$]
#only("1")[
#voiceover("Wir sollen fünf Viertel plus sieben Zehntel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist zwölf Vierzehntel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $5/4 + 7/10 ≠ (5+7)/(4+10)$]
#v(20pt)
#only("2-")[🛠️ Du kannst die Zähler und Nenner nicht einfach separat addieren]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche zuerst auf den gemeinsamen Nenner bringen]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner separat addiert hast. Fünf Viertel plus sieben Zehntel ist nicht gleich fünf plus sieben geteilt durch vier plus zehn.")
]
#only("2")[
#voiceover("Indem du die Zähler und Nenner separat addierst, veränderst du den Wert der Brüche, aber...")
]
#only("3")[
#voiceover("...du musst die Brüche zuerst auf den gemeinsamen Nenner bringen, bevor du die Zähler addieren kannst.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 4: 4, 8, 12, 16, 20, ...]
#v(20pt)
#only("3-")[Vielfache von 10: 10, 20, 30, 40, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 4 und 10 ist 20]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von vier sind vier, acht, zwölf, sechzehn, zwanzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von zehn sind zehn, zwanzig, dreißig, vierzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von vier und zehn ist zwanzig. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$5/4 = 5/4 dot 5/5 = 25/20$]
#v(20pt)
#only("3-")[$7/10 = 7/10 dot 2/2 = 14/20$]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner zwanzig haben.")
]
#only("2")[
#voiceover("Fünf Viertel wird mit fünf Fünftel erweitert, das ergibt fünfundzwanzig Zwanzigstel.")
]
#only("3")[
#voiceover("Sieben Zehntel wird mit zwei Halbe erweitert, das ergibt vierzehn Zwanzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$25/20 + 14/20 = (25+14)/20 = 39/20$]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Fünfundzwanzig Zwanzigstel plus vierzehn Zwanzigstel ist gleich neununddreißig Zwanzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $5/4 + 7/10 = 39/20$, nicht $12/14$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner, dann addiere die Zähler!]
#only("1")[
#voiceover("Daher ist fünf Viertel plus sieben Zehntel gleich neununddreißig Zwanzigstel, nicht zwölf Vierzehntel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann erst die Zähler!")
]
]