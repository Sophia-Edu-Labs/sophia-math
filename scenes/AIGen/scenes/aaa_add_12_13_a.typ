#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/2 + 1/3$]
#v(40pt)
#only("2-")[Deine Antwort: $1/5$]
#only("1")[
#voiceover("Wir wollen ja ein halb plus ein Drittel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist ein Fünftel. Das ist leider falsch.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 1/2 + 1/3 ≠ 1/(2+3) $]
#v(20pt)
#only("2-")[🛠️ Du kannst die Nenner nicht einfach nur addieren]
#v(20pt)
#only("3-")[🛠️ Du musst auch die Zähler anpassen]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Nenner direkt addiert hast. Ein halb plus ein Drittel ist nicht gleich 1 geteilt durch 2 plus 3.")
]
#only("2")[
#voiceover("Du kannst Brüche nicht auf diese Weise addieren. Um Brüche mit verschiedenen Nennern zu addieren, musst du zuerst einen gemeinsamen Nenner finden.")
]
#only("3")[
#voiceover("Und was auch wichtig ist: Wenn du die Nenner anpasst, musst du auch die Zähler entsprechend anpassen, damit der Wert der Brüche gleich bleibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 2: 2, 4, 6, 8, 10, ...]
#v(20pt)
#only("3-")[Vielfache von 3: 3, 6, 9, 12, 15, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 2 und 3 ist 6]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von 2 sind 2, 4, 6, 8, 10 und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von 3 sind 3, 6, 9, 12, 15 und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von 2 und 3 ist 6. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 1/2 = 1/2 dot 3/3 = 3/6 $]
#v(20pt)
#only("3-")[$ 1/3 = 1/3 dot 2/2 = 2/6 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner 6 haben.")
]
#only("2")[
#voiceover("ein halb wird mit drei drittel erweitert, das ergibt drei Sechstel.")
]
#only("3")[
#voiceover("ein drittel wird mit Zwei halbe erweitert, das ergibt zwei sechstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 3/6 + 2/6 = (3+2)/6 = 5/6 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("drei sechstel plus zwei sechstel ist gleich fünf sechstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $1/2 + 1/3 = 5/6$, nicht $1/5$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen, finde zuerst den gemeinsamen Nenner!]
#only("1")[
#voiceover("Daher ist ein halb plus ein drittel gleich fünf sechstel, nicht ein fünftel.")
]
#only("2")[
#voiceover("Denk immer daran, beim Addieren von Brüchen zuerst den gemeinsamen Nenner zu finden!")
]
]