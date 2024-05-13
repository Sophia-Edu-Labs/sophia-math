#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $7/6 + 5/8$]
#v(40pt)
//Antwort des Schülers: 12/14
#only("2-")[Deine Antwort: $12/14$]
#only("1")[
#voiceover("Wir sollen sieben Sechstel plus fünf Achtel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist zwölf Vierzehntel. Das ist leider nicht richtig.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 7/6 + 5/8 ≠ (7+5)/(6+8) $]
#v(20pt)
#only("2-")[🛠️ Du kannst die Zähler und Nenner nicht einfach separat addieren]
#v(20pt)
#only("3-")[🛠️ Du musst die Brüche zuerst auf den gemeinsamen Nenner bringen]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner separat addiert hast. Sieben Sechstel plus fünf Achtel ist nicht gleich sieben plus fünf geteilt durch sechs plus acht.")
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
#only("2-")[Vielfache von 6: 6, 12, 18, 24, 30, ...]
#v(20pt)
#only("3-")[Vielfache von 8: 8, 16, 24, 32, 40, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 6 und 8 ist 24]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von sechs sind sechs, zwölf, achtzehn, vierundzwanzig, dreißig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von acht sind acht, sechzehn, vierundzwanzig, zweiunddreißig, vierzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von sechs und acht ist vierundzwanzig. Das ist unser gemeinsamer Nenner.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 7/6 = 7/6 dot 4/4 = 28/24 $]
#v(20pt)
#only("3-")[$ 5/8 = 5/8 dot 3/3 = 15/24 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner vierundzwanzig haben.")
]
#only("2")[
#voiceover("Sieben Sechstel wird mit vier Viertel erweitert, das ergibt achtundzwanzig Vierundzwanzigstel.")
]
#only("3")[
#voiceover("Fünf Achtel wird mit drei Drittel erweitert, das ergibt fünfzehn Vierundzwanzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 28/24 + 15/24 = (28+15)/24 = 43/24 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Achtundzwanzig Vierundzwanzigstel plus fünfzehn Vierundzwanzigstel ist gleich dreiundvierzig Vierundzwanzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $7/6 + 5/8 = 43/24$, nicht $12/14$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner, dann addiere die Zähler!]
#only("1")[
#voiceover("Daher ist sieben Sechstel plus fünf Achtel gleich dreiundvierzig Vierundzwanzigstel, nicht zwölf Vierzehntel.")
]
#only("2")[
#voiceover("Denk immer daran: Beim Addieren von Brüchen mit verschiedenen Nennern, bringe sie zuerst auf den gemeinsamen Nenner und addiere dann erst die Zähler!")
]
]