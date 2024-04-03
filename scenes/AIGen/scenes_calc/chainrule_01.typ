#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Was machen wir, wenn wir die Funktion einer Funktion ableiten wollen? Dann benutzen wir die Kettenregel.")
]

Kettenregel
#v(40pt)

#only("2-")[Beispiel: $f(x) = g(h(x))$]
#only("2")[
  #voiceover("Die Kettenregel wird also angewendet, wenn eine Funktion eine Komposition aus anderen Funktionen ist, wie zum Beispiel f von x gleich g von h von x.")
]
]

#slide()[
#only("1")[
  #voiceover("Die Kettenregel besagt, dass die Ableitung einer Komposition von Funktionen das Produkt der Ableitungen der einzelnen Funktionen ist.")
]

#text(size: 30pt, weight: "bold")[Kettenregel]
#v(40pt)
#only("2-")[$(g(h(x)))' = g'(h(x)) dot h'(x)$]

#only("2")[
  #voiceover("In Formeln: Die Ableitung von g von h von x ist gleich die Ableitung von g an der Stelle h von x mal die Ableitung von h von x.")
]

]

#slide()[
#only("1")[
  #voiceover("Lass uns das an einem Beispiel verdeutlichen.")
]

#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[$f(x) = sin(x^2)$]
#v(10pt)
#only("2-")[$f'(x) = cos(x^2) dot (x^2)'$]
#v(10pt)
#only("3-")[$f'(x) = cos(x^2) dot 2x$]

#only("1")[
  #voiceover("Wenn f von x gleich Sinus von x Quadrat ist, dann ")
]
#only("2")[
  #voiceover("ist die Ableitung von f nach der Kettenregel gleich die Ableitung von Sinus an der Stelle x Quadrat mal die Ableitung von x Quadrat.")
]
#only("3")[
  #voiceover("Die Ableitung von Sinus ist Kosinus und die Ableitung von x Quadrat ist 2x. Also ist die Ableitung von f gleich Kosinus von x Quadrat mal 2x.")
]
]