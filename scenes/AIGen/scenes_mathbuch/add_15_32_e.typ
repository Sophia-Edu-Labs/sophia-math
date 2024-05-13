#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/5 + 3/2$]
#v(40pt)
#only("2-")[Deine Antwort ist leider nicht korrekt.]
#only("1")[
#voiceover("Wir sollen ein Fünftel plus drei Halbe berechnen.")
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
#only("2-")[Vielfache von 5: 5, 10, 15, 20, 25, ...]
#v(20pt)
#only("3-")[Vielfache von 2: 2, 4, 6, 8, 10, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 5 und 2 ist 10]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von fünf sind fünf, zehn, fünfzehn, zwanzig, fünfundzwanzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von zwei sind zwei, vier, sechs, acht, zehn und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von fünf und zwei ist zehn. Das ist unser gemeinsamer Nenner.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Erweitern]
#v(40pt)
#only("1-")[Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 1/5 = 1/5 dot 2/2 = 2/10 $]
#v(20pt)
#only("3-")[$ 3/2 = 3/2 dot 5/5 = 15/10 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner zehn haben.")
]
#only("2")[
#voiceover("Ein Fünftel wird mit zwei Halbe erweitert, das ergibt zwei Zehntel.")
]
#only("3")[
#voiceover("Drei Halbe wird mit fünf Fünftel erweitert, das ergibt fünfzehn Zehntel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Addieren]
#v(40pt)
#only("1-")[Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 2/10 + 15/10 = (2+15)/10 = 17/10 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Zwei Zehntel plus fünfzehn Zehntel ist gleich siebzehn Zehntel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $1/5 + 3/2 = 17/10$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen, finde zuerst den gemeinsamen Nenner und erweitere dann die Brüche entsprechend!]
#only("1")[
#voiceover("Daher ist ein Fünftel plus drei Halbe gleich siebzehn Zehntel.")
]
#only("2")[
#voiceover("Denk immer daran: Finde beim Addieren von Brüchen zuerst den gemeinsamen Nenner und erweitere dann die Brüche entsprechend!")
]
]