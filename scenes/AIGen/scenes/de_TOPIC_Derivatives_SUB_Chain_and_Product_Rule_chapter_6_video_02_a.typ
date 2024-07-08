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

  #only("2-")[$ f(x) = x^4 e^x $]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich x hoch vier mal e hoch x.")
  ]

  #only("3-")[
    #align(center)[#text(fill: aqua)[⇓ Produktregel: $(u v)' = u' v + u v'$]]
  ]

  #only("3")[
    #voiceover("Wir wenden die Produktregel an, die besagt, dass die Ableitung eines Produkts u v gleich u Strich v plus u v Strich ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Identifiziere u und v]
  #v(40pt)

  #only("1-")[$ u = x^4 $]
  #v(10pt)
  #only("2-")[$ v = e^x $]

  #only("1")[
    #voiceover("Lass uns unser u und v identifizieren. Wir setzen u gleich x hoch vier.")
  ]

  #only("2")[
    #voiceover("und v gleich e hoch x.")
  ]

  #only("3-")[
    #align(center)[#text(fill: aqua)[⇓ Finde u' und v']]
  ]

  #only("3")[
    #voiceover("Nun müssen wir die Ableitungen von u und v finden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Berechne u' und v']
  #v(40pt)

  #only("1-")[$ u' = 4x^3 $]
  #v(10pt)
  #only("2-")[$ v' = e^x $]

  #only("1")[
    #voiceover("Die Ableitung von u, das ist x hoch vier, ist 4 x hoch drei. Das erhalten wir durch Anwendung der Potenzregel.")
  ]

  #only("2")[
    #voiceover("Die Ableitung von v, das ist e hoch x, ist einfach e hoch x. Das liegt daran, dass e hoch x seine eigene Ableitung ist.")
  ]

  #only("3-")[
    #align(center)[#text(fill: aqua)[⇓ Produktregel anwenden]]
  ]

  #only("3")[
    #voiceover("Jetzt, wo wir u Strich und v Strich haben, lass uns die Produktregel anwenden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Produktregel anwenden]
  #v(40pt)

  #only("1-")[$ f'(x) = u' v + u v' $]
  #v(10pt)
  #only("2-")[$ f'(x) = 4x^3 e^x + x^4 e^x $]

  #only("1")[
    #voiceover("Wir wenden die Produktregel-Formel an: f Strich von x ist gleich u Strich v plus u v Strich.")
  ]

  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir: f Strich von x ist gleich 4 x hoch drei mal e hoch x, plus x hoch vier mal e hoch x.")
  ]

  #only("3-")[
    #align(center)[#text(fill: aqua)[⇓ Endgültige Antwort]]
  ]

  #only("3")[
    #voiceover("Und das gibt uns unsere endgültige Antwort!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[$ f'(x) = 4x^3 e^x + x^4 e^x $]

  #only("1")[
    #voiceover("Also, die Ableitung von x hoch vier mal e hoch x ist 4 x hoch drei mal e hoch x, plus x hoch vier mal e hoch x. Großartige Arbeit beim Lösen dieses Problems mit der Produktregel!")
  ]
]