#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]
  #v(40pt)
  #only("1-")[Gleichung: $x^2 + 3x + 2 = 0$]
  #v(20pt)
  #only("2-")[Schritt 1: Bestimme $a$, $b$ und $c$]
  #v(10pt)
  #only("3-")[- $a = 1$]
  #v(5pt)
  #only("4-")[- $b = 3$]
  #v(5pt)
  #only("5-")[- $c = 2$]
  
  #only("1")[
    #voiceover("Keine Sorge, wir können das gemeinsam lösen. Lass uns die quadratische Gleichung x Quadrat plus 3x plus 2 gleich null Schritt für Schritt durchgehen.")
  ]
  #only("2")[
    #voiceover("Unser erster Schritt ist es, die Koeffizienten a, b und c in der Standardform ax Quadrat plus bx plus c gleich null zu identifizieren.")
  ]
  #only("3")[
    #voiceover("Hier ist a gleich 1,")
  ]
  #only("4")[
    #voiceover("b ist 3,")
  ]
  #only("5")[
    #voiceover("und c ist 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Quadratische Gleichung faktorisieren]
  #v(40pt)
  #only("1-")[Schritt 2: Finde Faktoren von $a \cdot c = 1 \cdot 2 = 2$]
  #v(20pt)
  #only("2-")[Faktoren von 2: $1$ und $2$]
  #v(20pt)
  #only("3-")[Schritt 3: Finde die Summe der Faktoren, die $b = 3$ ergibt]
  #v(20pt)
  #only("4-")[$(x + 1)(x + 2) = 0$]
  
  #only("1")[
    #voiceover("Nun lass uns die quadratische Gleichung faktorisieren. Wir müssen zwei Zahlen finden, die multipliziert a mal c ergeben, was 1 mal 2 oder 2 ist.")
  ]
  #only("2")[
    #voiceover("Die Faktoren von 2 sind 1 und 2.")
  ]
  #only("3")[
    #voiceover("Diese Faktoren müssen auch die Summe b ergeben, was 3 ist. Zum Glück ergibt 1 plus 2 gleich 3, also passen diese perfekt!")
  ]
  #only("4")[
    #voiceover("Wir können unsere Gleichung nun in faktorisierter Form als x plus 1 mal x plus 2 gleich null umschreiben.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Gleichung lösen]
  #v(40pt)
  #only("1-")[Schritt 4: Wende die Nullregel an]
  #v(20pt)
  #only("2-")[Entweder $x + 1 = 0$ oder $x + 2 = 0$]
  #v(20pt)
  #only("3-")[Löse für $x$:]
  #v(10pt)
  #only("4-")[- $x = -1$ oder $x = -2$]
  
  #only("1")[
    #voiceover("Um diese Gleichung zu lösen, verwenden wir die Nullregel. Diese besagt, dass wenn das Produkt von Faktoren null ist, einer der Faktoren null sein muss.")
  ]
  #only("2")[
    #voiceover("Also entweder ist x plus 1 gleich null oder x plus 2 gleich null.")
  ]
  #only("3")[
    #voiceover("Nun können wir für x in jedem Fall lösen.")
  ]
  #only("4")[
    #voiceover("Wir erhalten x gleich minus 1 oder x gleich minus 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[Die Lösungen sind $x = -1$ oder $x = -2$]
  #v(20pt)
  #only("2-")[Lass uns überprüfen:]
  #v(10pt)
  #only("3-")[Für $x = -1$: $(-1)^2 + 3(-1) + 2 = 1 - 3 + 2 = 0$ ✅]
  #v(10pt)
  #only("4-")[Für $x = -2$: $(-2)^2 + 3(-2) + 2 = 4 - 6 + 2 = 0$ ✅]
  
  #only("1")[
    #voiceover("Also lautet unsere endgültige Antwort: x gleich minus 1 oder x gleich minus 2.")
  ]
  #only("2")[
    #voiceover("Lass uns schnell unsere Lösungen überprüfen, indem wir sie in die ursprüngliche Gleichung einsetzen.")
  ]
  #only("3")[
    #voiceover("Für x gleich minus 1: minus 1 Quadrat, plus 3 mal minus 1, plus 2, ergibt 1 minus 3 plus 2, was tatsächlich null ergibt.")
  ]
  #only("4")[
    #voiceover("Ähnlich, für x gleich minus 2: minus 2 Quadrat, plus 3 mal minus 2, plus 2, ergibt 4 minus 6 plus 2, was ebenfalls null ergibt. Großartige Arbeit beim Lösen dieser quadratischen Gleichung!")
  ]
]