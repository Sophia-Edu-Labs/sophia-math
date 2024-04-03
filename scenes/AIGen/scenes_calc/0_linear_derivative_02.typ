#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Wie leitet man Summen von Potenzen ab?")
]
#text(size: 30pt, weight: "bold")[Summen von Potenzen]
#v(40pt)

#only("2-")[Beispiel: $f(x) = x^3 + x^5$]
#only("2")[
  #voiceover("Nehmen wir mal als Beispiel die Funktion f von x gleich x hoch drei plus x hoch fünf.")
]
]

#slide()[
#only("1")[
  #voiceover("Die gute Nachricht ist: Wir können eine einfache Regel, die Summenregel der Differentiation anwenden. Das heißt, wir leiten jeden Summanden einzeln ab und addieren die Ergebnisse.")
]

#text(size: 30pt, weight: "bold")[Summenregel der Differentiation]
#v(40pt)
#only("1-")[$(f(x) + g(x))' = f'(x) + g'(x)$]

#only("2")[
  #voiceover("In Formeln ausgedrückt: Die Ableitung einer Summe, also f von x plus g von x, ist gleich der Summe der Ableitungen, also f Strich von x plus g Strich von x.")
]

]

#slide()[
#only("1")[
  #voiceover("Für die Ableitung der einzelnen Potenzfunktionen nutzen wir dann wie gehabt die Potenzregel.")
]

#text(size: 30pt, weight: "bold")[Potenzregel]
#v(40pt)
#only("1-")[$(x^n)' = n * x^(n-1)$]

#only("2")[
  #voiceover("Die besagt ja: Die Ableitung von x hoch n ist gleich n mal x hoch n minus eins.")
]
]

#slide()[
#only("1")[
  #voiceover("Wenden wir das auf unser Beispiel an, dann ist die Ableitung von x hoch drei gleich drei mal x Quadrat und die Ableitung von x hoch fünf ist fünf mal x hoch vier.")
]

#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[$f(x) = x^3 + x^5$]
#v(10pt)
#only("2-")[$(x^3)' = 3x^2$]
#only("3-")[$(x^5)' = 5x^4$]
#v(10pt)
#only("4-")[$f'(x) = 3x^2 + 5x^4$]

#only("4")[
  #voiceover("Addieren wir diese beiden Ableitungen, dann erhalten wir die Ableitung von f, nämlich f Strich von x gleich drei x Quadrat plus fünf x hoch vier.")
]
]