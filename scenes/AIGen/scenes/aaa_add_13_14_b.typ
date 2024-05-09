#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $1/3 + 1/4$]
#v(40pt)
#only("2-")[Deine Antwort: $2/7$]
#only("1")[
#voiceover("Wir wollen ein Drittel plus ein Viertel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist zwei siebtel. Das ist leider falsch.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 1/3 + 1/4 ≠ (1+1)/(3+4) $]
#v(20pt)
#only("2-")[🛠️ Du kannst Zähler und Nenner nicht einfach addieren]
#v(20pt)
#only("3-")[🛠️ Du musst einen gemeinsamen Nenner finden]
#only("1")[
#voiceover("Dein Fehler ist, dass du einfach die Zähler addiert und die Nenner addiert hast. Ein Drittel plus ein Viertel ist nicht gleich eins plus eins geteilt durch drei plus vier.")
]
#only("2")[
#voiceover("Um Brüche zu addieren, kannst du nicht einfach die Zähler addieren und die Nenner addieren. Das funktioniert so nicht.")
]
#only("3")[
#voiceover("Stattdessen musst du zuerst einen gemeinsamen Nenner für die Brüche finden.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 3: 3, 6, 9, 12, 15, ...]
#v(20pt)
#only("3-")[Vielfache von 4: 4, 8, 12, 16, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 3 und 4 ist 12]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von drei sind drei, sechs, neun, zwölf, fünfzehn und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von vier sind vier, acht, zwölf, sechzehn und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von drei und vier ist zwölf. Das ist unser gemeinsamer Nenner.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 1/3 = 1/3 dot 4/4 = 4/12 $]
#v(20pt)
#only("3-")[$ 1/4 = 1/4 dot 3/3 = 3/12 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner zwölf haben.")
]
#only("2")[
#voiceover("Ein Drittel wird mit vier viertel erweitert, das ergibt vier zwölftel.")
]
#only("3")[
#voiceover("Ein Viertel wird mit drei drittel erweitert, das ergibt drei zwölftel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 4/12 + 3/12 = (4+3)/12 = 7/12 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Vier zwölftel plus drei zwölftel ist gleich sieben zwölftel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $1/3 + 1/4 = 7/12$, nicht $2/7$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen, finde zuerst den gemeinsamen Nenner!]
#only("1")[
#voiceover("Daher ist ein Drittel plus ein Viertel gleich sieben Zwölftel, nicht zwei siebtel.")
]
#only("2")[
#voiceover("Denk immer daran, beim Addieren von Brüchen zuerst den gemeinsamen Nenner zu finden!")
]
]