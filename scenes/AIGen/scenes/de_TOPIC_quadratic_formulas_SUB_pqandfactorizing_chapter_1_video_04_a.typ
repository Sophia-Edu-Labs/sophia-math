#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)
  #only("1-")[- Gleichung: $x^2 - 2x - 3 = 0$]
  #v(20pt)
  #only("2-")[- Wir verwenden die p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 + q)$]
  #v(20pt)
  #only("3-")[- Wobei $p = -2$ und $q = -3$]
  #only("1")[
    #voiceover("Großartig, dass Du diese Gleichung lösen möchtest! Lass uns Schritt für Schritt vorgehen. Wir beginnen mit der quadratischen Gleichung x Quadrat minus 2x minus 3 gleich null.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel. Diese Formel besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel aus p durch 2 zum Quadrat plus q ist.")
  ]
  #only("3")[
    #voiceover("In unserer Gleichung ist p gleich minus 2 und q gleich minus 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der p-q-Formel]
  #v(40pt)
  #only("1-")[- $x = -(-2)/2 ± sqrt(((-2)/2)^2 + (-3))$]
  #v(20pt)
  #only("2-")[- $x = 1 ± sqrt(1 - 3)$]
  #v(20pt)
  #only("3-")[- $x = 1 ± sqrt(-2)$]
  #only("1")[
    #voiceover("Nun, lass uns diese Werte in unsere p-q-Formel einsetzen. Wir erhalten x gleich minus minus 2 durch 2, plus oder minus die Quadratwurzel aus minus 2 durch 2 zum Quadrat plus minus 3.")
  ]
  #only("2")[
    #voiceover("Vereinfacht ergibt das x gleich 1 plus oder minus die Quadratwurzel aus 1 minus 3.")
  ]
  #only("3")[
    #voiceover("Das vereinfacht sich zu x gleich 1 plus oder minus die Quadratwurzel aus minus 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Lösung vereinfachen]
  #v(40pt)
  #only("1-")[- $x = 1 ± sqrt(2)i$]
  #v(20pt)
  #only("2-")[- $x = 1 + sqrt(2)i$ oder $x = 1 - sqrt(2)i$]
  #v(20pt)
  #only("3-")[- Aber wir suchen nach reellen Lösungen... 🤔]
  #only("1")[
    #voiceover("Die Quadratwurzel einer negativen Zahl ergibt eine imaginäre Zahl. Unsere Lösung wird also x gleich 1 plus oder minus die Quadratwurzel aus 2 mal i, wobei i die imaginäre Einheit ist.")
  ]
  #only("2")[
    #voiceover("Wir können dies als zwei separate Lösungen schreiben: x gleich 1 plus Quadratwurzel aus 2 i, oder x gleich 1 minus Quadratwurzel aus 2 i.")
  ]
  #only("3")[
    #voiceover("Allerdings suchen wir nach reellen Lösungen für diese Gleichung. Diese komplexen Lösungen deuten darauf hin, dass es keine reellen Wurzeln gibt. Aber ist das korrekt?")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Unsere Arbeit überprüfen]
  #v(40pt)
  #only("1-")[- Lass uns die ursprüngliche Gleichung faktorisieren: $x^2 - 2x - 3 = 0$]
  #v(20pt)
  #only("2-")[- $(x - 3)(x + 1) = 0$]
  #v(20pt)
  #only("3-")[- Lösungen: $x = 3$ oder $x = -1$]
  #only("1")[
    #voiceover("Lass uns unsere Arbeit überprüfen, indem wir die ursprüngliche Gleichung faktorisieren: x Quadrat minus 2x minus 3 gleich null.")
  ]
  #only("2")[
    #voiceover("Dies faktorisiert sich zu x minus 3 mal x plus 1 gleich null.")
  ]
  #only("3")[
    #voiceover("Daraus können wir sehen, dass die Lösungen x gleich 3 oder x gleich minus 1 sind. Das sind reelle Lösungen!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Fazit]
  #v(40pt)
  #only("1-")[- Wir haben einen Fehler bei der Anwendung der p-q-Formel gemacht 😅]
  #v(20pt)
  #only("2-")[- Korrekte Lösungen: $x = 3$ oder $x = -1$]
  #v(20pt)
  #only("3-")[- Überprüfe immer Deine Arbeit! 🧮✅]
  #only("1")[
    #voiceover("Es sieht so aus, als hätten wir einen Fehler bei der Anwendung der p-q-Formel gemacht. Dies ist eine großartige Erinnerung daran, warum es immer wichtig ist, unsere Arbeit zu überprüfen!")
  ]
  #only("2")[
    #voiceover("Die korrekten Lösungen für die Gleichung x Quadrat minus 2x minus 3 gleich null sind x gleich 3 oder x gleich minus 1.")
  ]
  #only("3")[
    #voiceover("Denke daran, immer Deine Arbeit zu überprüfen, besonders wenn Du mit komplexen Formeln arbeitest. Es ist leicht, kleine Fehler zu machen, die zu falschen Antworten führen können. Großartige Arbeit beim Lösen dieses Problems!")
  ]
]