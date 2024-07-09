#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]
  #v(40pt)
  #only("1-")[Gleichung: $x^2 + 4x + 3 = 0$]
  #v(20pt)
  #only("2-")[Schritt 1: Bestimme $a$, $b$ und $c$]
  #v(10pt)
  #only("3-")[- $a = 1$]
  #v(5pt)
  #only("4-")[- $b = 4$]
  #v(5pt)
  #only("5-")[- $c = 3$]
  
  #only("1")[
    #voiceover("Leider falsch. Lass uns diese quadratische Gleichung Schritt für Schritt lösen. Wir beginnen mit der Gleichung x Quadrat plus 4x plus 3 gleich null.")
  ]
  #only("2")[
    #voiceover("Zuerst identifizieren wir die Koeffizienten a, b und c in unserer quadratischen Gleichung der Form a x Quadrat plus b x plus c gleich null.")
  ]
  #only("3")[
    #voiceover("a ist der Koeffizient von x Quadrat, der in diesem Fall 1 ist.")
  ]
  #only("4")[
    #voiceover("b ist der Koeffizient von x, der 4 ist.")
  ]
  #only("5")[
    #voiceover("Und c ist der konstante Term, der 3 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Gleichung faktorisieren]
  #v(40pt)
  #only("1-")[Schritt 2: Finde Faktoren von $a \cdot c$]
  #v(10pt)
  #only("2-")[- $a \cdot c = 1 \cdot 3 = 3$]
  #v(10pt)
  #only("3-")[- Faktoren von 3: 1 und 3]
  #v(20pt)
  #only("4-")[Schritt 3: Finde die Summe der Faktoren, die $b$ ergibt]
  #v(10pt)
  #only("5-")[- $1 + 3 = 4$ (was $b$ entspricht)]
  
  #only("1")[
    #voiceover("Nun lass uns die Gleichung faktorisieren. Wir müssen zwei Zahlen finden, die multipliziert a mal c ergeben und addiert b ergeben.")
  ]
  #only("2")[
    #voiceover("a mal c ist 1 mal 3, was 3 ergibt.")
  ]
  #only("3")[
    #voiceover("Die Faktoren von 3 sind 1 und 3.")
  ]
  #only("4")[
    #voiceover("Als nächstes prüfen wir, ob diese Faktoren addiert b ergeben, was 4 ist.")
  ]
  #only("5")[
    #voiceover("Tatsächlich, 1 plus 3 ergibt 4, was unser b-Wert ist. Perfekt!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[In faktorisierter Form schreiben]
  #v(40pt)
  #only("1-")[Schritt 4: Schreibe den mittleren Term um]
  #v(10pt)
  #only("2-")[- $x^2 + x + 3x + 3 = 0$]
  #v(20pt)
  #only("3-")[Schritt 5: Gruppiere die Terme]
  #v(10pt)
  #only("4-")[- $(x^2 + x) + (3x + 3) = 0$]
  #v(20pt)
  #only("5-")[Schritt 6: Faktoriere gemeinsame Terme aus]
  #v(10pt)
  #only("6-")[- $x(x + 1) + 3(x + 1) = 0$]
  
  #only("1")[
    #voiceover("Nun können wir unsere Gleichung in faktorisierter Form schreiben. Zuerst teilen wir den mittleren Term auf.")
  ]
  #only("2")[
    #voiceover("Unsere Gleichung wird zu x Quadrat plus x plus 3x plus 3 gleich null.")
  ]
  #only("3")[
    #voiceover("Als nächstes gruppieren wir die Terme.")
  ]
  #only("4")[
    #voiceover("Das ergibt x Quadrat plus x, plus 3x plus 3, gleich null.")
  ]
  #only("5")[
    #voiceover("Nun können wir die gemeinsamen Terme aus jeder Gruppe faktorisieren.")
  ]
  #only("6")[
    #voiceover("Wir erhalten x mal x plus 1, plus 3 mal x plus 1, gleich null.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Letzte Schritte]
  #v(40pt)
  #only("1-")[Schritt 7: Faktoriere $(x + 1)$ aus]
  #v(10pt)
  #only("2-")[- $(x + 1)(x + 3) = 0$]
  #v(20pt)
  #only("3-")[Schritt 8: Wende die Nullregel an]
  #v(10pt)
  #only("4-")[- $x + 1 = 0$ oder $x + 3 = 0$]
  #v(20pt)
  #only("5-")[Schritt 9: Löse nach $x$ auf]
  #v(10pt)
  #only("6-")[- $x = -1$ oder $x = -3$]
  
  #only("1")[
    #voiceover("Wir können nun x plus 1 ausfaktorisieren, das in beiden Termen vorkommt.")
  ]
  #only("2")[
    #voiceover("Das ergibt x plus 1 mal x plus 3 gleich null.")
  ]
  #only("3")[
    #voiceover("Nun können wir die Nullregel anwenden, die besagt, dass wenn das Produkt der Faktoren null ist, einer der Faktoren null sein muss.")
  ]
  #only("4")[
    #voiceover("Also entweder x plus 1 gleich null, oder x plus 3 gleich null.")
  ]
  #only("5")[
    #voiceover("Schließlich lösen wir nach x auf.")
  ]
  #only("6")[
    #voiceover("Wir erhalten x gleich minus 1 oder x gleich minus 3. Dies sind unsere Lösungen!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösung]
  #v(40pt)
  #only("1-")[Die Lösungen für $x^2 + 4x + 3 = 0$ sind:]
  #v(20pt)
  #only("2-")[- $x = -1$]
  #v(10pt)
  #only("3-")[- $x = -3$]
  #v(30pt)
  #only("4-")[💡 Überprüfe immer deine Lösungen!]
  
  #only("1")[
    #voiceover("Lass uns unsere Lösung zusammenfassen.")
  ]
  #only("2")[
    #voiceover("Wir haben herausgefunden, dass x gleich minus 1")
  ]
  #only("3")[
    #voiceover("oder x gleich minus 3 die Lösungen unserer quadratischen Gleichung sind.")
  ]
  #only("4")[
    #voiceover("Denke daran, es ist immer eine gute Praxis, deine Lösungen zu überprüfen, indem du sie in die ursprüngliche Gleichung einsetzt. Großartige Arbeit beim Lösen dieser quadratischen Gleichung durch Faktorisierung!")
  ]
]