#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Wie leiten wir eine Potenz ab, die mit einem skalaren Faktor multipliziert wird? Dafür nutzen wir die Faktorregel !")
]

Faktorregel bei der Ableitung von Potenzfunktionen
#v(40pt)

#only("2-")[Beispiel: $f(x) = 3 dot x^5$]
#only("2")[
  #voiceover("Nehmen wir als Beispiel die Funktion f von x gleich drei mal x hoch fünf.")
]
]

#slide()[
#only("1")[
  #voiceover("Die Faktorregel besagt, dass wir Faktoren, die nicht von x abhängen, einfach als Faktoren vor die Ableitung schreiben können.")
]

#text(size: 30pt, weight: "bold")[Faktorregel]
#v(40pt)
#only("1-")[$(c dot f(x))' = c dot f'(x)$, wobei $c$ eine Konstante ist.]

#only("2")[
  #voiceover("In Formeln: Die Ableitung von c mal f von x, wobei c eine Konstante ist, ist gleich c mal die Ableitung von f von x.")
]

]

#slide()[
#only("1")[
  #voiceover("In unserem Beispiel ist die Konstante c gleich drei. Wir können also die drei einfach vor die Ableitung von x hoch fünf schreiben.")
]

#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[$f(x) = 3 dot x^5$]
#v(10pt)
#only("2-")[$(x^5)' = 5x^4$]
#v(10pt)
#only("3-")[$f'(x) = 3 dot 5x^4 = 15x^4$]

#only("3")[
  #voiceover("Die Ableitung von x hoch fünf ist fünf mal x hoch vier. Multiplizieren wir das mit drei, dann erhalten wir die Ableitung von f, nämlich f Strich von x gleich fünfzehn mal x hoch vier.")
]
]