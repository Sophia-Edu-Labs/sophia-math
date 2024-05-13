#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $2/12 + 3/10$]
#v(40pt)
#only("2-")[Deine Antwort ist leider nicht korrekt.]
#only("1")[
#voiceover("Wir sollen zwei Zwölftel plus drei Zehntel berechnen.")
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
#text(size: 30pt, weight: "bold")[Schritt 2: Erweitern]
#v(40pt)
#only("1-")[Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 2/12 = 2/12 dot 5/5 = 10/60 $]
#v(20pt)
#only("3-")[$ 3/10 = 3/10 dot 6/6 = 18/60 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner sechzig haben.")
]
#only("2")[
#voiceover("Zwei Zwölftel wird mit fünf Fünftel erweitert, das ergibt zehn Sechzigstel.")
]
#only("3")[
#voiceover("Drei Zehntel wird mit sechs Sechstel erweitert, das ergibt achtzehn Sechzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Addieren]
#v(40pt)
#only("1-")[Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 10/60 + 18/60 = (10+18)/60 = 28/60 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Zehn Sechzigstel plus achtzehn Sechzigstel ist gleich achtundzwanzig Sechzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Kürzen]
#v(40pt)
#only("1-")[Kürze den Bruch, wenn möglich]
#v(20pt)
#only("2-")[$ 28/60 = 28/60 : 4/4 = 7/15 $]
#only("1")[
#voiceover("Zum Schluss kürzen wir den Bruch, wenn möglich.")
]
#only("2")[
#voiceover("Achtundzwanzig Sechzigstel kann durch vier gekürzt werden, das ergibt sieben Fünfzehntel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $2/12 + 3/10 = 7/15$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen, finde zuerst den gemeinsamen Nenner und erweitere dann die Brüche entsprechend!]
#only("1")[
#voiceover("Daher ist zwei Zwölftel plus drei Zehntel gleich sieben Fünfzehntel.")
]
#only("2")[
#voiceover("Denk immer daran: Finde beim Addieren von Brüchen zuerst den gemeinsamen Nenner und erweitere dann die Brüche entsprechend!")
]
]