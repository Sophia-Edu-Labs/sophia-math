#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $5/5 + 6/6$]
#v(40pt)
//Antwort des Schülers: 11/11
#only("2-")[Deine Antwort: $11/11$]
#only("1")[
#voiceover("Wir sollen fünf Fünftel plus sechs Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist elf Elftel. Das ist leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $5/5 + 6/6 ≠ (5+6)/(5+6)$]
#v(20pt)
#only("2-")[🛠️ Du kannst die Zähler und Nenner nicht einfach separat addieren]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche zuerst auf den gemeinsamen Nenner bringen]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner separat addiert hast. Fünf Fünftel plus sechs Sechstel ist nicht gleich fünf plus sechs geteilt durch fünf plus sechs.")
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
#only("2-")[Vielfache von 5: 5, 10, 15, 20, 25, ...]
#v(20pt)
#only("3-")[Vielfache von 6: 6, 12, 18, 24, 30, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 5 und 6 ist 30]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von fünf sind fünf, zehn, fünfzehn, zwanzig, fünfundzwanzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von sechs sind sechs, zwölf, achtzehn, vierundzwanzig, dreißig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von fünf und sechs ist dreißig. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$5/5 = 5/5 dot 6/6 = 30/30$]
#v(20pt)
#only("3-")[$6/6 = 6/6 dot 5/5 = 30/30$]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner dreißig haben.")
]
#only("2")[
#voiceover("Fünf Fünftel wird mit sechs Sechstel erweitert, das ergibt dreißig Dreißigstel.")
]
#only("3")[
#voiceover("Sechs Sechstel wird mit fünf Fünftel erweitert, das ergibt ebenfalls dreißig Dreißigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$30/30 + 30/30 = (30+30)/30 = 60/30 = 2$]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Dreißig Dreißigstel plus dreißig Dreißigstel ist gleich sechzig Dreißigstel, was vereinfacht zwei ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $5/5 + 6/6 = 2$, nicht $11/11$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner, dann addiere die Zähler!]
#only("1")[
#voiceover("Daher ist fünf Fünftel plus sechs Sechstel gleich zwei, nicht elf Elftel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann erst die Zähler!")
]
]