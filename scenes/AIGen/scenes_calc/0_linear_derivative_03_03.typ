#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Lass uns nochmal zusammenfassen, was wir über die Faktorregel gelernt haben.")
]

#text(size: 30pt, weight: "bold")[Faktorregel]
#v(40pt)
#only("1-")[$f(x) = c dot g(x)$, wobei $c$ eine Konstante ist.]
#v(10pt)
#only("2-")[$f'(x) = c dot g'(x)$]
#only("2")[
  #voiceover("Die Faktorregel besagt, dass wenn f von x gleich c mal g von x ist, wobei c eine Konstante ist, dann ist die Ableitung von f, also f Strich von x, gleich c mal die Ableitung von g, also g Strich von x.")
]
]

#slide()[

#only("1")[
  #voiceover("Wir haben diese Regel jetzt für Potenzfunktionen angewendet, aber sie gilt allgemein für alle differenzierbaren Funktionen.")
]

#text(size: 30pt, weight: "bold")[Beispiele für andere Funktionen]
#v(40pt)
#only("1-")[- Polynome: $f(x) = 5(3x^2 + 2x - 1)$]
#only("2-")[- Trigonometrische Funktionen: $f(x) = 2 sin(x) + 3 cos(x)$]
#only("3-")[- Exponentialfunktionen: $f(x) = 4 e^x + 2 e^(-x)$]

#only("3")[
  #voiceover("Egal ob wir Polynome, trigonometrische Funktionen, Exponentialfunktionen oder andere differenzierbare Funktionen haben, wir können immer die Faktorregel anwenden, wenn wir eine Konstante mal eine Funktion haben.")
]
]

#slide()[
#only("1")[
  #voiceover("Das war's für heute! Ich hoffe, die Faktorregel ist jetzt klar und du fühlst dich sicher in ihrer Anwendung. Übung macht den Meister, also scheue dich nicht, viele Aufgaben zu rechnen. Bis zum nächsten Mal!")
]
]