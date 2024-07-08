#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast die Produktregel korrekt angewendet. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("2-")[$ f(x) = x^3 cos(x) $]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich x hoch drei mal Kosinus von x.")
  ]

  #only("3-")[
    #align(center)[
      #text(fill: aqua)[⇓ Produktregel: $(u v)' = u' v + u v'$]
    ]
  ]

  #only("3")[
    #voiceover("Wir wenden die Produktregel an, die besagt, dass die Ableitung eines Produkts u mal v gleich u Strich mal v plus u mal v Strich ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Identifiziere u und v]
  #v(40pt)

  #only("1-")[$ u = x^3 $]
  #v(10pt)
  #only("2-")[$ v = cos(x) $]

  #only("1")[
    #voiceover("Lass uns unser u und v identifizieren. Wir setzen u gleich x hoch drei")
  ]

  #only("2")[
    #voiceover("und v gleich Kosinus von x.")
  ]

  #only("3-")[
    #align(center)[
      #text(fill: aqua)[⇓ Finde u' und v']
    ]
  ]

  #only("3")[
    #voiceover("Jetzt müssen wir die Ableitungen von u und v finden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Berechne u' und v']
  #v(40pt)

  #only("1-")[$ u' = 3x^2 $]
  #v(10pt)
  #only("2-")[$ v' = -sin(x) $]

  #only("1")[
    #voiceover("Die Ableitung von u, also x hoch drei, ist 3 x quadrat.")
  ]

  #only("2")[
    #voiceover("Die Ableitung von v, also Kosinus von x, ist minus Sinus von x.")
  ]

  #only("3-")[
    #align(center)[
      #text(fill: aqua)[⇓ Produktregel anwenden]
    ]
  ]

  #only("3")[
    #voiceover("Jetzt, da wir u Strich und v Strich haben, wenden wir die Produktregel an.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Produktregel anwenden]
  #v(40pt)

  #only("1-")[$ f'(x) = u' v + u v' $]
  #v(10pt)
  #only("2-")[$ f'(x) = 3x^2 cos(x) + x^3 (-sin(x)) $]
  #v(10pt)
  #only("3-")[$ f'(x) = 3x^2 cos(x) - x^3 sin(x) $]

  #only("1")[
    #voiceover("Durch Anwenden der Produktregel erhalten wir f Strich von x gleich u Strich mal v plus u mal v Strich.")
  ]

  #only("2")[
    #voiceover("Indem wir unsere Werte einsetzen, erhalten wir 3 x quadrat mal Kosinus von x plus x hoch drei mal minus Sinus von x.")
  ]

  #only("3")[
    #voiceover("Durch Vereinfachung kommen wir zu unserer endgültigen Antwort: f Strich von x gleich 3 x quadrat mal Kosinus von x minus x hoch drei mal Sinus von x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[$ f'(x) = 3x^2 cos(x) - x^3 sin(x) $]

  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist f Strich von x gleich 3 x quadrat mal Kosinus von x minus x hoch drei mal Sinus von x. Gut gemacht, dass Du dieses Problem mit der Produktregel gelöst hast!")
  ]
]