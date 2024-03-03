#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[ 
  #voiceover("Genau richtig, super gemacht! Wir wollen also das Integral")
]
Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$ f(x) = 2x^2 + 5x - 3 - 4/sqrt(x) $]]
#only("2")[ 
  #voiceover("der Funktion f von x gleich zweimal x zum Quadrat plus fünfmal x minus drei minus vier geteilt durch die Wurzel aus x.")
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
#only("1-")[$f(x) = 2x^2 + 5x - 3 - 4 dot x^(-1/2)$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich zweimal x zum Quadrat plus fünfmal x minus drei minus vier mal x hoch minus ein halb. Siehst du, dass wir eins durch die Wurzel aus x als x hoch minus ein halb schreiben können?")]
#v(10pt)
#only("2")[#voiceover("Um eine Stammfunktion zu bestimmen, integrieren wir jedes Glied der Funktion einzeln nach x.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Potenzregel]]]
#only("3")[#voiceover("Die Potenzregel der Integration besagt, dass das Integral von x hoch n gleich x hoch (n plus eins) geteilt durch (n plus eins) ist, wenn n ungleich minus eins ist.")]
#v(10pt)
#only("4-")[$F(x) = (2)/(3)x^3$]
#only("5-")[$ + (5)/(2)x^2$]
#only("6-")[$ - 3x$]
#only("7-")[$ - 8 dot sqrt(x)$] 
#only("8-")[$+ C$]
#only("4")[#voiceover("Das Integral von zweimal x zum Quadrat ist zwei Drittel mal x hoch drei.")]
#only("5")[#voiceover("Das Integral von fünfmal x ist fünf Halbe mal x zum Quadrat.")]
#only("6")[#voiceover("Das Integral von minus drei ist minus drei mal x.")]
#only("7")[#voiceover("Und das Integral von minus vier geteilt durch die Wurzel aus x ist minus acht mal die Wurzel von x.")]
#only("8")[#voiceover("Und dann fügen wir noch die Integrationskonstante C hinzu. Die Lösung ist also F von x gleich zwei Drittel mal x hoch drei plus fünf Halbe mal x zum Quadrat minus drei mal x minus acht mal die Wurzel aus x plus C.")]
]