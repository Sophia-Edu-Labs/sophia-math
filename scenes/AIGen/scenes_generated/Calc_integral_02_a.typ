#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Genau richtig, sehr gut gemacht! Wir wollen also eine Stammfunktion .")
]
Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$ f(x) = 3e^(-2x) + 1/(2x) $]]
#only("2")[
  #voiceover("der Funktion f von x gleich drei mal e hoch minus zwei mal x plus eins durch 2 x berechnen.")
]
]


#slide()[

#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 3e^(-2x) + 1/(2x)$]
#only("1")[#voiceover("Legen wir los.")]
#v(10pt)
#only("2")[#voiceover("Zuerst integrieren wir den Term drei e hoch minus zwei x.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Exponentialregel]]]
#only("3")[#voiceover("Um die Exponentialfunktion zu integrieren, verwenden wir die Regel, dass das Integral von e hoch ax gleich eins durch a mal e hoch ax ist. ")]
#only("4-")[$F(x) = -3/2 e^(-2x) + ...$]
#only("4")[#voiceover("Also ergibt das Integral von drei e hoch minus zwei x die Funktion minus drei durch zwei e hoch minus zwei x.")]
#v(10pt)
#only("5")[#voiceover("Als nächstes integrieren wir den Term eins durch 2x.")]
#v(10pt)
#only("6-")[#align(center)[#text(fill:aqua)[⇓ Logarithmus integrieren]]]
#only("6")[#voiceover("Die Stammfunktion von eins durch x ist der natürliche Logarithmus von x. Also ergibt das Integral von eins durch 2x die Funktion ein halb mal der natürliche Logarithmus von dem Betrag von x.")]
#v(10pt)
#only("7")[#voiceover("Wenn wir beide Teile zusammenfügen, erhalten wir die Stammfunktion groß F von x gleich minus drei durch zwei e hoch minus zwei x plus ein halb mal der natürliche Logarithmus vom Betrag von x plus C.")]
#v(10pt)
#only("7-")[$F(x) = -3/2 e^(-2x) + 1/2 ln|x| + C$]
]