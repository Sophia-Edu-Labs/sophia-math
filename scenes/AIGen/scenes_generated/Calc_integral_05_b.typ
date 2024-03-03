#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Das stimmt leider nicht. Bestimmen wir gemeinsam die Stammfunktion")
]
Betrachte die Funktion
#v(40pt)
#only("2-")[
  #text()[$ f(x) = 5e^(3x) - 5/(x^4) $]
]
#only("2")[
  #voiceover("der Funktion f von x gleich fünf mal e hoch drei x minus fünf geteilt durch x hoch vier.")
]
]



#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[
  $f(x) = 5e^(3x) - 5/(x^4)$
]
#only("1")[
  #voiceover("Wir beginnen mit der gegebenen Funktion, fünf mal e hoch drei x minus fünf geteilt durch x hoch vier.")
]
#v(10pt)
#only("2")[
  #voiceover("Zuerst integrieren wir den Exponentialteil, fünf mal e hoch drei x.")
]
#v(10pt)
#only("3-")[
  #align(center)[
    #text(fill:aqua)[⇓ Integration des Exponentialteils]
  ]
]
#only("3")[
  #voiceover("Bei der Integration von e hoch ax ist das Integral gleich e hoch ax geteilt durch a.")
]
#v(10pt)
#only("4-")[
  $F_1(x) = (5)/(3)e^(3x)$
]
#only("4")[
  #voiceover("Daher ist das Integral von fünf mal e hoch drei x gleich fünf durch drei mal e hoch drei x.")
]
#v(10pt)
#only("5")[
  #voiceover("Als Nächstes integrieren wir den Term minus fünf geteilt durch x hoch vier.")
]
#v(10pt)
#only("6-")[
  #align(center)[
    #text(fill:aqua)[⇓ Integration des Rationalteils]
  ]
]
#only("6")[
  #voiceover("Um x hoch minus vier zu integrieren, addieren wir eins zur Potenz hinzu und teilen durch die neue Potenz.")
]
#v(10pt)
#only("7-")[
  $F_2(x) = 5/3x^(-3)$
]
#only("7")[
  #voiceover("Folglich ist das Integral von minus fünf geteilt durch x hoch vier gleich fünf Drittel mal x hoch minus drei.")
]
#v(10pt)
#only("6-")[
  #align(center)[
    #text(fill:aqua)[⇓ Zusammenführen]
  ]
]
#v(10pt)
#only("8")[
  #voiceover("Führen wir die beiden Funktionen zusammen.")
]
#v(10pt)
#only("9-")[
  $F(x) = 5/3e^(3x) + 5/3x^(-3) + C$
]
#only("9")[
  #voiceover("Die Stammfunktion lautet also fünf Drittel mal e hoch drei x plus fünf Drittel mal x hoch minus drei plus die Integrationskonstante C.")
]
]