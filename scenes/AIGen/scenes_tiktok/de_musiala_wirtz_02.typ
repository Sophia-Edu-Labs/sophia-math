#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Hi zusammen, noch eine Folge von Mathe für Kartoffeln. Flo zeigt euch heute wie man eine Funkion ableitet...")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 4x^4 - 3x^2 + x $]]
#only("2")[
  #voiceover("Genau beginnen wir mit dem Beispiel f von x gleich 4x hoch vier minus 3x Quadrat plus x.")
]
]

#slide()[
#only("1")[
  #voiceover("Dafür wenden wir die Summenregel an. Das bedeutet, wir leiten jeden Summanden einzeln ab. Und denkt dran, dass die Subtraktion wie die Addition eines negativen Wertes behandelt wird.")
]
#only("1")[
  #voiceover("und natürlich die Potenzregel für jeden Summanden.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Summenregel]
    #only("2-")[- Potenzregel für jeden Summanden]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$g(x) = 4x^4 - 3x^2 + x$]
#only("1")[#voiceover("Ja, also Wir starten mit der Funktion f von x gleich 4x hoch vier minus 3x Quadrat plus x.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Summenregel]]]
#only("2")[#voiceover("Zuerst wenden wir die Summenregel an und leiten jeden Summanden einzeln ab.")]
#v(10pt)
#only("3-")[$f'(x) = 16x^3$]#only("4-")[$ - 6x$]#only("5-")[$ + 1$]
#only("3")[#voiceover("Die Ableitung von 4x hoch vier ist 16x hoch drei.")]
#only("4")[#voiceover("Und die Ableitung von -3x Quadrat ist -6x.")]
#only("5")[#voiceover("Da die Ableitung von x einfach 1 ist, bleibt dieser Summand übrig. Jetzt haben wir alles zusammen: die Ableitung ist 16x hoch drei minus 6x plus 1. So das wars von uns, machts gut und bis zur nächsten Folge!")]
]