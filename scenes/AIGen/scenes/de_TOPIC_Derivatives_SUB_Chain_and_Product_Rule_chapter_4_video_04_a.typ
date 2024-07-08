#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Ausgezeichnete Arbeit! Du hast dieses Problem korrekt angegangen. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir zur Antwort gelangen.")
  ]

  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("2-")[$ f(x) = x^2 ln(x) $]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich x Quadrat mal dem natürlichen Logarithmus von x.")
  ]

  #only("3-")[#align(center)[#text(fill: aqua)[⇓ Produktregel]]]

  #only("3")[
    #voiceover("Um dies zu differenzieren, verwenden wir die Produktregel. Die Produktregel besagt, dass für zwei Funktionen u und v die Ableitung ihres Produkts gleich u Strich mal v plus u mal v Strich ist.")
  ]

  #only("4-")[$ f'(x) = (x^2)' dot ln(x) + x^2 dot (ln(x))' $]

  #only("4")[
    #voiceover("Angewendet auf unsere Funktion erhalten wir: f Strich von x gleich die Ableitung von x Quadrat mal ln von x plus x Quadrat mal die Ableitung von ln von x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Differenzierung]
  #v(40pt)

  #only("1-")[$ f'(x) = (x^2)' dot ln(x) + x^2 dot (ln(x))' $]
  #v(20pt)

  #only("2-")[#align(center)[#text(fill: aqua)[⇓ Differenziere $x^2$ und $ln(x)$]]]
  #v(20pt)

  #only("3-")[$ f'(x) = 2x dot ln(x) + x^2 dot 1/x $]
  #v(20pt)

  #only("4-")[#align(center)[#text(fill: aqua)[⇓ Vereinfachen]]]
  #v(20pt)

  #only("5-")[$ f'(x) = 2x ln(x) + x $]

  #only("1")[
    #voiceover("Lass uns das weiter aufschlüsseln.")
  ]

  #only("2")[
    #voiceover("Wir müssen x Quadrat und ln von x separat differenzieren.")
  ]

  #only("3")[
    #voiceover("Die Ableitung von x Quadrat ist 2x und die Ableitung von ln von x ist 1 durch x.")
  ]

  #only("4")[
    #voiceover("Nun lass uns unseren Ausdruck vereinfachen.")
  ]

  #only("5")[
    #voiceover("Das x Quadrat und 1 durch x im zweiten Term heben sich auf, sodass nur x übrig bleibt. Unsere endgültige Antwort ist also f Strich von x gleich 2x ln von x plus x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[$ f'(x) = 2x ln(x) + x $]

  #only("1")[
    #voiceover("Und da haben wir es! Die Ableitung von x Quadrat mal ln von x ist 2x ln von x plus x. Dieses Problem zeigt die Stärke der Produktregel beim Differenzieren komplexerer Funktionen. Großartige Arbeit bei der Lösung!")
  ]
]