#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Fasseb wur bicg^, was wir gelernt haben.")
]

#text(size: 30pt, weight: "bold")[Summenregel der Differentiation]
#v(40pt)
#only("1-")[$f(x) = g(x) + h(x)$]
#v(10pt)
#only("2-")[$f'(x) = g'(x) + h'(x)$]
#only("2")[
  #voiceover("Die Summenregel besagt, dass die Ableitung einer Summe gleich der Summe der Ableitungen ist. Also wenn f von x gleich g von x plus h von x ist, dann ist f Strich von x gleich g Strich von x plus h Strich von x.")
]
]

#slide()[

#only("1")[
  #voiceover("Wir haben diese Regel jetzt für Summen von Potenzfunktionen angewendet, aber sie gilt allgemein für alle differenzierbaren Funktionen.")
]

#text(size: 30pt, weight: "bold")[Beispiele für andere Funktionen]
#v(40pt)
#only("1-")[- Polynome: $f(x) = 3x^2 + 2x - 1$]
#only("2-")[- Trigonometrische Funktionen: $f(x) = sin(x) + cos(x)$]
#only("3-")[- Exponentialfunktionen: $f(x) = e^x + e^(-x)$]

#only("3")[
  #voiceover("Egal ob wir Polynome, trigonometrische Funktionen, Exponentialfunktionen oder andere differenzierbare Funktionen haben, wir können immer die Summenregel anwenden.")
]
]