#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrixdimensionen]
#v(40pt)

#only("1-")[
#align(center)[
$A = mat(
  7, 8;
  9, 10;
  11, 12
)$
]
]

#v(20pt)

#only("2-")[- Zeilen: #text(fill: blue)[3] 👉]
#v(10pt)
#only("3-")[- Spalten: #text(fill: red)[2] 👇]
#v(20pt)
#only("4-")[- Dimensionen: #text(fill: green)[3 × 2] 📏]

#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns aufschlüsseln, wie wir die Dimensionen einer Matrix bestimmen.")
]

#only("2")[
#voiceover("Zuerst zählen wir die Anzahl der Zeilen. In dieser Matrix sehen wir, dass es 3 Zeilen gibt.")
]

#only("3")[
#voiceover("Als nächstes zählen wir die Anzahl der Spalten. Hier haben wir 2 Spalten.")
]

#only("4")[
#voiceover("Die Dimensionen einer Matrix werden immer als Zeilen mal Spalten angegeben. Für diese Matrix sind die Dimensionen also 3 mal 2, oder 3 × 2.")
]

#only("5")[
#voiceover("Denke daran, wenn wir die Dimensionen einer Matrix beschreiben, geben wir immer zuerst die Anzahl der Zeilen und dann die Anzahl der Spalten an. Diese 3 × 2 Matrix hat 3 Zeilen und 2 Spalten.")
]
]