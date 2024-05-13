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
//Antwort des Schülers: 2
#only("2-")[Deine Antwort: $2$]
#only("1")[
#voiceover("Wir sollen fünf Fünftel plus sechs Sechstel berechnen.")
]
#only("2")[
#voiceover("Und deine Antwort ist zwei. Das ist vollkommen richtig! Lass uns sehen, wie du zu dieser Antwort gekommen bist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Brüche vereinfachen]
#v(40pt)
#only("1-")[Vereinfache die Brüche, wenn möglich]
#v(20pt)
#only("2-")[$ 5/5 = 1 $]
#v(20pt)
#only("3-")[$ 6/6 = 1 $]
#only("1")[
#voiceover("Zuerst vereinfachen wir die Brüche, wenn möglich.")
]
#only("2")[
#voiceover("Fünf Fünftel ist gleich eins.")
]
#only("3")[
#voiceover("Sechs Sechstel ist auch gleich eins.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Addieren]
#v(40pt)
#only("1-")[Addiere die vereinfachten Brüche]
#v(20pt)
#only("2-")[$ 1 + 1 = 2 $]
#only("1")[
#voiceover("Jetzt addieren wir die vereinfachten Brüche.")
]
#only("2")[
#voiceover("Eins plus eins ist gleich zwei.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $5/5 + 6/6 = 2$, und das hast du richtig berechnet!]
#v(20pt)
#only("2-")[Merke dir: 🧮 Vereinfache die Brüche, wenn möglich, bevor du sie addierst!]
#only("1")[
#voiceover("Daher ist fünf Fünftel plus sechs Sechstel gleich zwei, und das hast du ganz richtig berechnet!")
]
#only("2")[
#voiceover("Denk immer daran: Vereinfache die Brüche, wenn möglich, bevor du sie addierst!")
]
]