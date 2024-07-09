#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)
  #only("1-")[- Gleichung: $x^2 + 6x + 9 = 0$]
  #v(20pt)
  #only("2-")[- Mit der p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Wobei $p = 6$ und $q = 9$]
  
  #only("1")[
    #voiceover("Ausgezeichnete Arbeit! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit der quadratischen Gleichung x Quadrat plus 6x plus 9 gleich null zu tun.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel. Diese Formel besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel aus p durch 2 zum Quadrat minus q ist.")
  ]
  #only("3")[
    #voiceover("In unserer Gleichung ist p gleich 6 und q gleich 9.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Formel anwenden]
  #v(40pt)
  #only("1-")[- Schritt 1: $x = -6/2 ± sqrt((6/2)^2 - 9)$]
  #v(20pt)
  #only("2-")[- Schritt 2: $x = -3 ± sqrt(3^2 - 9)$]
  #v(20pt)
  #only("3-")[- Schritt 3: $x = -3 ± sqrt(9 - 9)$]
  #v(20pt)
  #only("4-")[- Schritt 4: $x = -3 ± sqrt(0)$]
  
  #only("1")[
    #voiceover("Lass uns die Formel anwenden. Wir ersetzen p durch 6 und q durch 9.")
  ]
  #only("2")[
    #voiceover("Vereinfacht ergibt das minus 3 plus oder minus die Quadratwurzel aus 3 zum Quadrat minus 9.")
  ]
  #only("3")[
    #voiceover("3 zum Quadrat ist 9, also haben wir minus 3 plus oder minus die Quadratwurzel aus 9 minus 9.")
  ]
  #only("4")[
    #voiceover("9 minus 9 ist 0, also bleibt uns minus 3 plus oder minus die Quadratwurzel aus 0.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Lösung]
  #v(40pt)
  #only("1-")[- $x = -3 ± 0$]
  #v(20pt)
  #only("2-")[- $x = -3$]
  #v(40pt)
  #only("3-")[💡 Die Gleichung hat nur eine Lösung!]
  
  #only("1")[
    #voiceover("Die Quadratwurzel aus 0 ist 0, also vereinfacht sich unsere Gleichung zu x gleich minus 3 plus oder minus 0.")
  ]
  #only("2")[
    #voiceover("Das ergibt x gleich minus 3.")
  ]
  #only("3")[
    #voiceover("Interessanterweise hat diese Gleichung nur eine Lösung. Das liegt daran, dass der quadratische Ausdruck x Quadrat plus 6x plus 9 ein perfektes Quadrattrinom ist, das als das Quadrat von x plus 3 faktorisiert werden kann.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überprüfung]
  #v(40pt)
  #only("1-")[- Lass uns überprüfen: $(-3)^2 + 6(-3) + 9 = 0$]
  #v(20pt)
  #only("2-")[- $9 - 18 + 9 = 0$]
  #v(20pt)
  #only("3-")[- $0 = 0$ ✅]
  
  #only("1")[
    #voiceover("Lass uns unsere Lösung überprüfen, indem wir minus 3 wieder in die ursprüngliche Gleichung einsetzen.")
  ]
  #only("2")[
    #voiceover("Minus 3 zum Quadrat ist 9, 6 mal minus 3 ist minus 18, und wir addieren 9.")
  ]
  #only("3")[
    #voiceover("Das ergibt 9 minus 18 plus 9, was gleich 0 ist. Unsere Lösung stimmt!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[- Quadratische Gleichung: $x^2 + 6x + 9 = 0$]
  #v(20pt)
  #only("2-")[- Lösung: $x = -3$]
  #v(20pt)
  #only("3-")[- Dies ist ein Spezialfall mit nur einer Lösung]
  
  #only("1")[
    #voiceover("Zusammenfassend haben wir die quadratische Gleichung x Quadrat plus 6x plus 9 gleich null gelöst.")
  ]
  #only("2")[
    #voiceover("Wir haben herausgefunden, dass die Lösung x gleich minus 3 ist.")
  ]
  #only("3")[
    #voiceover("Dies ist ein Spezialfall, bei dem wir nur eine Lösung haben, weil die linke Seite der Gleichung ein perfektes Quadrattrinom ist. Großartige Arbeit beim Lösen dieses Problems!")
  ]
]