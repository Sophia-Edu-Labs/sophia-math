#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/3 + 1/5$]
#v(40pt)
#only("2-")[Deine Antwort: $1/15$]
#only("1")[
#voiceover("Wir sollen ein Drittel plus ein Fünftel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist ein Fünfzehntel. Das ist zwar nah dran, aber leider nicht ganz richtig.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 1/3 + 1/5 ≠ 1/(3 dot 5) $]
#v(20pt)
#only("2-")[🛠️ Du kannst die Nenner nicht einfach multiplizieren]
#v(20pt)
#only("3-")[🛠️ Du musst auch die Zähler anpassen]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Nenner multipliziert hast. Ein Drittel plus ein Fünftel ist nicht gleich eins geteilt durch drei mal fünf.")
]
#only("2")[
#voiceover("Indem du die Nenner multiplizierst, hast du zwar den richtigen gemeinsamen Nenner gefunden, aber...")
]
#only("3")[
#voiceover("...du musst auch die Zähler entsprechend anpassen, damit der Wert der Brüche gleich bleibt.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 3: 3, 6, 9, 12, 15, ...]
#v(20pt)
#only("3-")[Vielfache von 5: 5, 10, 15, 20, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 3 und 5 ist 15]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von drei sind drei, sechs, neun, zwölf, fünfzehn und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von fünf sind fünf, zehn, fünfzehn, zwanzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von drei und fünf ist fünfzehn. Das ist unser gemeinsamer Nenner.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 1/3 = 1/3 dot 5/5 = 5/15 $]
#v(20pt)
#only("3-")[$ 1/5 = 1/5 dot 3/3 = 3/15 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner fünfzehn haben.")
]
#only("2")[
#voiceover("Ein Drittel wird mit fünf Fünftel erweitert, das ergibt fünf Fünfzehntel.")
]
#only("3")[
#voiceover("Ein Fünftel wird mit drei Drittel erweitert, das ergibt drei Fünfzehntel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 5/15 + 3/15 = (5+3)/15 = 8/15 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Fünf Fünfzehntel plus drei Fünfzehntel ist gleich acht Fünfzehntel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $1/3 + 1/5 = 8/15$, nicht $1/15$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen, finde zuerst den gemeinsamen Nenner und passe dann die Zähler an!]
#only("1")[
#voiceover("Daher ist ein Drittel plus ein Fünftel gleich acht Fünfzehntel, nicht ein Fünfzehntel.")
]
#only("2")[
#voiceover("Denk immer daran: Finde beim Addieren von Brüchen zuerst den gemeinsamen Nenner und passe dann die Zähler entsprechend an!")
]
]