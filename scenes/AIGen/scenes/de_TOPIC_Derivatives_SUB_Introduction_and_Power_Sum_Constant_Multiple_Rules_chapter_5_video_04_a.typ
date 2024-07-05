#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Potenzregel]
  #v(40pt)

  #only("1-")[Gegebene Funktion: $f(x) = 8x^7$]
  #v(20pt)

  #only("2-")[Potenzregel: $(d)/("dx") x^n = n dot x^(n-1)$]
  #v(20pt)

  #only("3-")[Hier ist $n = 7$]
  #v(20pt)

  #only("4-")[Ableitung: $f'(x) = 7 dot 8 dot x^(7-1)$]
  #v(20pt)

  #only("5-")[Vereinfacht: $f'(x) = 56x^6$]

  #only("1")[
    #voiceover("Großartig! Du hast die Potenzregel korrekt angewendet. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Wir beginnen mit der Potenzregel für die Differentiation. Diese Regel besagt, dass die Ableitung von x hoch n gleich n mal x hoch n minus 1 ist.")
  ]

  #only("3")[
    #voiceover("In unserer Funktion, f von x gleich 8 x hoch 7, ist n gleich 7.")
  ]

  #only("4")[
    #voiceover("Wenn wir die Potenzregel anwenden, erhalten wir 7 mal 8 mal x hoch 7 minus 1, also 6.")
  ]

  #only("5")[
    #voiceover("Vereinfacht ergibt dies unsere endgültige Antwort: Die Ableitung f Strich von x ist gleich 56 x hoch 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Erklärung]
  #v(40pt)

  #only("1-")[- Koeffizient: 8 wird Teil der Ableitung]
  #v(20pt)

  #only("2-")[- Exponent: 7 wird der neue Koeffizient]
  #v(20pt)

  #only("3-")[- Neuer Exponent: Ursprünglicher Exponent minus 1]

  #only("1")[
    #voiceover("Lass uns aufschlüsseln, was passiert ist. Zuerst wird der Koeffizient 8 aus der ursprünglichen Funktion Teil unserer Ableitung.")
  ]

  #only("2")[
    #voiceover("Als nächstes wird der Exponent 7 unser neuer Koeffizient, wenn wir die Potenzregel anwenden.")
  ]

  #only("3")[
    #voiceover("Schließlich ist unser neuer Exponent der ursprüngliche Exponent minus 1. Also 7 minus 1 ergibt 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[- Die Potenzregel ist entscheidend für die Differentiation von Polynomen 📊]
  #v(20pt)

  #only("2-")[- Immer den Koeffizienten mit dem Exponenten multiplizieren 🔢]
  #v(20pt)

  #only("3-")[- Den Exponenten um 1 verringern ⬇️]
  #v(20pt)

  #only("4-")[- Übung macht den Meister! 💪]

  #only("1")[
    #voiceover("Die Potenzregel ist ein entscheidendes Werkzeug zur Differentiation von Polynomen.")
  ]

  #only("2")[
    #voiceover("Denke daran, immer den Koeffizienten mit dem Exponenten zu multiplizieren, wenn Du diese Regel anwendest.")
  ]

  #only("3")[
    #voiceover("Und vergiss nicht, den Exponenten in Deinem Ergebnis um 1 zu verringern.")
  ]

  #only("4")[
    #voiceover("Übe weiter mit verschiedenen Polynomen, um diese Technik zu meistern. Großartige Arbeit bei der Lösung dieses Problems!")
  ]
]