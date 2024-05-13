#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $2/3 + 3/10$]
#v(40pt)
//Antwort des Schülers: 5/30
#only("2-")[Deine Antwort: $5/30$]
#only("1")[
#voiceover("Wir sollen zwei Drittel plus drei Zehntel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist fünf Dreißigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $2/3 + 3/10 ≠ (2+3)/(3*10)$]
#v(40pt)
#only("2-")[$2/3 ≠ 2/30$, #h(10pt)sondern #h(10pt)$2/3 = 20/30$]
#v(40pt)
#only("3-")[$3/10 ≠ 3/30$, #h(10pt)sondern #h(10pt)$3/10 = 9/30$]
#only("1")[
#voiceover("Dein Fehler ist, dass du zwar den gemeinsamen Nenner dreißig gefunden hast, aber die Zähler einfach nur addiert hast, ohne sie anzupassen. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Zwei Drittel ist nicht gleich zwei Dreißigstel, sondern zwanzig Dreißigstel.")
]
#only("3")[
#voiceover("Und drei Zehntel ist nicht gleich drei Dreißigstel, sondern neun Dreißigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Gemeinsamer Nenner]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Finde das kleinste gemeinsame Vielfache (kgV) der Nenner]
#v(20pt)
#only("2-")[Vielfache von 3: 3, 6, 9, 12, 15, 18, 21, 24, 27, 30, ...]
#v(20pt)
#only("3-")[Vielfache von 10: 10, 20, 30, 40, 50, ...]
#v(20pt)
#only("4-")[Das kleinste gemeinsame Vielfache von 3 und 10 ist 30]
#only("1")[
#voiceover("Um den gemeinsamen Nenner zu finden, suchst du das kleinste gemeinsame Vielfache der Nenner.")
]
#only("2")[
#voiceover("Die Vielfachen von drei sind drei, sechs, neun, zwölf, fünfzehn, achtzehn, einundzwanzig, vierundzwanzig, siebenundzwanzig, dreißig und so weiter.")
]
#only("3")[
#voiceover("Die Vielfachen von zehn sind zehn, zwanzig, dreißig, vierzig, fünfzig und so weiter.")
]
#only("4")[
#voiceover("Das kleinste gemeinsame Vielfache von drei und zehn ist dreißig. Das ist unser gemeinsamer Nenner.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Erweitern]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Erweitere die Brüche, so dass sie den gemeinsamen Nenner haben]
#v(20pt)
#only("2-")[$2/3 = 2/3 dot 10/10 = 20/30$]
#v(20pt)
#only("3-")[$3/10 = 3/10 dot 3/3 = 9/30$]
#only("1")[
#voiceover("Als nächstes erweiterst du die Brüche, so dass sie den gemeinsamen Nenner dreißig haben.")
]
#only("2")[
#voiceover("Zwei Drittel wird mit zehn Zehntel erweitert, das ergibt zwanzig Dreißigstel.")
]
#only("3")[
#voiceover("Drei Zehntel wird mit drei Drittel erweitert, das ergibt neun Dreißigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 3:] Addiere die Zähler, behalte den gemeinsamen Nenner]
#v(20pt)
#only("2-")[$20/30 + 9/30 = (20+9)/30 = 29/30$]
#only("1")[
#voiceover("Jetzt kannst du die Brüche addieren. Du addierst die Zähler und behältst den gemeinsamen Nenner.")
]
#only("2")[
#voiceover("Zwanzig Dreißigstel plus neun Dreißigstel ist gleich neunundzwanzig Dreißigstel.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $2/3 + 3/10 = 29/30$, nicht $5/30$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Beim Erweitern der Brüche auf den gemeinsamen Nenner, passe immer auch die Zähler entsprechend an!]
#only("1")[
#voiceover("Daher ist zwei Drittel plus drei Zehntel gleich neunundzwanzig Dreißigstel, nicht fünf Dreißigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Wenn du die Brüche auf den gemeinsamen Nenner erweiterst, passe auch die Zähler entsprechend an!")
]
]