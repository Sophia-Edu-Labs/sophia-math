#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Und wie letet man die Kosinus Funktion ab?")
]

Ableitung der Kosinusfunktion
#v(40pt)

#only("2-")[$ f(x) = cos(x) $]
#only("2")[
  #voiceover("Betrachten wir also konkret die Funktion f von x gleich Kosinus von x.")
]
]

#slide()[
#only("1")[
  #voiceover("Die Ableitung der Kosinusfunktion ist das Negative der Sinusfunktion.")
]

#text(size: 30pt, weight: "bold")[Ableitung der Kosinusfunktion]
#v(40pt)
#only("1-")[$(cos(x))' = -sin(x)$]

#only("2")[
  #voiceover("In Formeln: Die Ableitung von Kosinus von x ist gleich minus Sinus von x.")
]

]

#slide()[
#only("1")[
  #voiceover("Also wieder ein Beispiel: Betrachte die Funktion ein drittel mal der Kosinus von x.")
]

#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[$f(x) = 1/3 cos(x)$]
#v(10pt)
#only("2-")[$f'(x) = -1/3 sin(x)$]

#only("2")[
  #voiceover("Dann ist die Ableitung von f, also f Strich von x, gleich minus ein drittel Sinus von x.")
]
]