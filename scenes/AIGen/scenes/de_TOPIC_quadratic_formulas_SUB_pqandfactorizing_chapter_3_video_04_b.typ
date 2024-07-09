#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)
  #only("1-")[- Gleichung: $x^2 - 3x - 4 = 0$]
  #v(20pt)
  #only("2-")[- Mit der p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 + q)$]
  #v(20pt)
  #only("3-")[- Wobei $p = -3$ und $q = -4$]
  
  #only("1")[
    #voiceover("Nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit der quadratischen Gleichung x Quadrat minus 3x minus 4 gleich null zu tun.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel. Diese Formel besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat plus q ist.")
  ]
  #only("3")[
    #voiceover("In unserer Gleichung ist p gleich minus 3 und q gleich minus 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Formel anwenden]
  #v(40pt)
  #only("1-")[- $x = -(-3)/2 ± sqrt(((-3)/2)^2 + (-4))$]
  #v(20pt)
  #only("2-")[- $x = 3/2 ± sqrt((9/4) - 4)$]
  #v(20pt)
  #only("3-")[- $x = 3/2 ± sqrt(9/4 - 16/4)$]
  #v(20pt)
  #only("4-")[- $x = 3/2 ± sqrt(-7/4)$]
  
  #only("1")[
    #voiceover("Nun, lass uns diese Werte in unsere Formel einsetzen. Wir erhalten x gleich minus minus 3 durch 2, plus oder minus die Quadratwurzel von minus 3 durch 2 zum Quadrat, plus minus 4.")
  ]
  #only("2")[
    #voiceover("Vereinfacht ergibt das 3 durch 2 plus oder minus die Quadratwurzel von 9 durch 4 minus 4.")
  ]
  #only("3")[
    #voiceover("Wir können 4 als 16 durch 4 umschreiben, um einen gemeinsamen Nenner zu haben.")
  ]
  #only("4")[
    #voiceover("Das vereinfacht sich zu 3 durch 2 plus oder minus die Quadratwurzel von minus 7 durch 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Das Ergebnis vereinfachen]
  #v(40pt)
  #only("1-")[- $x = 3/2 ± sqrt(7/4)$]
  #v(20pt)
  #only("2-")[- $x = 3/2 ± (sqrt(7)/2)$]
  #v(20pt)
  #only("3-")[- $x = (3 ± sqrt(7))/2$]
  
  #only("1")[
    #voiceover("Das Minuszeichen unter der Quadratwurzel wird positiv, wenn wir es herausnehmen.")
  ]
  #only("2")[
    #voiceover("Wir können die Quadratwurzel von 7 durch 4 zu Quadratwurzel von 7 durch 2 vereinfachen.")
  ]
  #only("3")[
    #voiceover("Schließlich können wir dies als 3 plus oder minus die Quadratwurzel von 7, alles durch 2, schreiben.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Lösung]
  #v(40pt)
  #only("1-")[- $x = (3 + sqrt(7))/2$ oder $x = (3 - sqrt(7))/2$]
  #v(20pt)
  #only("2-")[- $x ≈ 4$ oder $x ≈ -1$]
  #v(40pt)
  #only("3-")[💡 Überprüfe immer deine Lösungen!]
  
  #only("1")[
    #voiceover("Unsere Lösung gibt uns zwei Werte für x: 3 plus die Quadratwurzel von 7, alles durch 2; oder 3 minus die Quadratwurzel von 7, alles durch 2.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese Werte berechnen, erhalten wir ungefähr 4 und minus 1.")
  ]
  #only("3")[
    #voiceover("Denke daran, es ist immer eine gute Idee, deine Lösungen zu überprüfen, indem du sie in die ursprüngliche Gleichung einsetzt!")
  ]
]