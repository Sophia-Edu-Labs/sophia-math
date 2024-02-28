#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  
#slide()[

#only("1")[
  #voiceover("Die Aufgabe, die wir lösen müssen, ist die Berechnung der Ableitung der Funktion")
]
Berechne die Ableitung von
#v(40pt)
#only("2-")[#text()[$ f(x) = "sin"("ln"(x)) + x^2 $]]
#only("2")[
  #voiceover("f von x gleich Sinus von ln von x plus x Quadrat.")
]
]

#slide()[
#only("1")[
  #voiceover("Um diese Aufgabe zu lösen, nutzen wir die Summenregel")
]
#only("2")[
  #voiceover(" und die Kettenregel. Beginnen wir mit dem Lösungsprozess!")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Summenregel]
    #only("2-")[- Kettenregel]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = "sin"("ln"(x)) + x^2$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich Sinus von ln von x plus x Quadrat.")]
#v(10pt)
#only("2")[#voiceover("Um die Ableitung von Sinus von ln von x zu finden, müssen wir")]
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Kettenregel]]]
#only("3")[#voiceover("die Kettenregel anwenden.")]
#v(10pt)
#only("4-")[$f'(x) = "cos"("ln"(x)) dot 1/x + 2x$]
#only("4")[#voiceover("Die Ableitung von Sinus von ln von x ist Cosinus von ln von x mal 1 durch x. Die Ableitung von x Quadrat ist")]
#only("5")[#voiceover("2x. Also addieren wir Cosinus von ln von x mal 1 durch x zu 2x.")]
#v(10pt)
#only("6-")[$f'(x) = "cos"("ln"(x)) / x + 2x$]
#only("6")[#voiceover("Die endgültige Ableitung der Funktion ist also Cosinus von ln von x geteilt durch x plus 2x.")]
]