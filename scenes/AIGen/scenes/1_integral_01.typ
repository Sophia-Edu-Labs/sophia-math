#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  
  #slide()[
  #voiceover("Beginnen wir also mit unserer Aufgabe. Wir müssen das Integral der")
  Gegeben ist die Funktion
  #v(40pt)
  #only("1-")[$f(x) = 6x^2 + 3cos(x)$]
  #only("1")[
    #voiceover("Funktion f von x gleich sechs mal x Quadrat plus dreimal den Kosinus von x bestimmen.")
  ]
]

#slide()[
  #only("1")[
    #voiceover("Dafür nutzen wir die Summenregel der Integration")
  ]
  #only("2")[
    #voiceover("und integrieren jedes Element separat. Beginnen wir mit dem Lösungsprozess!")
  ]
  #text(size: 30pt, weight: "bold")[Ansatz]
  #v(40pt)
    #only("1-")[- Summenregel der Integration]
    #only("2-")[- Integration jedes Gliedes separat]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Lösungsschritte]
  #v(40pt)
  #only("1-")[$f(x) = 6x^2 + 3cos(x)$]
  #only("1")[
    #voiceover("Wir betrachten also die Funktion f von x gleich sechs mal x Quadrat plus dreimal der Kosinus von x.")
  ]
  #v(10pt)
  #only("2")[
    #voiceover("Um das Integral zu bestimmen, integrieren wir zuerst das Polynom und dann den Kosinus.")
  ]
  #v(10pt)
  #only("3-")[#align(center)[#text(fill:aqua)[⇓ Integrationsregeln]]]
  #only("3")[
    #voiceover("Die Potenzregel der Integration besagt, dass das Integral von x hoch n gleich x hoch n plus eins geteilt durch n plus eins ist, und das Integral des Kosinus von x ist der Sinus von x.")
  ]
  #v(10pt)
  #only("4-")[$F(x) = 2x^3$]
  #only("5-")[$ + 3sin(x)$]
  #only("6-")[$ + C$]
  #only("4")[
    #voiceover("Das Integral von sechs mal x Quadrat ist zwei mal x hoch drei.")
  ]
  #only("5")[
    #voiceover("Und das Integral von dreimal dem Kosinus von x ist dreimal der Sinus von x.")
  ]
  #only("6")[
    #voiceover("Dann fügen wir noch die Integrationskonstante C hinzu. Die Lösung ist also F von x gleich zwei mal x hoch drei plus dreimal der Sinus von x plus C.")
  ]
]