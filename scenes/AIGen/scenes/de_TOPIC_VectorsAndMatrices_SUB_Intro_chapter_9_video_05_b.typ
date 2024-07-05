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
Gegebene Matrix: $A = mat(1, 0; 0, 1; 1, 1)$
]

#v(20pt)

#only("2-")[
- Anzahl der Zeilen: #only("3-")[3] 📏
]

#v(10pt)

#only("4-")[
- Anzahl der Spalten: #only("5-")[2] 📐
]

#v(20pt)

#only("6-")[
Dimensionen: #only("7-")[3 × 2] 🔢
]

#only("1")[
#voiceover("Keine Sorge, das war eine knifflige Frage. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben die Matrix A gegeben.")
]

#only("2")[
#voiceover("Um die Dimensionen einer Matrix zu finden, müssen wir die Anzahl der Zeilen und Spalten zählen. Fangen wir mit den Zeilen an.")
]

#only("3")[
#voiceover("Wir sehen, dass diese Matrix 3 Zeilen hat.")
]

#only("4")[
#voiceover("Nun, lass uns die Spalten zählen.")
]

#only("5")[
#voiceover("Die Matrix hat 2 Spalten.")
]

#only("6")[
#voiceover("Die Dimensionen einer Matrix werden immer als Zeilen mal Spalten angegeben.")
]

#only("7")[
#voiceover("Daher sind die Dimensionen dieser Matrix 3 mal 2. Gut gemacht, dass Du das herausgefunden hast!")
]
]