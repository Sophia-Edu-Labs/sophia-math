#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]
  #v(40pt)
  #only("1-")[Gleichung: $x^2 + 5x + 6 = 0$]
  #v(20pt)
  #only("2-")[Schritt 1: Bestimme $a$, $b$ und $c$]
  #v(10pt)
  #only("3-")[- $a = 1$]
  #only("4-")[- $b = 5$]
  #only("5-")[- $c = 6$]
  
  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung der quadratischen Gleichung gemeinsam durch. Wir beginnen mit der Gleichung x Quadrat plus 5x plus 6 gleich null.")
  ]
  #only("2")[
    #voiceover("Zuerst müssen wir die Koeffizienten a, b und c in unserer quadratischen Gleichung der Form a x Quadrat plus b x plus c gleich null identifizieren.")
  ]
  #only("3")[
    #voiceover("a ist der Koeffizient von x Quadrat, der in diesem Fall 1 ist.")
  ]
  #only("4")[
    #voiceover("b ist der Koeffizient von x, der 5 ist.")
  ]
  #only("5")[
    #voiceover("Und c ist der konstante Term, der 6 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Faktoren finden]
  #v(40pt)
  #only("1-")[Schritt 2: Finde die Faktoren von $a \cdot c = 1 \cdot 6 = 6$]
  #v(20pt)
  #only("2-")[Faktoren von 6: $1$, $2$, $3$, $6$]
  #v(20pt)
  #only("3-")[Wir brauchen zwei Faktoren, die $b = 5$ ergeben]
  #v(20pt)
  #only("4-")[Lösung: $2$ und $3$]
  
  #only("1")[
    #voiceover("Als nächstes müssen wir die Faktoren von a mal c finden, was 1 mal 6 ist und uns 6 ergibt.")
  ]
  #only("2")[
    #voiceover("Die Faktoren von 6 sind 1, 2, 3 und 6.")
  ]
  #only("3")[
    #voiceover("Wir suchen zwei Faktoren, die zusammen b ergeben, was 5 ist.")
  ]
  #only("4")[
    #voiceover("Die Faktoren, die wir brauchen, sind 2 und 3, weil 2 plus 3 gleich 5 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Gleichung umschreiben]
  #v(40pt)
  #only("1-")[Schritt 3: Schreibe den mittleren Term um]
  #v(20pt)
  #only("2-")[$x^2 + 2x + 3x + 6 = 0$]
  #v(20pt)
  #only("3-")[Schritt 4: Gruppiere die Terme]
  #v(20pt)
  #only("4-")[$(x^2 + 2x) + (3x + 6) = 0$]
  
  #only("1")[
    #voiceover("Jetzt lass uns unsere Gleichung mit diesen Faktoren umschreiben.")
  ]
  #only("2")[
    #voiceover("Wir teilen den mittleren Term 5x in 2x plus 3x auf. Unsere Gleichung wird also x Quadrat plus 2x plus 3x plus 6 gleich null.")
  ]
  #only("3")[
    #voiceover("Als nächstes gruppieren wir die Terme.")
  ]
  #only("4")[
    #voiceover("Wir erhalten x Quadrat plus 2x in Klammern, plus 3x plus 6 in Klammern, gleich null.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Faktorisierung]
  #v(40pt)
  #only("1-")[Schritt 5: Faktoriere den gemeinsamen Faktor in jeder Gruppe]
  #v(20pt)
  #only("2-")[$x(x + 2) + 3(x + 2) = 0$]
  #v(20pt)
  #only("3-")[Schritt 6: Faktoriere das gemeinsame Binom]
  #v(20pt)
  #only("4-")[$(x + 2)(x + 3) = 0$]
  
  #only("1")[
    #voiceover("Jetzt faktorisieren wir den gemeinsamen Faktor in jeder Gruppe.")
  ]
  #only("2")[
    #voiceover("Aus der ersten Gruppe faktorisieren wir x, und aus der zweiten Gruppe faktorisieren wir 3. Das ergibt uns x mal x plus 2, plus 3 mal x plus 2, gleich null.")
  ]
  #only("3")[
    #voiceover("Schließlich faktorisieren wir das gemeinsame Binom x plus 2.")
  ]
  #only("4")[
    #voiceover("Das ergibt uns x plus 2 mal x plus 3 gleich null.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Gleichung lösen]
  #v(40pt)
  #only("1-")[Schritt 7: Verwende die Nullregel]
  #v(20pt)
  #only("2-")[$(x + 2) = 0$ oder $(x + 3) = 0$]
  #v(20pt)
  #only("3-")[Schritt 8: Löse jede lineare Gleichung]
  #v(20pt)
  #only("4-")[$x = -2$ oder $x = -3$]
  
  #only("1")[
    #voiceover("Jetzt können wir die Nullregel anwenden, die besagt, dass wenn das Produkt von Faktoren null ist, dann muss einer der Faktoren null sein.")
  ]
  #only("2")[
    #voiceover("Also entweder x plus 2 gleich null, oder x plus 3 gleich null.")
  ]
  #only("3")[
    #voiceover("Schließlich lösen wir jede dieser linearen Gleichungen.")
  ]
  #only("4")[
    #voiceover("Wir erhalten x gleich minus 2 oder x gleich minus 3. Das sind unsere Lösungen!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[Die Lösungen von $x^2 + 5x + 6 = 0$ sind:]
  #v(20pt)
  #only("2-")[- $x = -2$]
  #only("3-")[- $x = -3$]
  
  #only("1")[
    #voiceover("Zusammenfassend haben wir die quadratische Gleichung x Quadrat plus 5x plus 6 gleich null gelöst.")
  ]
  #only("2")[
    #voiceover("Unsere erste Lösung ist x gleich minus 2.")
  ]
  #only("3")[
    #voiceover("Und unsere zweite Lösung ist x gleich minus 3. Großartige Arbeit beim Lösen dieser quadratischen Gleichung durch Faktorisierung!")
  ]
]