#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)
  #only("1-")[- Gleichung: $x^2 - 5x + 6 = 0$]
  #v(20pt)
  #only("2-")[- Mit der p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Wobei $p = -5$ und $q = 6$ sind]
  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung Schritt für Schritt durch. Lass uns mit der Gleichung x Quadrat minus 5x plus 6 gleich null beginnen.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel. Diese Formel besagt, dass x gleich minus p durch 2 plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q ist.")
  ]
  #only("3")[
    #voiceover("In unserer Gleichung ist p gleich minus 5 und q gleich 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Formel]
  #v(40pt)
  #only("1-")[- $x = -(-5)/2 ± sqrt(((-5)/2)^2 - 6)$]
  #v(20pt)
  #only("2-")[- $x = 5/2 ± sqrt((5/2)^2 - 6)$]
  #v(20pt)
  #only("3-")[- $x = 2.5 ± sqrt(6.25 - 6)$]
  #only("1")[
    #voiceover("Nun, lass uns die Formel anwenden. Wir setzen minus 5 für p und 6 für q ein.")
  ]
  #only("2")[
    #voiceover("Indem wir die negativen Vorzeichen vereinfachen, erhalten wir 5 durch 2 plus oder minus die Quadratwurzel von 5 durch 2 zum Quadrat minus 6.")
  ]
  #only("3")[
    #voiceover("Lass uns weiter rechnen. 5 durch 2 ist 2,5, und 5 durch 2 zum Quadrat ist 6,25.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endberechnung]
  #v(40pt)
  #only("1-")[- $x = 2.5 ± sqrt(0.25)$]
  #v(20pt)
  #only("2-")[- $x = 2.5 ± 0.5$]
  #v(20pt)
  #only("3-")[- $x = 2$ oder $x = 3$]
  #only("1")[
    #voiceover("Wir setzen unsere Berechnung fort. Wir haben x gleich 2,5 plus oder minus die Quadratwurzel von 0,25.")
  ]
  #only("2")[
    #voiceover("Die Quadratwurzel von 0,25 ist 0,5, also wird unsere Gleichung zu x gleich 2,5 plus oder minus 0,5.")
  ]
  #only("3")[
    #voiceover("Das gibt uns zwei Lösungen: x gleich 2, wenn wir 0,5 subtrahieren, und x gleich 3, wenn wir 0,5 addieren.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verifikation]
  #v(40pt)
  #only("1-")[- Für $x = 2$: $2^2 - 5(2) + 6 = 4 - 10 + 6 = 0$ ✅]
  #v(20pt)
  #only("2-")[- Für $x = 3$: $3^2 - 5(3) + 6 = 9 - 15 + 6 = 0$ ✅]
  #v(20pt)
  #only("3-")[💡 Überprüfe immer Deine Lösungen!]
  #only("1")[
    #voiceover("Lass uns unsere Lösungen überprüfen. Für x gleich 2 setzen wir dies in unsere ursprüngliche Gleichung ein. 2 Quadrat minus 5 mal 2 plus 6 ergibt 4 minus 10 plus 6, was tatsächlich null ergibt.")
  ]
  #only("2")[
    #voiceover("Ähnlich erhalten wir für x gleich 3, dass 3 Quadrat minus 5 mal 3 plus 6 gleich 9 minus 15 plus 6 ist, was ebenfalls null ergibt.")
  ]
  #only("3")[
    #voiceover("Denke daran, es ist immer eine gute Praxis, Deine Lösungen zu überprüfen, indem Du sie in die ursprüngliche Gleichung einsetzt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[- Wir haben $x^2 - 5x + 6 = 0$ mit der p-q-Formel gelöst 🧮]
  #v(20pt)
  #only("2-")[- Wir haben zwei Lösungen gefunden: $x = 2$ und $x = 3$ 🎉]
  #v(20pt)
  #only("3-")[- Wir haben beide Lösungen überprüft ✅]
  #only("1")[
    #voiceover("Zusammenfassend haben wir die quadratische Gleichung x Quadrat minus 5x plus 6 gleich null mit der p-q-Formel gelöst.")
  ]
  #only("2")[
    #voiceover("Wir haben zwei Lösungen gefunden: x gleich 2 und x gleich 3.")
  ]
  #only("3")[
    #voiceover("Schließlich haben wir beide Lösungen überprüft, indem wir sie in die ursprüngliche Gleichung eingesetzt haben. Gut gemacht beim Lösen dieser quadratischen Gleichung!")
  ]
]