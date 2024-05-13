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
//Antwort des Schülers: 17/80
#only("2-")[Deine Antwort: $17/80$]
#only("1")[
#voiceover("Wir sollen zehn Zehntel plus sieben Achtel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist siebzehn Achtzigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 10/10 + 7/8 ≠  (10+7)/(10*8) $]
#v(40pt)
#only("2-")[$ 10/10 ≠ 10/80$, #h(10pt)sondern #h(10pt)$10/10 = 1 $]
#v(40pt)
#only("3-")[$ 7/8 ≠ 7/80$, #h(10pt)sondern #h(10pt)$7/8 = 7/8 $]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner einfach addiert und multipliziert hast. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Zehn Zehntel ist nicht gleich zehn Achtzigstel, sondern eins.")
]
#only("3")[
#voiceover("Und sieben Achtel ist nicht gleich sieben Achtzigstel, sondern sieben Achtel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 10: 10, 20, 30, 40, 50, 60, 70, 80, ...]
#v(20pt)
#only("3-")[Vielfache von 8: 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 10 und 8 ist 80]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von zehn sind zehn, zwanzig, dreißig, vierzig, fünfzig, sechzig, siebzig, achtzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von acht sind acht, sechzehn, vierundzwanzig, zweiunddreißig, vierzig, achtundvierzig, sechsundfünfzig, vierundsechzig, zweiundsiebzig, achtzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von zehn und acht ist achtzig. Das ist unser gemeinsamer Nenner.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$ 10/10 = 10/10 dot 8/8 = 80/80 $]
#v(20pt)
#only("3-")[$ 7/8 = 7/8 dot 10/10 = 70/80 $]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner achtzig haben.")
]
#only("2")[
#voiceover("Zehn Zehntel wird mit acht Achtel erweitert, das ergibt achtzig Achtzigstel.")
]
#only("3")[
#voiceover("Sieben Achtel wird mit zehn Zehntel erweitert, das ergibt siebzig Achtzigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$ 80/80 + 70/80 = (80+70)/80 = 150/80 = 15/8 $]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Achtzig Achtzigstel plus siebzig Achtzigstel ist gleich hundertfünfzig Achtzigstel, was gleich fünfzehn Achtel ist.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $10/10 + 7/8 = 15/8$, nicht $17/80$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist zehn Zehntel plus sieben Achtel gleich fünfzehn Achtel, nicht siebzehn Achtzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]