#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $4/3 + 2/4$]
#v(40pt)
//Antwort des Schülers: 6/12
#only("2-")[Deine Antwort: $6/12$]
#only("1")[
#voiceover("Wir sollen vier Drittel plus zwei Viertel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist sechs Zwölftel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $4/3 + 2/4 ≠ (4+2)/(3*4)$]
#v(40pt)
#only("2-")[$4/3 ≠ 4/12$, #h(10pt)sondern #h(10pt)$4/3 = 16/12$]
#v(40pt)
#only("3-")[$2/4 ≠ 2/12$, #h(10pt)sondern #h(10pt)$2/4 = 6/12$]
#only("1")[
#voiceover("Dein Fehler ist, dass du zwar den gemeinsamen Nenner zwölf gefunden hast, aber die Zähler einfach nur addiert hast, ohne sie anzupassen. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Vier Drittel ist nicht gleich vier Zwölftel, sondern sechzehn Zwölftel.")
]
#only("3")[
#voiceover("Und zwei Viertel ist nicht gleich zwei Zwölftel, sondern sechs Zwölftel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 3: 3, 6, 9, 12, 15, ...]
#v(20pt)
#only("3-")[Vielfache von 4: 4, 8, 12, 16, 20, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 3 und 4 ist 12]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von drei sind drei, sechs, neun, zwölf, fünfzehn und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von vier sind vier, acht, zwölf, sechzehn, zwanzig und so weiter.")
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
#only("2-")[$4/3 = 4/3 dot 4/4 = 16/12$]
#v(20pt)
#only("3-")[$2/4 = 2/4 dot 3/3 = 6/12$]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner zwölf haben.")
]
#only("2")[
#voiceover("Vier Drittel wird mit vier Viertel erweitert, das ergibt sechzehn Zwölftel.")
]
#only("3")[
#voiceover("Zwei Viertel wird mit drei Drittel erweitert, das ergibt sechs Zwölftel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$16/12 + 6/12 = (16+6)/12 = 22/12$]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Sechzehn Zwölftel plus sechs Zwölftel ist gleich zweiundzwanzig Zwölftel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $4/3 + 2/4 = 22/12$, nicht $6/12$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist vier Drittel plus zwei Viertel gleich zweiundzwanzig Zwölftel, nicht sechs Zwölftel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]