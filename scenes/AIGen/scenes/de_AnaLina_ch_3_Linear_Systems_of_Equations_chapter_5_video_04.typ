#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsmenge linearer Systeme]
#v(40pt)
#only("1-")[- Hängt von den Rängen der Koeffizientenmatrix $A$ und der erweiterten Matrix $[A|b]$ ab]
#v(20pt)
#only("2-")[- Drei Möglichkeiten: eindeutig, unendlich oder nicht existent 🔍]
#only("1")[
#voiceover("Die Struktur der Lösungsmenge eines linearen Systems hängt von den Rängen der Koeffizientenmatrix A und der erweiterten Matrix [A|b] ab.")
]
#only("2")[
#voiceover("Es gibt drei mögliche Ergebnisse: Die Lösungsmenge kann eindeutig, unendlich oder nicht existent sein.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Eindeutige Lösung]
#v(40pt)
#only("1-")[- $"rang"(A) = "rang"([A|b]) = n$ (Anzahl der Variablen)]
#v(20pt)
#only("2-")[- Beispiel: $x + y = 2$, $2x - y = 3$ ✅]
#only("1")[
#voiceover("Die Lösungsmenge ist eindeutig, wenn der Rang von A dem Rang von [A|b] entspricht und dieser Rang gleich der Anzahl der Variablen n ist.")
]
#only("2")[
#voiceover("Zum Beispiel hat das System x plus y gleich 2 und 2x minus y gleich 3 eine eindeutige Lösung.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Unendlich viele Lösungen]
#v(40pt)
#only("1-")[- $"rang"(A) = "rang"([A|b]) < n$ (Anzahl der Variablen)]
#v(20pt)
#only("2-")[- Beispiel: $x + y = 2$, $2x + 2y = 4$ ♾]
#only("1")[
#voiceover("Die Lösungsmenge ist unendlich, wenn der Rang von A dem Rang von [A|b] entspricht, aber dieser Rang kleiner ist als die Anzahl der Variablen n.")
]
#only("2")[
#voiceover("Zum Beispiel hat das System x plus y gleich 2 und 2x plus 2y gleich 4 unendlich viele Lösungen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Keine Lösung]
#v(40pt)
#only("1-")[- $"rang"(A) < "rang"([A|b])$]
#v(20pt)
#only("2-")[- Beispiel: $x + y = 2$, $x + y = 3$ ❌]
#only("1")[
#voiceover("Das System hat keine Lösung, wenn der Rang von A kleiner ist als der Rang von [A|b].")
]
#only("2")[
#voiceover("Zum Beispiel hat das System x plus y gleich 2 und x plus y gleich 3 keine Lösung.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Lösungsmenge: eindeutig, unendlich oder nicht existent 📊]
#v(20pt)
#only("2-")[- Hängt von den Rängen der Koeffizientenmatrix $A$ und der erweiterten Matrix $[A|b]$ ab 🔢]
#v(20pt)
#only("3-")[- Schlüssel: Vergleiche Ränge und Anzahl der Variablen 🗝]
#only("1")[
#voiceover("Zusammenfassend kann die Lösungsmenge eines linearen Systems eindeutig, unendlich oder nicht existent sein.")
]
#only("2")[
#voiceover("Dies hängt von den Rängen der Koeffizientenmatrix A und der erweiterten Matrix [A|b] ab.")
]
#only("3")[
#voiceover("Der Schlüssel ist, diese Ränge und die Anzahl der Variablen im System zu vergleichen.")
]
]