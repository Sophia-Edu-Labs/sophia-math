#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit beim Lösen dieser quadratischen Gleichung! Lass uns die Lösung Schritt für Schritt durchgehen, um sie besser zu verstehen.")
]

#text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]

#v(40pt)

#only("2-")[#text()[$ x^2 - 5x + 6 = 0 $]]

#only("2")[
#voiceover("Wir beginnen mit der quadratischen Gleichung x Quadrat minus 5x plus 6 gleich null.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Die quadratische Gleichung identifizieren]

#v(40pt)

#only("1-")[- Allgemeine Form: $a x^2 + b x + c = 0$]
#v(20pt)
#only("2-")[- Unsere Gleichung: $x^2 - 5x + 6 = 0$]
#v(20pt)
#only("3-")[- $a = 1$, $b = -5$, $c = 6$]

#only("1")[
#voiceover("Zuerst identifizieren wir die Teile unserer quadratischen Gleichung. Die allgemeine Form ist a x Quadrat plus b x plus c gleich null.")
]

#only("2")[
#voiceover("In unserem Fall haben wir x Quadrat minus 5x plus 6 gleich null.")
]

#only("3")[
#voiceover("Also, a ist gleich 1, b ist gleich minus 5, und c ist gleich 6.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Die Gleichung faktorisieren]

#v(40pt)

#only("1-")[- Finde zwei Zahlen, die:
  - Multiplizieren, um $a c = 1 dot 6 = 6$ zu ergeben
  - Addieren, um $b = -5$ zu ergeben]

#v(20pt)

#only("2-")[- Die Zahlen sind -2 und -3]

#only("1")[
#voiceover("Um zu faktorisieren, müssen wir zwei Zahlen finden, die multiplizieren, um a mal c zu ergeben, was 1 mal 6, also 6 ist, und addieren, um b zu ergeben, was minus 5 ist.")
]

#only("2")[
#voiceover("Diese Zahlen sind minus 2 und minus 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Die faktorisierte Form schreiben]

#v(40pt)

#only("1-")[$ x^2 - 5x + 6 = 0 $]
#v(20pt)
#only("2-")[$ (x - 2)(x - 3) = 0 $]

#only("1")[
#voiceover("Jetzt können wir unsere Gleichung in faktorisierter Form umschreiben.")
]

#only("2")[
#voiceover("Die faktorisierte Form ist x minus 2 mal x minus 3 gleich null.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Das Nullproduktgesetz anwenden]

#v(40pt)

#only("1-")[- Wenn $a dot b = 0$, dann entweder $a = 0$ oder $b = 0$ (oder beides)]
#v(20pt)
#only("2-")[- Also entweder $x - 2 = 0$ oder $x - 3 = 0$]

#only("1")[
#voiceover("Jetzt wenden wir das Nullproduktgesetz an. Dieses besagt, dass wenn a mal b gleich null ist, dann entweder a gleich null ist oder b gleich null ist, oder beides.")
]

#only("2")[
#voiceover("In unserem Fall bedeutet das, dass entweder x minus 2 gleich null ist oder x minus 3 gleich null ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 5: Für x lösen]

#v(40pt)

#only("1-")[$ x - 2 = 0 $ oder $ x - 3 = 0 $]
#v(20pt)
#only("2-")[$ x = 2 $ oder $ x = 3 $]

#only("1")[
#voiceover("Schließlich lösen wir jede dieser linearen Gleichungen.")
]

#only("2")[
#voiceover("Wir erhalten x gleich 2 oder x gleich 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]

#v(40pt)

#only("1-")[Die Lösungen sind $x = 2$ oder $x = 3$ 🎉]

#only("1")[
#voiceover("Daher sind die Lösungen unserer quadratischen Gleichung x gleich 2 oder x gleich 3. Großartige Arbeit beim Lösen dieser Gleichung!")
]
]