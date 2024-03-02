#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  
#slide()[

#only("1")[
  #voiceover("Finden wir also das Integral")
]
Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$ f(x) = x^3 - 6x^2 + 3 $]]
#only("2")[
  #voiceover("der Funktion f von x gleich x hoch drei minus sechs mal x Quadrat plus drei.")
]
]

#slide()[
#only("1")[
  #voiceover("Um eine Stammfunktion zu finden, nutzen wir die Grundintegrale und die Potenzregel der Integration.")
]
#only("2")[
  #voiceover("Lass uns mit dem Lösungsprozess beginnen!")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Grundintegrale]
    #only("2-")[- Potenzregel der Integration]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = x^3 - 6x^2 + 3$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich x hoch drei minus sechs mal x Quadrat plus drei.")]
#v(10pt)
#only("2")[#voiceover("Um eine Stammfunktion zu bestimmen, integrieren wir jedes Glied der Funktion einzeln nach x.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Potenzregel]]]
#only("3")[#voiceover("Die Potenzregel der Integration besagt, dass das Integral von x hoch n gleich x hoch (n plus eins) geteilt durch (n plus eins) ist.")]
#v(10pt)
#only("4-")[$F(x) = 1/4 x^4$]#only("5-")[$ - 2x^3$]#only("6-")[$ + 3x$] #only("7-")[$+ C$]
#only("4")[#voiceover("Das Integral von x hoch drei ist ein Viertel mal x hoch vier.")]
#only("5")[#voiceover("Das Integral von minus sechs mal x Quadrat ist minus zwei mal x hoch drei.")]
#only("6")[#voiceover("Das Integral von drei ist drei mal x.")]
#only("7")[#voiceover("Und dann fügen wir noch die Integrationskonstante c hinzu. Die Lösung ist also F von x gleich ein Viertel mal x hoch vier minus zwei mal x hoch drei plus drei mal x plus c.")]
]



