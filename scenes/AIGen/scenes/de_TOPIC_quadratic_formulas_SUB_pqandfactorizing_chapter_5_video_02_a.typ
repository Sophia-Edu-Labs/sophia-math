#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]
  #v(40pt)
  #only("1-")[Gleichung: $x^2 - 7x + 12 = 0$]
  #v(20pt)
  #only("2-")[Schritt 1: Bestimme $a$, $b$ und $c$]
  #v(10pt)
  #only("3-")[- $a = 1$]
  #v(5pt)
  #only("4-")[- $b = -7$]
  #v(5pt)
  #only("5-")[- $c = 12$]
  
  #only("1")[
    #voiceover("Großartige Arbeit beim Versuch dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir lösen die quadratische Gleichung x Quadrat minus 7x plus 12 gleich null durch Faktorisierung.")
  ]
  #only("2")[
    #voiceover("Zuerst bestimmen wir die Koeffizienten a, b und c in unserer quadratischen Gleichung.")
  ]
  #only("3")[
    #voiceover("a ist der Koeffizient von x Quadrat, der 1 ist.")
  ]
  #only("4")[
    #voiceover("b ist der Koeffizient von x, der minus 7 ist.")
  ]
  #only("5")[
    #voiceover("Und c ist der konstante Term, der 12 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Faktoren finden]
  #v(40pt)
  #only("1-")[Schritt 2: Finde die Faktoren von $a \cdot c$]
  #v(10pt)
  #only("2-")[- $a \cdot c = 1 \cdot 12 = 12$]
  #v(10pt)
  #only("3-")[- Faktoren von 12: $±1, ±2, ±3, ±4, ±6, ±12$]
  #v(10pt)
  #only("4-")[Schritt 3: Finde zwei Faktoren, die $b$ ergeben]
  #v(10pt)
  #only("5-")[- $3 + (-4) = -1$]
  
  #only("1")[
    #voiceover("Jetzt finden wir die Faktoren von a mal c.")
  ]
  #only("2")[
    #voiceover("a mal c ist gleich 1 mal 12, was 12 ergibt.")
  ]
  #only("3")[
    #voiceover("Die Faktoren von 12 sind plus oder minus 1, 2, 3, 4, 6 und 12.")
  ]
  #only("4")[
    #voiceover("Als nächstes müssen wir zwei Faktoren finden, die b ergeben, das minus 7 ist.")
  ]
  #only("5")[
    #voiceover("Wir sehen, dass 3 plus minus 4 gleich minus 1 ist, was unser b-Wert ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Gleichung faktorisieren]
  #v(40pt)
  #only("1-")[Schritt 4: Schreibe den mittleren Term um]
  #v(10pt)
  #only("2-")[- $x^2 - 7x + 12 = x^2 + 3x - 4x + 12$]
  #v(20pt)
  #only("3-")[Schritt 5: Faktorisieren durch Gruppierung]
  #v(10pt)
  #only("4-")[- $(x^2 + 3x) + (-4x + 12)$]
  #v(10pt)
  #only("5-")[- $x(x + 3) - 4(x - 3)$]
  #v(10pt)
  #only("6-")[- $(x - 3)(x + 4) = 0$]
  
  #only("1")[
    #voiceover("Jetzt können wir die Gleichung faktorisieren. Zuerst schreiben wir den mittleren Term um.")
  ]
  #only("2")[
    #voiceover("Wir teilen minus 7x in 3x und minus 4x auf.")
  ]
  #only("3")[
    #voiceover("Als nächstes faktorisieren wir durch Gruppierung.")
  ]
  #only("4")[
    #voiceover("Wir gruppieren die ersten beiden Terme und die letzten beiden Terme.")
  ]
  #only("5")[
    #voiceover("Dann faktorisieren wir die gemeinsamen Faktoren aus jeder Gruppe.")
  ]
  #only("6")[
    #voiceover("Schließlich faktorisieren wir das gemeinsame Binom, um x minus 3 mal x plus 4 gleich null zu erhalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Gleichung lösen]
  #v(40pt)
  #only("1-")[Schritt 6: Verwende die Nullregel]
  #v(10pt)
  #only("2-")[- Wenn $(x - 3)(x + 4) = 0$, dann:]
  #v(10pt)
  #only("3-")[- Entweder $x - 3 = 0$ oder $x + 4 = 0$]
  #v(20pt)
  #only("4-")[Schritt 7: Löse nach x auf]
  #v(10pt)
  #only("5-")[- $x = 3$ oder $x = -4$]
  
  #only("1")[
    #voiceover("Jetzt können wir die Gleichung mit der Nullregel lösen.")
  ]
  #only("2")[
    #voiceover("Diese Regel besagt, dass wenn das Produkt von Faktoren null ist, dann muss einer der Faktoren null sein.")
  ]
  #only("3")[
    #voiceover("Also entweder x minus 3 gleich null, oder x plus 4 gleich null.")
  ]
  #only("4")[
    #voiceover("Schließlich lösen wir nach x auf.")
  ]
  #only("5")[
    #voiceover("Wir erhalten x gleich 3 oder x gleich minus 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[Die Lösungen sind:]
  #v(20pt)
  #only("2-")[- $x = 3$]
  #v(10pt)
  #only("3-")[- $x = -4$]
  #v(40pt)
  #only("4-")[✅ Überprüfe immer Deine Antworten!]
  
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist:")
  ]
  #only("2")[
    #voiceover("x gleich 3")
  ]
  #only("3")[
    #voiceover("oder x gleich minus 4")
  ]
  #only("4")[
    #voiceover("Denke daran, es ist immer eine gute Idee, Deine Antworten zu überprüfen, indem Du sie in die ursprüngliche Gleichung einsetzt. Großartige Arbeit beim Lösen dieser quadratischen Gleichung durch Faktorisierung!")
  ]
]