#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)
  #only("1-")[- Gleichung: $x^2 - 6x + 9 = 0$]
  #v(20pt)
  #only("2-")[- Mit der p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Wobei $p = -6$ und $q = 9$]
  #only("1")[
    #voiceover("Großartige Arbeit beim Lösen dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der quadratischen Gleichung x Quadrat minus 6x plus 9 gleich null.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel. Die Formel besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel aus p durch 2 zum Quadrat minus q ist.")
  ]
  #only("3")[
    #voiceover("In unserer Gleichung ist p gleich minus 6 und q gleich 9.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Formel]
  #v(40pt)
  #only("1-")[- Schritt 1: $x = -(-6)/2 ± sqrt(((-6)/2)^2 - 9)$]
  #v(20pt)
  #only("2-")[- Schritt 2: $x = 3 ± sqrt(9 - 9)$]
  #v(20pt)
  #only("3-")[- Schritt 3: $x = 3 ± sqrt(0) = 3 ± 0$]
  #only("1")[
    #voiceover("Lass uns die Formel anwenden. Wir setzen minus 6 für p und 9 für q ein.")
  ]
  #only("2")[
    #voiceover("Vereinfacht ergibt sich x gleich 3 plus oder minus die Quadratwurzel aus 9 minus 9.")
  ]
  #only("3")[
    #voiceover("Dies vereinfacht sich zu 3 plus oder minus die Quadratwurzel aus 0, was einfach 3 plus oder minus 0 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endlösung]
  #v(40pt)
  #only("1-")[- $x = 3$]
  #v(20pt)
  #only("2-")[- Die Gleichung hat eine Lösung: 3]
  #v(20pt)
  #only("3-")[💡 Das ist ein perfektes quadratisches Trinom!]
  #only("1")[
    #voiceover("Daher ist unsere Endlösung x gleich 3.")
  ]
  #only("2")[
    #voiceover("Die Gleichung hat nur eine Lösung, nämlich 3.")
  ]
  #only("3")[
    #voiceover("Es ist erwähnenswert, dass diese Gleichung ein perfektes quadratisches Trinom ist, weshalb wir nur eine Lösung erhalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verifikation]
  #v(40pt)
  #only("1-")[- Lass uns überprüfen: $(3)^2 - 6(3) + 9 = 0$]
  #v(20pt)
  #only("2-")[- $9 - 18 + 9 = 0$]
  #v(20pt)
  #only("3-")[- $0 = 0$ ✅]
  #only("1")[
    #voiceover("Lass uns unsere Lösung überprüfen, indem wir 3 wieder in die ursprüngliche Gleichung einsetzen.")
  ]
  #only("2")[
    #voiceover("3 zum Quadrat minus 6 mal 3 plus 9 ergibt 9 minus 18 plus 9.")
  ]
  #only("3")[
    #voiceover("Dies vereinfacht sich zu 0 gleich 0, was bestätigt, dass unsere Lösung korrekt ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[- Wir haben $x^2 - 6x + 9 = 0$ mit der p-q-Formel gelöst 📊]
  #v(20pt)
  #only("2-")[- Die Lösung ist $x = 3$ 🎉]
  #v(20pt)
  #only("3-")[- Dies ist ein Sonderfall mit nur einer Lösung 🔍]
  #only("1")[
    #voiceover("Zusammenfassend haben wir die quadratische Gleichung x Quadrat minus 6x plus 9 gleich null mit der p-q-Formel gelöst.")
  ]
  #only("2")[
    #voiceover("Wir haben herausgefunden, dass die Lösung x gleich 3 ist.")
  ]
  #only("3")[
    #voiceover("Dies ist ein Sonderfall, bei dem wir nur eine Lösung haben, was auftritt, wenn die Gleichung ein perfektes quadratisches Trinom darstellt. Gut gemacht beim Lösen dieses Problems!")
  ]
]