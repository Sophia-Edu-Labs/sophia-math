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
#only("2-")[Deine Antwort ist leider nicht korrekt.]
#only("1")[
#voiceover("Wir sollen ein Zehntel plus sieben Sechstel berechnen.")
]
#only("2")[
#voiceover("Deine Antwort ist leider nicht korrekt. Lass uns sehen, wie wir diese Aufgabe richtig lösen können.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
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
#text(size: 30pt, weight: "bold")[Schritt 2: Erweitern]
#v(40pt)
#only("1-")[Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$1/10 = 1/10 dot 3/3 = 3/30$]
#v(20pt)
#only("3-")[$7/6 = 7/6 dot 5/5 = 35/30$]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner dreißig haben.")
]
#only("2")[
#voiceover("Ein Zehntel wird mit drei Drittel erweitert, das ergibt drei Dreißigstel.")
]
#only("3")[
#voiceover("Sieben Sechstel wird mit fünf Fünftel erweitert, das ergibt fünfunddreißig Dreißigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Addieren]
#v(40pt)
#only("1-")[Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$3/30 + 35/30 = (3+35)/30 = 38/30$]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Drei Dreißigstel plus fünfunddreißig Dreißigstel ist gleich achtunddreißig Dreißigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $1/10 + 7/6 = 38/30 = 19/15$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen, finde zuerst den gemeinsamen Nenner und erweitere dann die Brüche entsprechend!]
#only("1")[
#voiceover("Daher ist ein Zehntel plus sieben Sechstel gleich achtunddreißig Dreißigstel, was weiter gekürzt neunzehn Fünfzehntel ergibt.")
]
#only("2")[
#voiceover("Denk immer daran: Finde beim Addieren von Brüchen zuerst den gemeinsamen Nenner und erweitere dann die Brüche entsprechend!")
]
]