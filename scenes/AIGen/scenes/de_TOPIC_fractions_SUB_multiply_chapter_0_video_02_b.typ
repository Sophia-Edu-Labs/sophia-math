#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplikation von Brüchen mit ganzen Zahlen]
  #v(40pt)

  #only("1-")[
    #align(center)[$ 3 dot 1/2 $]
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Zähler mit der ganzen Zahl multiplizieren]]
  ]

  #only("3-")[
    #align(center)[$ 3 dot 1/2 = (3 dot 1)/2 $]
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Vereinfachen]]
  ]

  #only("5-")[
    #align(center)[$ (3 dot 1)/2 = 3/2 $]
  ]

  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Wenn man eine ganze Zahl mit einem Bruch multipliziert, multiplizieren wir die ganze Zahl mit dem Zähler des Bruchs.")
  ]

  #only("3")[
    #voiceover("In diesem Fall multiplizieren wir 3 mit dem Zähler 1. Der Nenner bleibt unverändert.")
  ]

  #only("4")[
    #voiceover("Jetzt lass uns unseren Ausdruck vereinfachen.")
  ]

  #only("5")[
    #voiceover("Drei mal eins ist drei, also ist unsere endgültige Antwort drei Halbe oder drei durch zwei.")
  ]
]