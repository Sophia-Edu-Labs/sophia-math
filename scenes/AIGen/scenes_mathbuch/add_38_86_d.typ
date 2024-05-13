#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $3/8 + 8/6$]
#v(40pt)
//Antwort des Schülers: 23/12
#only("2-")[Deine Antwort: $23/12$]
#only("1")[
#voiceover("Wir sollen drei Achtel plus acht Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist dreiundzwanzig Zwölftel. Das ist vollkommen richtig! Lass uns sehen, wie du zu dieser Antwort gekommen bist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 8: 8, 16, 24, 32, 40, ...]
#v(20pt)
#only("3-")[Vielfache von 6: 6, 12, 18, 24, 30, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 8 und 6 ist 24]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von acht sind acht, sechzehn, vierundzwanzig, zweiunddreißig, vierzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von sechs sind sechs, zwölf, achtzehn, vierundzwanzig, dreißig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von acht und sechs ist vierundzwanzig. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Erweitern]
#v(40pt)
#only("1-")[Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 3/8 = 3/8 dot 3/3 = 9/24 $]
#v(20pt)
#only("3-")[$ 8/6 = 8/6 dot 4/4 = 32/24 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner vierundzwanzig haben.")
]
#only("2")[
#voiceover("Drei Achtel wird mit drei Drittel erweitert, das ergibt neun Vierundzwanzigstel.")
]
#only("3")[
#voiceover("Acht Sechstel wird mit vier Viertel erweitert, das ergibt zweiunddreißig Vierundzwanzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Addieren]
#v(40pt)
#only("1-")[Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 9/24 + 32/24 = (9+32)/24 = 41/24 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Neun Vierundzwanzigstel plus zweiunddreißig Vierundzwanzigstel ist gleich einundvierzig Vierundzwanzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $3/8 + 8/6 = 41/24$, und das hast du richtig berechnet!]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Addieren von Brüchen, finde zuerst den gemeinsamen Nenner und erweitere dann die Brüche entsprechend!]
#only("1")[
#voiceover("Daher ist drei Achtel plus acht Sechstel gleich einundvierzig Vierundzwanzigstel, und das hast du ganz richtig berechnet!")
]
#only("2")[
#voiceover("Denk immer daran: Finde beim Addieren von Brüchen zuerst den gemeinsamen Nenner und erweitere dann die Brüche entsprechend!")
]
]