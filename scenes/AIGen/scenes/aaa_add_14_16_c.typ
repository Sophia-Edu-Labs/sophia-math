#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/4 + 1/6$]
#v(40pt)
#only("2-")[Deine Antwort: $1/24$]
#only("1")[
#voiceover("Unsere Aufgabe ist es, ein Viertel plus ein Sechstel zu berechnen.")
]
#only("2")[
#voiceover("Deine Antwort ist ein Vierundzwanzigstel. Das ist zwar nah dran, aber leider nicht ganz richtig.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 1/4 + 1/6 ≠ 1/(4 dot 6) $]
#v(20pt)
#only("2-")[🛠️ Du kannst die Nenner nicht einfach multiplizieren]
#v(20pt)
#only("3-")[🛠️ Du musst auch die Zähler anpassen]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Nenner multipliziert hast. Ein Viertel plus ein Sechstel ist nicht gleich eins geteilt durch vier mal sechs.")
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
#only("2-")[Vielfache von 4: 4, 8, 12, 16, 20, 24, ...]
#v(20pt)
#only("3-")[Vielfache von 6: 6, 12, 18, 24, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 4 und 6 ist 12]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von vier sind vier, acht, zwölf, sechzehn, zwanzig, vierundzwanzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von sechs sind sechs, zwölf, achtzehn, vierundzwanzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von vier und sechs ist zwölf. Das ist unser gemeinsamer Nenner.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 1/4 = 1/4 dot 3/3 = 3/12 $]
#v(20pt)
#only("3-")[$ 1/6 = 1/6 dot 2/2 = 2/12 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner zwölf haben.")
]
#only("2")[
#voiceover("Ein Viertel wird mit drei Drittel erweitert, das ergibt drei Zwölftel.")
]
#only("3")[
#voiceover("Ein Sechstel wird mit zwei Halbe erweitert, das ergibt zwei Zwölftel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 3/12 + 2/12 = (3+2)/12 = 5/12 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Drei Zwölftel plus zwei Zwölftel ist gleich fünf Zwölftel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $1/4 + 1/6 = 5/12$, nicht $1/24$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen, finde zuerst den gemeinsamen Nenner und erweitere dann die Brüche entsprechend!]
#only("1")[
#voiceover("Daher ist ein Viertel plus ein Sechstel gleich fünf Zwölftel, nicht ein Vierundzwanzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Finde beim Addieren von Brüchen zuerst den gemeinsamen Nenner und erweitere dann die Brüche entsprechend!")
]
]