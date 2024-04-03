#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Das war leider falsch.. lass uns die Lösung nochmal zusammen durchgehen!")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = ln(x^2) $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich natürlicher Logarithmus von x Quadrat bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir nutzen die Kettenregel. Das heißt, wir bilden die Ableitung des natürlichen Logarithmus an der Stelle x Quadrat mal die Ableitung von x Quadrat.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Kettenregel: $(g(h(x)))' = g'(h(x)) dot h'(x)$]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = ln(x^2)$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich natürlicher Logarithmus von x Quadrat.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Kettenregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Kettenregel an. Die Ableitung von natürlichem Logarithmus von x Quadrat ist die Ableitung von natürlichem Logarithmus an der Stelle x Quadrat mal die Ableitung von x Quadrat.")]
#v(10pt)
#only("3-")[$f'(x) = 1/(x^2) dot (x^2)'$]
#only("3")[#voiceover("Also ist f Strich von x gleich die Ableitung von natürlichem Logarithmus, das ist eins durch das Argument, also eins durch x Quadrat, mal die Ableitung von x Quadrat.")]
#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Ableitung berechnen]]]
#only("4")[#voiceover("Jetzt berechnen wir noch die Ableitung von x Quadrat. Das ist 2x.")]
#v(10pt)
#only("5-")[$f'(x) = 1/(x^2) dot 2x$]
#only("5")[#voiceover("Eingesetzt ergibt das: f Strich von x ist gleich eins durch x Quadrat mal 2x.")]
#v(10pt)
#only("6-")[$f'(x) = 2/x$]
#only("6")[#voiceover("Das können wir noch vereinfachen zu f Strich von x gleich 2 durch x.")]
]