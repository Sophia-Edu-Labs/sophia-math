#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Ziehen einer Kugel aus einer Urne]

  #v(20pt)

  Die Urne enthält 12 Kugeln mit den Zahlen 1 bis 12.

  #v(40pt)

  #only("1-")[
    $ E = {3, 6, 9, 12} $
  ]

  #only("1")[
    #voiceover("Schade, das ist leider falsch. Gegeben war das Ereignis E in Mengenschreibweise als die Menge der Zahlen 3, 6, 9 und 12.")
  ]

  #v(20pt)

  #only("2")[
    #voiceover("Die korrekte Beschreibung dieses Ereignisses lautet: Die Zahl auf der gezogenen Kugel ist durch 3 teilbar, oder anders ausgedrückt, sie ist ein Vielfaches von 3.")
  ]

  #only("3")[
    #voiceover("Schauen wir uns die Zahlen in der Menge E genauer an: 3, 6, 9 und 12. Jede dieser Zahlen ist durch 3 teilbar.")
  ]

  #only("4")[
    #voiceover("3 geteilt durch 3 ist 1, 6 geteilt durch 3 ist 2, 9 geteilt durch 3 ist 3 und 12 geteilt durch 3 ist 4. Es bleiben keine Reste.")
  ]

  #only("5")[
    #voiceover("Anders gesagt: 3, 6, 9 und 12 sind Vielfache von 3. Sie ergeben sich, wenn man 3 mit einer ganzen Zahl multipliziert.")
  ]

  ]

]