#import "../sophiatheme.typ": *

#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("Unsere Aufgabe:")
  ]

  Gesucht: Ableitung der Funktion

  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = x dot "sin"(x) + "cos"(x) $]
  ]

  #only("2")[
    #voiceover("Wir suchen die Ableitung von f von x gleich x mal Sinus von x plus Kosinus von x.")
  ]
]

#slide()[
  #only("1")[
    #voiceover("Um die Ableitung zu bestimmen, verwenden wir unsere bewährten Ableitungsregeln.")
  ]

  #only("2")[
    #voiceover("Die Produktregel,")
  ]

  #only("3")[
    #voiceover("und die Ableitungen von Sinus und Kosinus.")
  ]

  #text(size: 30pt, weight: "bold")[Ansatz]

  #v(40pt)

  #only("1-")[- Produktregel]

  #only("2-")[- Ableitung von Sinus und Kosinus]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Lösungsschritte]

  #v(40pt)

  #only("1-")[$ f(x) = x dot "sin"(x) + "cos"(x) $]

  #only("1")[
    #voiceover("Das ist unsere Ausgangsfunktion f von x gleich x mal Sinus von x plus Kosinus von x.")
  ]

  #v(10pt)

  #only("2")[#voiceover("Jetzt leiten wir jeden Term nach x ab.")]

  #v(10pt)

  #only("3-")[
    #align(center)[#text(fill:aqua)[⇓ Ableitung]]
  ]

  #only("3")[
    #voiceover("Zuerst der Produktterm x mal Sinus von x. Hier wenden wir die Produktregel an.")
  ]

  #only("4-")[$x dot "cos"(x) + "sin"(x) dot 1$]#only("6-")[$- "sin"(x)$]

  #only("4")[
    #voiceover("Die Ableitung von x mal Sinus von x ist x mal die Ableitung von Sinus von x, also Kosinus von x, plus Sinus von x mal die Ableitung von x, also 1.")
  ]

  #only("5")[
    #voiceover("Weiter geht's mit dem Term Kosinus von x. Die Ableitung von Kosinus von x ist minus Sinus von x.")
  ]



  #only("6")[
    #voiceover("Jetzt fassen wir die Terme zusammen und vereinfachen. x mal Kosinus von x plus Sinus von x minus Sinus von x.")
  ]

  #only("7")[
    #voiceover("Die beiden Sinus-Terme heben sich gegenseitig auf und wir erhalten das Ergebnis: f strich von x gleich x mal Kosinus von x.")
  ]

  #v(20pt)

  #only("7-")[
    #text()[$arrow.r$ Ergebnis:

    #v(10pt)

    $ f'(x) = x dot "cos"(x) $]
  ]

  #only("7")[
    #voiceover("Das war's für heute! Vergesst nicht, Sophia auf TikTok zu folgen. Bis zum nächsten Mal!")
  ]
]