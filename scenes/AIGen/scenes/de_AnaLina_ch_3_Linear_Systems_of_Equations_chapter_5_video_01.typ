#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsmenge linearer Systeme]
#v(40pt)
#only("1-")[- Hängt vom Rang der Matrizen ab 🔢]
#v(20pt)
#only("2-")[- Koeffizientenmatrix $A$ und erweiterte Matrix $[A|b]$]
#only("1")[
#voiceover("Die Lösungsmenge eines linearen Systems kann eindeutig, unendlich oder nicht existent sein. Dies hängt vom Rang zweier Matrizen ab: der Koeffizientenmatrix A und der erweiterten Matrix [A|b].")
]
#only("2")[
#voiceover("Die Koeffizientenmatrix A enthält die Koeffizienten der Variablen im linearen System, während die erweiterte Matrix [A|b] auch die Konstanten enthält.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Eindeutige Lösung]
#v(40pt)
#only("1-")[- $"rang"(A) = "rang"([A|b]) = n$]
#v(20pt)
#only("2-")[- $n$ ist die Anzahl der Variablen]
#only("1")[
#voiceover("Das System hat eine eindeutige Lösung, wenn der Rang von A dem Rang von [A|b] entspricht und dieser Rang gleich n ist, wobei n die Anzahl der Variablen ist.")
]
#only("2")[
#voiceover("In diesem Fall ist das System konsistent und hat genau eine Lösung.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Unendlich viele Lösungen]
#v(40pt)
#only("1-")[- $"rang"(A) = "rang"([A|b]) < n$]
#v(20pt)
#only("2-")[- System ist konsistent]
#only("1")[
#voiceover("Wenn der Rang von A dem Rang von [A|b] entspricht, aber dieser Rang kleiner als n ist, hat das System unendlich viele Lösungen.")
]
#only("2")[
#voiceover("Das System ist konsistent, aber es gibt nicht genügend Gleichungen, um alle Variablen eindeutig zu bestimmen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Keine Lösung]
#v(40pt)
#only("1-")[- $"rang"(A) < "rang"([A|b])$]
#v(20pt)
#only("2-")[- System ist inkonsistent ❌]
#only("1")[
#voiceover("Wenn der Rang von A kleiner ist als der Rang von [A|b], hat das System keine Lösung.")
]
#only("2")[
#voiceover("In diesem Fall ist das System inkonsistent. Die Gleichungen widersprechen sich, sodass es keine Lösung gibt, die alle Gleichungen gleichzeitig erfüllt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Eindeutige Lösung: $"rang"(A) = "rang"([A|b]) = n$ ✅]
#v(20pt)
#only("2-")[- Unendlich viele Lösungen: $"rang"(A) = "rang"([A|b]) < n$ ∞]
#v(20pt)
#only("3-")[- Keine Lösung: $"rang"(A) < "rang"([A|b])$ ❌]
#only("1")[
#voiceover("Zusammenfassend hat ein lineares System eine eindeutige Lösung, wenn der Rang von A dem Rang von [A|b] entspricht und dieser Rang gleich der Anzahl der Variablen ist.")
]
#only("2")[
#voiceover("Es hat unendlich viele Lösungen, wenn der Rang von A dem Rang von [A|b] entspricht, aber kleiner als die Anzahl der Variablen ist.")
]
#only("3")[
#voiceover("Und es hat keine Lösung, wenn der Rang von A kleiner ist als der Rang von [A|b].")
]
]