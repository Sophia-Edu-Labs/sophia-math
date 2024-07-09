#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)
  #only("1-")[- Gleichung: $x^2 - 4x - 5 = 0$]
  #v(20pt)
  #only("2-")[- Mit der p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 + q)$]
  #v(20pt)
  #only("3-")[- Wobei $p = -4$ und $q = -5$]
  #only("1")[
    #voiceover("Keine Sorge, das war nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der quadratischen Gleichung x Quadrat minus 4x minus 5 gleich null.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel. Diese Formel besagt, dass x gleich minus p durch zwei, plus oder minus die Quadratwurzel aus p durch zwei zum Quadrat plus q ist.")
  ]
  #only("3")[
    #voiceover("In unserer Gleichung ist p gleich minus 4 und q gleich minus 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Formel anwenden]
  #v(40pt)
  #only("1-")[- $x = -(-4)/2 ± sqrt(((-4)/2)^2 + (-5))$]
  #v(20pt)
  #only("2-")[- $x = 2 ± sqrt(4 - 5)$]
  #v(20pt)
  #only("3-")[- $x = 2 ± sqrt(-1)$]
  #only("1")[
    #voiceover("Nun, lass uns diese Werte in unsere Formel einsetzen. Wir erhalten x gleich minus von minus 4 durch zwei, plus oder minus die Quadratwurzel aus minus 4 durch zwei zum Quadrat, plus minus 5.")
  ]
  #only("2")[
    #voiceover("Vereinfacht ergibt das x gleich 2 plus oder minus die Quadratwurzel aus 4 minus 5.")
  ]
  #only("3")[
    #voiceover("Das vereinfacht sich weiter zu x gleich 2 plus oder minus die Quadratwurzel aus minus 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Das Ergebnis vereinfachen]
  #v(40pt)
  #only("1-")[- $x = 2 ± i$]
  #v(20pt)
  #only("2-")[- $x = 2 + i$ oder $x = 2 - i$]
  #v(20pt)
  #only("3-")[- Aber wir suchen nach reellen Lösungen... 🤔]
  #only("1")[
    #voiceover("Die Quadratwurzel aus minus 1 ist i, die imaginäre Einheit. Also wird unsere Gleichung zu x gleich 2 plus oder minus i.")
  ]
  #only("2")[
    #voiceover("Das gibt uns zwei komplexe Lösungen: x gleich 2 plus i oder x gleich 2 minus i.")
  ]
  #only("3")[
    #voiceover("Allerdings suchen wir nach reellen Lösungen für diese Gleichung. Also müssen wir anders vorgehen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Alternative Herangehensweise]
  #v(40pt)
  #only("1-")[- Lass uns die Gleichung stattdessen faktorisieren]
  #v(20pt)
  #only("2-")[- $x^2 - 4x - 5 = 0$]
  #v(20pt)
  #only("3-")[- $(x - 5)(x + 1) = 0$]
  #only("1")[
    #voiceover("Lass uns einen anderen Ansatz versuchen. Anstatt die p-q-Formel zu verwenden, können wir die Gleichung faktorisieren.")
  ]
  #only("2")[
    #voiceover("Unsere ursprüngliche Gleichung ist x Quadrat minus 4x minus 5 gleich null.")
  ]
  #only("3")[
    #voiceover("Dies kann als x minus 5 mal x plus 1 gleich null faktorisiert werden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Lösungen finden]
  #v(40pt)
  #only("1-")[- $(x - 5)(x + 1) = 0$]
  #v(20pt)
  #only("2-")[- $x - 5 = 0$ oder $x + 1 = 0$]
  #v(20pt)
  #only("3-")[- $x = 5$ oder $x = -1$]
  #only("1")[
    #voiceover("Jetzt, da wir die faktorisierte Form haben, können wir unsere Lösungen finden.")
  ]
  #only("2")[
    #voiceover("Damit dieses Produkt null ist, muss entweder x minus 5 null sein oder x plus 1 null sein.")
  ]
  #only("3")[
    #voiceover("Wenn wir dies lösen, erhalten wir x gleich 5 oder x gleich minus 1. Dies sind unsere reellen Lösungen!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[- Lösungen: $x = 5$ oder $x = -1$]
  #v(20pt)
  #only("2-")[- Überprüfe immer deine Lösungen! ✅]
  #v(20pt)
  #only("3-")[💡 Denke daran: Faktorisieren kann oft einfacher sein als Formeln zu verwenden!]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass x gleich 5 oder x gleich minus 1 ist.")
  ]
  #only("2")[
    #voiceover("Es ist immer eine gute Idee, deine Lösungen zu überprüfen, indem du sie wieder in die ursprüngliche Gleichung einsetzt.")
  ]
  #only("3")[
    #voiceover("Denke daran, während Formeln wie die p-q-Formel nützlich sind, kann das Faktorisieren manchmal ein einfacherer und direkterer Ansatz zum Lösen quadratischer Gleichungen sein. Großartige Arbeit beim Lösen dieses Problems!")
  ]
]