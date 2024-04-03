#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Wie leitet man die Sinusfunktion ab?")
]

Ableitung der Sinusfunktion
#v(40pt)

#only("2-")[$ f(x) = sin(x) $]
#only("2")[
  #voiceover("Betrachten wir also konkret die Funktion f von x gleich Sinus von x.")
]
]

#slide()[
#only("1")[
  #voiceover("Die Ableitung der Sinusfunktion ist die Kosinusfunktion.")
]

#text(size: 30pt, weight: "bold")[Ableitung der Sinusfunktion]
#v(40pt)
#only("1-")[$(sin(x))' = cos(x)$]

#only("2")[
  #voiceover("In Formeln: Die Ableitung von Sinus von x ist gleich Kosinus von x.")
]

]

#slide()[
#only("1")[
  #voiceover("Dazu ein kleines Beispiel: BEtrachten wir die Funktion f von x gleich ein halb mal sinus von x.")
]

#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[$f(x) = 1/2 sin(x)$]
#v(10pt)
#only("2-")[$f'(x) = 1/2 cos(x)$]

#only("2")[
  #voiceover("Dann ist die Ableitung von f, also f Strich von x, gleich ein halb mal Kosinus von x.")
]
]