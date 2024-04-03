#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Wie leitet man die Logarithmus Funktion ab?")
]

Ableitung der Logarithmusfunktion
#v(40pt)

#only("2-")[$ f(x) = ln(x) $]
#only("2")[
  #voiceover("Betrachten wir also konkret die Funktion f von x gleich natürlicher Logarithmus von x.")
]
]

#slide()[
#only("1")[
  #voiceover("Die Ableitung der natürlichen Logarithmusfunktion ist eins durch x.")
]

#text(size: 30pt, weight: "bold")[Ableitung der natürlichen Logarithmusfunktion]
#v(40pt)
#only("1-")[$(ln(x))' = 1/x$]

#only("2")[
  #voiceover("Das heißt die Ableitung ist gleich eins durch das Argument des natürlichen Logarithmus.")
]

]

#slide()[
#only("1")[
  #voiceover("Betrachten wir dazu ein Beispiel. Gegeben sei die Funktion f von x gleich ein halb mal der natürliche Logarithmus von x. ")
]

#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[$f(x) = 1/2 ln(x)$]
#v(10pt)
#only("2-")[$f'(x) = 1/2 1/x$]

#only("2")[
  #voiceover("Dann ist die Ableitung von f, also f Strich von x, gleich ein halb mal eins durch x.")
]
]