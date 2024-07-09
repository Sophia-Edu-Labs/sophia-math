#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)
  #only("1-")[- Quadratische Gleichung: $a x^2 + b x + c = 0$]
  #v(20pt)
  #only("2-")[- p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Wobei $p = b/a$ und $q = c/a$]
  
  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung Schritt für Schritt durch. Zuerst erinnern wir uns daran, dass eine quadratische Gleichung die allgemeine Form a x Quadrat plus b x plus c gleich null hat.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel, die besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q ist.")
  ]
  #only("3")[
    #voiceover("Hierbei ist p gleich b durch a und q gleich c durch a.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Unsere Gleichung]
  #v(40pt)
  #only("1-")[$ x^2 + 2x - 8 = 0 $]
  #v(20pt)
  #only("2-")[Vergleich mit $a x^2 + b x + c = 0$:]
  #v(20pt)
  #only("3-")[- $a = 1$]
  #v(10pt)
  #only("4-")[- $b = 2$]
  #v(10pt)
  #only("5-")[- $c = -8$]
  
  #only("1")[
    #voiceover("Unsere spezifische Gleichung ist x Quadrat plus 2x minus 8 gleich null.")
  ]
  #only("2")[
    #voiceover("Lass uns dies mit der Standardform einer quadratischen Gleichung vergleichen.")
  ]
  #only("3")[
    #voiceover("Wir sehen, dass a gleich 1 ist,")
  ]
  #only("4")[
    #voiceover("b gleich 2 ist,")
  ]
  #only("5")[
    #voiceover("und c gleich minus 8 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung von p und q]
  #v(40pt)
  #only("1-")[- $p = b/a = 2/1 = 2$]
  #v(20pt)
  #only("2-")[- $q = c/a = -8/1 = -8$]
  
  #only("1")[
    #voiceover("Nun berechnen wir p und q. p ist gleich b durch a, was 2 durch 1 ist und sich zu 2 vereinfacht.")
  ]
  #only("2")[
    #voiceover("q ist gleich c durch a, was minus 8 durch 1 ist und sich zu minus 8 vereinfacht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der p-q-Formel]
  #v(40pt)
  #only("1-")[$ x = -p/2 ± sqrt((p/2)^2 - q) $]
  #v(20pt)
  #only("2-")[$ x = -2/2 ± sqrt((2/2)^2 - (-8)) $]
  #v(20pt)
  #only("3-")[$ x = -1 ± sqrt(1 + 8) $]
  #v(20pt)
  #only("4-")[$ x = -1 ± sqrt(9) $]
  #v(20pt)
  #only("5-")[$ x = -1 ± 3 $]
  
  #only("1")[
    #voiceover("Jetzt können wir die p-q-Formel anwenden. Wir setzen unsere Werte für p und q ein.")
  ]
  #only("2")[
    #voiceover("Das ergibt x gleich minus 2 durch 2, plus oder minus die Quadratwurzel von 2 durch 2 zum Quadrat, minus minus 8.")
  ]
  #only("3")[
    #voiceover("Vereinfacht ergibt das x gleich minus 1, plus oder minus die Quadratwurzel von 1 plus 8.")
  ]
  #only("4")[
    #voiceover("Das vereinfacht sich zu x gleich minus 1, plus oder minus die Quadratwurzel von 9.")
  ]
  #only("5")[
    #voiceover("Die Quadratwurzel von 9 ist 3, also ist unsere endgültige Gleichung x gleich minus 1, plus oder minus 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Lösung]
  #v(40pt)
  #only("1-")[$ x = -1 + 3 $ oder $ x = -1 - 3 $]
  #v(20pt)
  #only("2-")[$ x = 2 $ oder $ x = -4 $]
  
  #only("1")[
    #voiceover("Um unsere endgültige Lösung zu erhalten, berechnen wir sowohl die Plus- als auch die Minus-Fälle.")
  ]
  #only("2")[
    #voiceover("Das ergibt x gleich 2 oder x gleich minus 4. Dies sind die beiden Lösungen unserer quadratischen Gleichung.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verifikation]
  #v(40pt)
  #only("1-")[Lass uns unsere Lösungen überprüfen:]
  #v(20pt)
  #only("2-")[Für $x = 2$: $2^2 + 2(2) - 8 = 4 + 4 - 8 = 0$ ✅]
  #v(20pt)
  #only("3-")[Für $x = -4$: $(-4)^2 + 2(-4) - 8 = 16 - 8 - 8 = 0$ ✅]
  
  #only("1")[
    #voiceover("Lass uns unsere Lösungen überprüfen, indem wir sie in die ursprüngliche Gleichung einsetzen.")
  ]
  #only("2")[
    #voiceover("Für x gleich 2 erhalten wir 2 Quadrat plus 2 mal 2 minus 8, was 4 plus 4 minus 8 ergibt, was null ergibt. Das stimmt.")
  ]
  #only("3")[
    #voiceover("Für x gleich minus 4 erhalten wir minus 4 Quadrat plus 2 mal minus 4 minus 8, was 16 minus 8 minus 8 ergibt, was ebenfalls null ergibt. Beide Lösungen sind korrekt!")
  ]
]