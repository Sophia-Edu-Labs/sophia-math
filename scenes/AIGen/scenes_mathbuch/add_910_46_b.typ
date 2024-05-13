#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $9/10 + 4/6$]
#v(40pt)
//Antwort des Schülers: 13/60
#only("2-")[Deine Antwort: $13/60$]
#only("1")[
#voiceover("Wir sollen neun Zehntel plus vier Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist dreizehn Sechzigstel. Das ist ein guter Versuch, aber leider nicht richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $9/10 + 4/6 ≠ (9+4)/(10*6)$]
#v(40pt)
#only("2-")[$9/10 ≠ 9/60$, #h(10pt)sondern #h(10pt)$9/10 = 54/60$]
#v(40pt)
#only("3-")[$4/6 ≠ 4/60$, #h(10pt)sondern #h(10pt)$4/6 = 40/60$]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler addiert und die Nenner multipliziert hast. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Neun Zehntel ist nicht gleich neun Sechzigstel, sondern vierundfünfzig Sechzigstel.")
]
#only("3")[
#voiceover("Und vier Sechstel ist nicht gleich vier Sechzigstel, sondern vierzig Sechzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 10: 10, 20, 30, 40, 50, 60, ...]
#v(20pt)
#only("3-")[Vielfache von 6: 6, 12, 18, 24, 30, 36, 42, 48, 54, 60, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 10 und 6 ist 60]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von zehn sind zehn, zwanzig, dreißig, vierzig, fünfzig, sechzig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von sechs sind sechs, zwölf, achtzehn, vierundzwanzig, dreißig, sechsunddreißig, zweiundvierzig, achtundvierzig, vierundfünfzig, sechzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von zehn und sechs ist sechzig. Das ist unser gemeinsamer Nenner.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$9/10 = 9/10 dot 6/6 = 54/60$]
#v(20pt)
#only("3-")[$4/6 = 4/6 dot 10/10 = 40/60$]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner sechzig haben.")
]
#only("2")[
#voiceover("Neun Zehntel wird mit sechs Sechstel erweitert, das ergibt vierundfünfzig Sechzigstel.")
]
#only("3")[
#voiceover("Vier Sechstel wird mit zehn Zehntel erweitert, das ergibt vierzig Sechzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$54/60 + 40/60 = (54+40)/60 = 94/60$]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Vierundfünfzig Sechzigstel plus vierzig Sechzigstel ist gleich vierundneunzig Sechzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $9/10 + 4/6 = 94/60$, nicht $13/60$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist neun Zehntel plus vier Sechstel gleich vierundneunzig Sechzigstel, nicht dreizehn Sechzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]