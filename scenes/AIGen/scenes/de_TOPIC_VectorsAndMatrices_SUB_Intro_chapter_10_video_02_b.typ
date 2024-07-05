#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix-Dimensionen]
#v(40pt)

#only("1-")[
#align(center)[
$A = mat(
  3, 6, 9;
  2, 4, 8;
  1, 5, 7
)$
]
]

#v(20pt)

#only("2-")[- Zeilen: #text(fill: blue)[3]]
#v(10pt)
#only("3-")[- Spalten: #text(fill: red)[3]]
#v(20pt)
#only("4-")[- Dimensionen: #text(fill: green)[3 × 3]]

#only("1")[
#voiceover("Leider nicht ganz richtig. Lass uns die Dimensionen der Matrix Schritt für Schritt durchgehen.")
]

#only("2")[
#voiceover("Zuerst zählen wir die Zeilen. Wir sehen, dass diese Matrix drei horizontale Zahlenreihen hat.")
]

#only("3")[
#voiceover("Jetzt zählen wir die Spalten. Wir beobachten, dass jede Zeile drei Zahlen hat.")
]

#only("4")[
#voiceover("Daher sind die Dimensionen dieser Matrix 3 mal 3. Wir schreiben dies als 3 × 3, wobei die erste Zahl die Anzahl der Zeilen und die zweite Zahl die Anzahl der Spalten darstellt.")
]

#only("5")[
#voiceover("Denke daran, wenn wir die Dimensionen einer Matrix beschreiben, nennen wir immer zuerst die Anzahl der Zeilen, gefolgt von der Anzahl der Spalten. Diese 3 × 3 Matrix wird auch als quadratische Matrix bezeichnet, weil sie eine gleiche Anzahl von Zeilen und Spalten hat.")
]
]