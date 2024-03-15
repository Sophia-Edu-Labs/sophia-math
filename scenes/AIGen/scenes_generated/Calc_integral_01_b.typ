#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Das stimmt leider nicht, schade ... ... Wir müssen also die Stammfunktion.")
]
Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$ f(x) = 4x^3 - 6x + 2e^x $]]
#only("2")[
  #voiceover("der Funktion f von x gleich vier mal x hoch drei minus sechs mal x plus zwei mal e hoch x finden.")
]
]

#slide()[

#only("1")[
  #voiceover("Um die Stammfunktion zu finden, wenden wir die Linearität des Integrals an. Das heißt, dass wir die Stammfunktion von jedem Glied der Funktion einzeln bestimmen.")
]
#only("2")[
  #voiceover("Dann wenden wir die Integrationsregeln für die e Funktion und für Potenzen an. ... Legen wir los... ")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Linearität]
    #only("2-")[- e-Funktion und Potenzen]
]

#slide()[

#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 4x^3 - 6x + 2e^x$]
#only("1")[#voiceover("Wir beginnen mit der gegebenen Funktion f von x gleich vier mal x hoch drei minus sechs mal x plus zwei mal e hoch x.")]
#v(10pt)
#only("2")[#voiceover("Um die Stammfunktion zu bestimmen, integrieren wir jedes Glied der Funktion einzeln nach x.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Lineare Integration]]]
#only("3")[#voiceover("Die Potenzregel besagt, dass das Integral von x hoch n gleich x hoch (n plus eins) geteilt durch (n plus eins) ist. Für die e-Funktion von x bleibt die Funktion bei der Integration unverändert.")]
#v(10pt)
#only("4-")[$F(x) = 4/4 x^4$]#only("5-")[$ - 6/2 x^2$]#only("6-")[$ + 2e^x$] #only("7-")[$+ C$]
#only("4")[#voiceover("Das Integral von vier mal x hoch drei ist x hoch vier.")]
#only("5")[#voiceover("Das Integral von minus sechs mal x ist minus drei mal x Quadrat.")]
#only("6")[#voiceover("Das Integral von zwei mal e hoch x bleibt zwei mal e hoch x.")]
#only("7")[#voiceover("Und zum Schluss fügen wir noch die Integrationskonstante C hinzu. Die Lösung ist also F von x gleich x hoch vier minus drei mal x Quadrat plus zwei mal e hoch x plus C.")]
]