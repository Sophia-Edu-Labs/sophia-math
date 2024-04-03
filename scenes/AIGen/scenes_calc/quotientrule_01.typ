#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Wie leiten wir nun eine Funktion ab, die aus dem Quotienten zweier Funktionen besteht?")
]

Quotientenregel
#v(40pt)

#only("2-")[Beispiel: $f(x) = u(x) / v(x)$]
#only("2")[
  #voiceover("Die Quotientenregel wird angewendet, wenn eine Funktion ein Quotient aus zwei anderen Funktionen ist, wie zum Beispiel f von x gleich u von x geteilt durch v von x.")
]
]

#slide()[
#only("1")[
  #voiceover("Die Quotientenregel besagt, dass die Ableitung eines Quotienten gleich dem Nenner mal der Ableitung des Zählers minus dem Zähler mal der Ableitung des Nenners, alles geteilt durch den Nenner zum Quadrat ist.")
]

#text(size: 30pt, weight: "bold")[Quotientenregel]
#v(40pt)
#only("1-")[$"(u(x) / v(x))' = (v(x) dot u'(x) - u(x) dot v'(x)) / (v(x))^2"$]

#only("2")[
  #voiceover("In Formeln: Die Ableitung von u von x geteilt durch v von x ist gleich v von x mal die Ableitung von u von x minus u von x mal die Ableitung von v von x, alles geteilt durch v von x zum Quadrat.")
]

]

#slide()[
#only("1")[
  #voiceover("Lass uns das an einem Beispiel verdeutlichen.")
]

#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[$f(x) = x / e^x$]
#v(10pt)
#only("2-")[$f'(x) = (e^x dot (x)' - x dot (e^x)') / (e^x)^2$]
#v(10pt)
#only("3-")[$f'(x) = (e^x dot 1 - x dot e^x) / (e^x)^2$]
#v(10pt)
#only("4-")[$f'(x) = (e^x - x dot e^x) / (e^x)^2$]

#only("1")[
  #voiceover("Beginnen wir mit der Funktion f von x gleich x geteilt durch e hoch x.")
]
#only("2")[
  #voiceover("Dann ist die Ableitung von f nach der Quotientenregel gleich e hoch x mal die Ableitung von x minus x mal die Ableitung von e hoch x, alles geteilt durch e hoch x zum Quadrat.")
]
#only("3")[
  #voiceover("Die Ableitung von x ist 1 und die Ableitung von e hoch x ist e hoch x.")
]
#only("4")[
  #voiceover("Also ist die Ableitung von f gleich e hoch x minus x mal e hoch x, geteilt durch e hoch x zum Quadrat.")
]
]