#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $10/10 + 7/8$]
#v(40pt)
//Antwort des Schülers: 1.875
#only("2-")[Deine Antwort: $1.875$]
#only("1")[
#voiceover("Wir sollen zehn Zehntel plus sieben Achtel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist eins Komma acht sieben fünf. Das ist vollkommen richtig! Lass uns sehen, wie du zu dieser Antwort gekommen bist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 10: 10, 20, 30, 40, 50, ...]
#v(20pt)
#only("3-")[Vielfache von 8: 8, 16, 24, 32, 40, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 10 und 8 ist 40]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von zehn sind zehn, zwanzig, dreißig, vierzig, fünfzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von acht sind acht, sechzehn, vierundzwanzig, zweiunddreißig, vierzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von zehn und acht ist vierzig. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Erweitern]
#v(40pt)
#only("1-")[Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$10/10 = 10/10 dot 4/4 = 40/40$]
#v(20pt)
#only("3-")[$7/8 = 7/8 dot 5/5 = 35/40$]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner vierzig haben.")
]
#only("2")[
#voiceover("Zehn Zehntel wird mit vier Viertel erweitert, das ergibt vierzig Vierzigstel.")
]
#only("3")[
#voiceover("Sieben Achtel wird mit fünf Fünftel erweitert, das ergibt fünfunddreißig Vierzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Addieren]
#v(40pt)
#only("1-")[Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$40/40 + 35/40 = (40+35)/40 = 75/40 = 1.875$]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Vierzig Vierzigstel plus fünfunddreißig Vierzigstel ist gleich fünfundsiebzig Vierzigstel, was eins Komma acht sieben fünf ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $10/10 + 7/8 = 1.875$, und das hast du richtig berechnet!]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen, finde zuerst den gemeinsamen Nenner und erweitere dann die Brüche entsprechend!]
#only("1")[
#voiceover("Daher ist zehn Zehntel plus sieben Achtel gleich eins Komma acht sieben fünf, und das hast du ganz richtig berechnet!")
]
#only("2")[
#voiceover("Denk immer daran: Finde beim Addieren von Brüchen zuerst den gemeinsamen Nenner und erweitere dann die Brüche entsprechend!")
]
]