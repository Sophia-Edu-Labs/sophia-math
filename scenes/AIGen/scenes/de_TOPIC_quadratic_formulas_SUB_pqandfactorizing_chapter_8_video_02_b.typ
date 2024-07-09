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
  #only("2-")[- Mit der p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 + q)$]
  #v(20pt)
  #only("3-")[- Wobei $p = -2$ und $q = -3$ sind]
  #only("1")[
    #voiceover("Das war knapp! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Gleichung x Quadrat minus zwei x minus drei gleich null.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel. Diese Formel besagt, dass x gleich minus p durch zwei plus oder minus die Quadratwurzel von p durch zwei zum Quadrat plus q ist.")
  ]
  #only("3")[
    #voiceover("In unserer Gleichung ist p gleich minus zwei und q gleich minus drei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Formel anwenden]
  #v(40pt)
  #only("1-")[- $x = -(-2)/2 ± sqrt(((-2)/2)^2 + (-3))$]
  #v(20pt)
  #only("2-")[- $x = 1 ± sqrt(1 - 3)$]
  #v(20pt)
  #only("3-")[- $x = 1 ± sqrt(-2)$]
  #only("1")[
    #voiceover("Jetzt setzen wir diese Werte in unsere Formel ein. Wir erhalten x gleich minus minus zwei durch zwei plus oder minus die Quadratwurzel von minus zwei durch zwei zum Quadrat plus minus drei.")
  ]
  #only("2")[
    #voiceover("Vereinfacht ergibt das x gleich eins plus oder minus die Quadratwurzel von eins minus drei.")
  ]
  #only("3")[
    #voiceover("Das vereinfacht sich weiter zu x gleich eins plus oder minus die Quadratwurzel von minus zwei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Das Ergebnis vereinfachen]
  #v(40pt)
  #only("1-")[- $x = 1 ± sqrt(2)i$]
  #v(20pt)
  #only("2-")[- $x = 1 + sqrt(2)i$ oder $x = 1 - sqrt(2)i$]
  #v(20pt)
  #only("3-")[- Aber wir suchen nach reellen Lösungen... 🤔]
  #only("1")[
    #voiceover("Nun, die Quadratwurzel von minus zwei kann als i mal die Quadratwurzel von zwei geschrieben werden, wobei i die imaginäre Einheit ist.")
  ]
  #only("2")[
    #voiceover("Das gibt uns zwei komplexe Lösungen: x gleich eins plus die Quadratwurzel von zwei i oder x gleich eins minus die Quadratwurzel von zwei i.")
  ]
  #only("3")[
    #voiceover("Wir suchen jedoch nach reellen Lösungen für diese Gleichung. Was ist also schief gelaufen?")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Unseren Ansatz korrigieren]
  #v(40pt)
  #only("1-")[- Wir haben die falsche Formel verwendet! 😅]
  #v(20pt)
  #only("2-")[- Richtige Formel: $x = -b/(2a) ± sqrt((b/(2a))^2 - c/a)$]
  #v(20pt)
  #only("3-")[- Wobei $a = 1$, $b = -2$ und $c = -3$ sind]
  #only("1")[
    #voiceover("Das Problem ist, dass wir die falsche Formel verwendet haben! Die p-q-Formel ist für Gleichungen in der Form x Quadrat plus p x plus q gleich null.")
  ]
  #only("2")[
    #voiceover("Für unsere Gleichung sollten wir die allgemeinere quadratische Formel verwenden: x gleich minus b durch zwei a plus oder minus die Quadratwurzel von b durch zwei a zum Quadrat minus c durch a.")
  ]
  #only("3")[
    #voiceover("In unserer Gleichung ist a gleich eins, b gleich minus zwei und c gleich minus drei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Mit der richtigen Formel lösen]
  #v(40pt)
  #only("1-")[- $x = -(-2)/(2(1)) ± sqrt(((-2)/(2(1)))^2 - (-3)/1)$]
  #v(20pt)
  #only("2-")[- $x = 1 ± sqrt(1 + 3)$]
  #v(20pt)
  #only("3-")[- $x = 1 ± sqrt(4)$ = $1 ± 2$]
  #only("1")[
    #voiceover("Lass uns diese Formel anwenden. Wir erhalten x gleich minus minus zwei durch zwei mal eins plus oder minus die Quadratwurzel von minus zwei durch zwei mal eins zum Quadrat minus minus drei durch eins.")
  ]
  #only("2")[
    #voiceover("Vereinfacht ergibt das x gleich eins plus oder minus die Quadratwurzel von eins plus drei.")
  ]
  #only("3")[
    #voiceover("Das vereinfacht sich zu x gleich eins plus oder minus die Quadratwurzel von vier, was eins plus oder minus zwei ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[- $x = 1 + 2 = 3$ oder $x = 1 - 2 = -1$]
  #v(20pt)
  #only("2-")[- Lösungen: $x = 3$ oder $x = -1$ ✅]
  #v(20pt)
  #only("3-")[💡 Überprüfe immer deine Lösungen!]
  #only("1")[
    #voiceover("Das gibt uns unsere zwei Lösungen: x gleich eins plus zwei, was drei ist, oder x gleich eins minus zwei, was minus eins ist.")
  ]
  #only("2")[
    #voiceover("Unsere endgültige Antwort lautet also: x gleich drei oder x gleich minus eins.")
  ]
  #only("3")[
    #voiceover("Denke daran, es ist immer eine gute Idee, deine Lösungen zu überprüfen, indem du sie in die ursprüngliche Gleichung einsetzt. Großartige Arbeit beim Lösen dieser quadratischen Gleichung!")
  ]
]