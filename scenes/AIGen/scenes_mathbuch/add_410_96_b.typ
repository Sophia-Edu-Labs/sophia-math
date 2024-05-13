#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $4/10 + 9/6$]
#v(40pt)
//Antwort des Schülers: 13/60
#only("2-")[Deine Antwort: $13/60$]
#only("1")[
#voiceover("Wir sollen vier Zehntel plus neun Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist dreizehn Sechzigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $4/10 + 9/6 ≠ (4+9)/(10*6)$]
#v(40pt)
#only("2-")[$4/10 ≠ 4/60$, #h(10pt)sondern #h(10pt)$4/10 = 24/60$]
#v(40pt)
#only("3-")[$9/6 ≠ 9/60$, #h(10pt)sondern #h(10pt)$9/6 = 90/60$]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler addiert und die Nenner multipliziert hast. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Vier Zehntel ist nicht gleich vier Sechzigstel, sondern vierundzwanzig Sechzigstel.")
]
#only("3")[
#voiceover("Und neun Sechstel ist nicht gleich neun Sechzigstel, sondern neunzig Sechzigstel.")
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
#only("2-")[$4/10 = 4/10 dot 6/6 = 24/60$]
#v(20pt)
#only("3-")[$9/6 = 9/6 dot 10/10 = 90/60$]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner sechzig haben.")
]
#only("2")[
#voiceover("Vier Zehntel wird mit sechs Sechstel erweitert, das ergibt vierundzwanzig Sechzigstel.")
]
#only("3")[
#voiceover("Neun Sechstel wird mit zehn Zehntel erweitert, das ergibt neunzig Sechzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$24/60 + 90/60 = (24+90)/60 = 114/60$]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Vierundzwanzig Sechzigstel plus neunzig Sechzigstel ist gleich einhundertvierzehn Sechzigstel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $4/10 + 9/6 = 114/60$, nicht $13/60$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist vier Zehntel plus neun Sechstel gleich einhundertvierzehn Sechzigstel, nicht dreizehn Sechzigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]