#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#align(center)[Berechne $5/5 + 6/6$]
#v(40pt)
//Antwort des Schülers: 11/30
#only("2-")[Deine Antwort: $11/30$]
#only("1")[
#voiceover("Wir sollen fünf Fünftel plus sechs Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist elf Dreißigstel. Das ist schon mal ein guter Ansatz, aber leider noch nicht ganz richtig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dein Fehler]
#v(40pt)
#only("1-")[Dein Fehler: $ 5/5 + 6/6 ≠  (5+6)/(5*6) $]
#v(40pt)
#only("2-")[$ 5/5 ≠ 5/30$, #h(10pt)sondern #h(10pt)$5/5 = 1 $]
#v(40pt)
#only("3-")[$ 6/6 ≠ 6/30$, #h(10pt)sondern #h(10pt)$6/6 = 1 $]
#only("1")[
#voiceover("Dein Fehler ist, dass du die Zähler und Nenner einfach multipliziert und addiert hast, ohne die Brüche richtig zu vereinfachen. Das ist aber nicht richtig, denn")
]
#only("2")[
#voiceover("Fünf Fünftel ist nicht gleich fünf Dreißigstel, sondern eins.")
]
#only("3")[
#voiceover("Und sechs Sechstel ist nicht gleich sechs Dreißigstel, sondern ebenfalls eins.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Vereinfachen]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 1:] Vereinfache die Brüche]
#v(20pt)
#only("2-")[$ 5/5 = 1 $]
#v(20pt)
#only("3-")[$ 6/6 = 1 $]
#only("1")[
#voiceover("Um die Brüche zu addieren, vereinfache sie zuerst.")
]
#only("2")[
#voiceover("Fünf Fünftel ist gleich eins.")
]
#only("3")[
#voiceover("Sechs Sechstel ist ebenfalls gleich eins.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Korrekte Lösung: Addieren]
#v(40pt)
#only("1-")[#text(weight: "bold")[Schritt 2:] Addiere die vereinfachten Brüche]
#v(20pt)
#only("2-")[$ 1 + 1 = 2 $]
#only("1")[
#voiceover("Jetzt kannst du die vereinfachten Brüche addieren.")
]
#only("2")[
#voiceover("Eins plus eins ist gleich zwei.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $5/5 + 6/6 = 2$, nicht $11/30$.]
#v(20pt)
#only("2-")[Merke dir: 🧮 Vereinfache die Brüche immer zuerst, bevor du sie addierst!]
#only("1")[
#voiceover("Daher ist fünf Fünftel plus sechs Sechstel gleich zwei, nicht elf Dreißigstel.")
]
#only("2")[
#voiceover("Denk immer daran: Vereinfache die Brüche immer zuerst, bevor du sie addierst!")
]
]