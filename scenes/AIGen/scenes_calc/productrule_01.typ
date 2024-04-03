#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[

#only("1")[
  #voiceover("Betrachten wir die Produktregel bei der Ableitung. Die Produktregel wird immer dann verwendet, wenn wir das Produkt zweier Funktionen betrachten.")
]

#text(size: 30pt, weight: "bold")[Produktregel]
#v(40pt)

#only("2-")[Beispiel: $f(x) = x dot e^x$]
#only("2")[
  #voiceover("Zum Beispiel die Funktion f von x gleich  x mal e hoch x, also das Produkt von x und e hoch x.")
]
]

#slide()[
#only("1")[
  #voiceover("Die Produktregel besagt, dass die Ableitung eines Produkts gleich der erste Faktor mal die Ableitung des zweiten Faktors plus der zweite Faktor mal die Ableitung des ersten Faktors ist.")
]

#text(size: 30pt, weight: "bold")[Produktregel]
#v(40pt)
#only("1-")[$(u(x) dot v(x))'$

$ = u(x) dot v'(x) + v(x) dot u'(x)$]

#only("2")[
  #voiceover("In Formeln: Die Ableitung von u von x mal v von x ist gleich u von x mal die Ableitung von v von x plus v von x mal die Ableitung von u von x.")
]

]

#slide()[
#only("1")[
  #voiceover("Lass uns das an einem Beispiel verdeutlichen.")
]

#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[$f(x) = x dot e^x$]
#v(10pt)
#only("2-")[$f'(x) = x dot (e^x)' + e^x dot (x)'$]
#v(10pt)
#only("3-")[$f'(x) = x dot e^x + e^x dot 1$]
#v(10pt)
#only("4-")[$f'(x) = x dot e^x + e^x$]

#only("1")[
  #voiceover("Beginnen wir mit der Funktion f von x gleich e hoch x. Dann wenden wir die Produktregel an und erhalten,")
]
#only("2")[
  #voiceover("dass die Ableitung von f von x gleich x mal die Ableitung von e hoch x plus e hoch x mal die Ableitung von x ist.")
]
#only("3")[
  #voiceover("Die Ableitung von e hoch x ist e hoch x und die Ableitung von x ist 1.")
]
#only("4")[
  #voiceover("Also ist die Ableitung von f von x gleich x mal e hoch x plus e hoch x.")
]
]