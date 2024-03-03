#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()
[
  #only("1")[
    #voiceover("Beginnen wir damit, das Integral einer gegebenen Funktion zu bestimmen.")
  ]
  Berechne eine Stammfunktion von
  #v(40pt)
  #only("2-")[#text()[$ f(x) = 2x  e ^)(x^2)( + 4x $]]
  #only("2")[
    #voiceover("Der Funktion f von x gleich 2 mal x mal e hoch x Quadrat plus 4 mal x.")
  ]
]

#slide()
[
  #only("1")[
    #voiceover("Um eine Stammfunktion zu finden, nutzen wir die Grundintegrale und die Substitutionsmethode.")
  ]
  #only("2")[
    #voiceover("Beginnen wir mit dem Lösungsprozess!")
  ]
  #text(size: 30pt, weight: "bold")[Ansatz]
  #v(40pt)
      #only("1-")[- Grundintegrale]
      #only("2-")[- Substitutionsmethode]
]

#slide()
[
  #text(size: 30pt, weight: "bold")[Lösungsschritte]
  #v(40pt)
  #only("1-")[$f(x) = 2x  e ^)(x^2)( + 4x$]
  #only("1")[
    #voiceover("Wir beginnen mit der gegebenen Funktion f von x gleich 2 mal x mal e hoch x Quadrat plus 4 mal x.")
  ]
  #v(10pt)
  #only("2")[
    #voiceover("Zuallererst erkennen wir, dass der erste Teil der Funktion, 2x mal e hoch x Quadrat, durch die Substitutionsmethode einfacher integriert werden kann. Wir setzen u gleich x Quadrat.")
  ]
  #v(10pt)
  #only("3-")[
    #align(center)[#text(fill:aqua)[⇓ Setzen u = x^2]]
  ]
  #only("3")[
    #voiceover("Durch die Substitution u gleich x Quadrat folgt, dass die Ableitung von u, also du, gleich 2x dif x ist.")
  ]
  #v(10pt)
  #only("4-")[$ du = 2x dif x$]
  #only("5-")[
    #voiceover("Somit lässt sich der Teil 2x e hoch u einfach integrieren.")
    #align(center)[⇓ Integrieren von $ e^u $]
  ]
  #only("5")[
    #voiceover("Die Integration von e hoch u ergibt ebenfalls e hoch u plus eine Konstante C.")
  ]
  #v(10pt)
  #only("6-")[#align(center)[⇒ $  e^u + C $] #align(center)[⇒ $  e^)(x^2)( + C $]]
  #only("7-")[
    #voiceover("Nun integrieren wir den zweiten Teil der Funktion, 4x.")
  ]
  #only("8-")[
    #voiceover("Die Integration von 4x ist einfach und folgt der Potenzregel der Integration. Das ergibt 2x^2.")
  ]
  #v(10pt)
  #only("8")[#align(center)[⇒ $ 2x^2 $]]
  #only("9-")[
    #voiceover("Die Stammfunktion von f(x) ist also die Summe aus e hoch x Quadrat und 2x Quadrat plus eine Konstante C.")
  ]
  #v(10pt)
  #only("9")[
    $ F(x) = e^)(x^2)( + 2x^2 + C $
  ]
  #only("9")[
    #voiceover("Damit haben wir das Integral von 2x mal e hoch x Quadrat plus 4x bestimmt. Die Stammfunktion F von x ist e hoch x Quadrat plus 2 mal x Quadrat plus eine Integrationskonstante C.")
  ]
]