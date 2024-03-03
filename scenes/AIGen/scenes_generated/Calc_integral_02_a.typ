#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover(""Genau, super erkannt! Jetzt gehen wir daran, das Integral der Funktion zu lösen."")
]

Berechne eine Stammfunktion von

#v(40pt)

#only("2-")[
#text()[
$ f(x) = 2x \cdot e^{(x^2)} + 4x $]
]

#only("2")[
  #voiceover("der Funktion f von x gleich zwei mal x mal e hoch (x Quadrat) plus vier mal x.")
]
]

#slide()[

#only("1")[
  #voiceover("Um eine Stammfunktion zu finden, nutzen wir sowohl die Integrationsregeln als auch Substitution, wenn nötig.")
]

#only("2")[
  #voiceover("Beginnen wir mit dem Lösungsprozess!")
]

#text(size: 30pt, weight: "bold")[Ansatz]

#v(40pt)

#only("1-")[- Integrationsregeln]

#only("2-")[- Substitutionsmethode]

]

#slide()[

#text(size: 30pt, weight: "bold")[Lösungsschritte]

#v(40pt)

#only("1-")[
$f(x) = 2x \cdot e^{x^2} + 4x$
]

#only("1")[
#voiceover("Wir beginnen mit der Funktion f von x gleich zwei mal x mal e hoch x Quadrat plus vier mal x.")
]

#v(10pt)

#only("2")[
#voiceover("Zuerst können wir das Integral in zwei Teile aufteilen: das Integral von zwei mal x mal e hoch x Quadrat und das Integral von vier mal x.")
]

#v(10pt)

#only("3")[
    #voiceover("Für den ersten Teil verwenden wir die Substitution. Setze u gleich x Quadrat. Dann ist die Ableitung von u, du, gleich zwei mal x dx.")
]

#v(10pt)

#only("4-")[
    #voiceover("Da wir zwei mal x dx in unserem Ausdruck haben, passt es perfekt zur Substitutionsmethode.")
]

#only("4")[
#text()[
$ \int 2x \cdot e^{x^2} \, dx = \int e^u \, du $
]
]

#only("4")[
#voiceover("Das Integral von e hoch u bezüglich u ist einfach e hoch u plus eine Konstante.")
]

#v(10pt)

#only("5-")[
#text()[
$ e^u = e^{x^2} $
]
]

#only("5")[
#voiceover("Nach Rücksubstitution erhalten wir e hoch x Quadrat.")
]

#v(10pt)

#only("6")[
  #voiceover("Nun zum zweiten Teil, das Integral von vier mal x ist einfach zwei mal x Quadrat.")
]

#v(10pt)

#only("7-")[
$ F(x) = e^{x^2} + 2x^2 + C $
]

#only("7")[
#voiceover("Zusammengefasst, nach der Integration und Rücksubstitution, erhalten wir die Stammfunktion F von x gleich e hoch x Quadrat plus zwei mal x Quadrat plus die Integrationskonstante C.")
]

]