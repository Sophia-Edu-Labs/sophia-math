#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $5/4 + 7/10$]
#v(40pt)
//Antwort des Schülers: 12/40
#only("2-")[Deine Antwort: $12/40$]
#only("1")[
#voiceover("Wir sollen fünf Viertel plus sieben Zehntel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist zwölf Vierzigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 5/4 + 7/10 ≠ (5+7)/(4*10) $]
#v(40pt)
#only("2-")[$ 5/4 ≠ 5/40$, #h(10pt)sondern #h(10pt)$5/4 = 50/40 $]
#v(40pt)
#only("3-")[$ 7/10 ≠ 7/40$, #h(10pt)sondern #h(10pt)$7/10 = 28/40 $]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner einfach addiert und multipliziert hast. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Fünf Viertel ist nicht gleich fünf Vierzigstel, sondern fünfzig Vierzigstel.")
]
#only("3")[
#voiceover("Und sieben Zehntel ist nicht gleich sieben Vierzigstel, sondern achtundzwanzig Vierzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 4: 4, 8, 12, 16, 20, 24, 28, 32, 36, 40, ...]
#v(20pt)
#only("3-")[Vielfache von 10: 10, 20, 30, 40, 50, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 4 und 10 ist 40]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von vier sind vier, acht, zwölf, sechzehn, zwanzig, vierundzwanzig, achtundzwanzig, zweiunddreißig, sechsunddreißig, vierzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von zehn sind zehn, zwanzig, dreißig, vierzig, fünfzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von vier und zehn ist vierzig. Das ist unser gemeinsamer Nenner.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 5/4 = 5/4 dot 10/10 = 50/40 $]
#v(20pt)
#only("3-")[$ 7/10 = 7/10 dot 4/4 = 28/40 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner vierzig haben.")
]
#only("2")[
#voiceover("Fünf Viertel wird mit zehn Zehntel erweitert, das ergibt fünfzig Vierzigstel.")
]
#only("3")[
#voiceover("Sieben Zehntel wird mit vier Viertel erweitert, das ergibt achtundzwanzig Vierzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 50/40 + 28/40 = (50+28)/40 = 78/40 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Fünfzig Vierzigstel plus achtundzwanzig Vierzigstel ist gleich achtundsiebzig Vierzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $5/4 + 7/10 = 78/40$, nicht $12/40$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist fünf Viertel plus sieben Zehntel gleich achtundsiebzig Vierzigstel, nicht zwölf Vierzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]