#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]
  #v(40pt)
  #only("1-")[Gleichung: $x^2 - 5x + 6 = 0$]
  #v(20pt)
  #only("2-")[Schritt 1: Bestimme $a$, $b$ und $c$]
  #v(10pt)
  #only("3-")[- $a = 1$]
  #v(10pt)
  #only("4-")[- $b = -5$]
  #v(10pt)
  #only("5-")[- $c = 6$]
  
  #only("1")[
    #voiceover("Leider war das nicht korrekt. Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen. Wir beginnen mit der Gleichung x Quadrat minus 5x plus 6 gleich null.")
  ]
  #only("2")[
    #voiceover("Der erste Schritt ist, die Koeffizienten a, b und c in unserer Standardform ax Quadrat plus bx plus c gleich null zu identifizieren.")
  ]
  #only("3")[
    #voiceover("Hier ist a gleich 1, der Koeffizient von x Quadrat.")
  ]
  #only("4")[
    #voiceover("b ist minus 5, der Koeffizient von x.")
  ]
  #only("5")[
    #voiceover("Und c ist 6, der konstante Term.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Die Quadratische Gleichung faktorisieren]
  #v(40pt)
  #only("1-")[Schritt 2: Finde zwei Zahlen, die:]
  #v(10pt)
  #only("2-")[- Multiplizieren, um $a \cdot c = 1 \cdot 6 = 6$ zu ergeben]
  #v(10pt)
  #only("3-")[- Addieren, um $b = -5$ zu ergeben]
  #v(20pt)
  #only("4-")[Die Zahlen sind -2 und -3]
  
  #only("1")[
    #voiceover("Jetzt müssen wir diese quadratische Gleichung faktorisieren. Dazu müssen wir zwei Zahlen finden, die bestimmte Eigenschaften haben.")
  ]
  #only("2")[
    #voiceover("Diese beiden Zahlen sollten multiplizieren, um a mal c zu ergeben, was 1 mal 6, also 6 ist.")
  ]
  #only("3")[
    #voiceover("Und sie sollten addieren, um b zu ergeben, was minus 5 ist.")
  ]
  #only("4")[
    #voiceover("Die Zahlen, die diese Bedingungen erfüllen, sind minus 2 und minus 3.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Die faktorisierte Form schreiben]
  #v(40pt)
  #only("1-")[Schritt 3: Schreibe die faktorisierte Form]
  #v(20pt)
  #only("2-")[$(x - 2)(x - 3) = 0$]
  #v(20pt)
  #only("3-")[Schritt 4: Löse jeden Faktor]
  #v(10pt)
  #only("4-")[- $x - 2 = 0$ oder $x - 3 = 0$]
  #v(10pt)
  #only("5-")[- $x = 2$ oder $x = 3$]
  
  #only("1")[
    #voiceover("Jetzt können wir unsere Gleichung in faktorisierter Form schreiben.")
  ]
  #only("2")[
    #voiceover("Die faktorisierte Form ist x minus 2 mal x minus 3 gleich null.")
  ]
  #only("3")[
    #voiceover("Um dies zu lösen, setzen wir jeden Faktor auf null und lösen nach x auf.")
  ]
  #only("4")[
    #voiceover("Also haben wir x minus 2 gleich null oder x minus 3 gleich null.")
  ]
  #only("5")[
    #voiceover("Wenn wir das lösen, erhalten wir x gleich 2 oder x gleich 3.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Lösung]
  #v(40pt)
  #only("1-")[Die Lösungen sind:]
  #v(20pt)
  #only("2-")[#text(size: 24pt)[x = 2 oder x = 3]]
  #v(40pt)
  #only("3-")[💡 Überprüfe immer Deine Lösungen!]
  
  #only("1")[
    #voiceover("Also, unsere endgültige Lösung ist:")
  ]
  #only("2")[
    #voiceover("x gleich 2 oder x gleich 3.")
  ]
  #only("3")[
    #voiceover("Denke daran, es ist immer eine gute Idee, Deine Lösungen zu überprüfen, indem Du sie wieder in die ursprüngliche Gleichung einsetzt. Großartige Arbeit beim Lösen dieser quadratischen Gleichung durch Faktorisierung!")
  ]
]