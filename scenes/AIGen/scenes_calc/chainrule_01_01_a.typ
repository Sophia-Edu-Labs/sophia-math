#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Super, richtig. Hier nochmal die Lösung:")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = (sin(x))^2 $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich Sinus von x Quadrat bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir wenden die Kettenregel an. Das heißt, wir bilden die Ableitung der äußeren Funktion, hier das Quadrat, ausgewertet an der inneren Funktion, hier Sinus von x, und multiplizieren das mit der Ableitung der inneren Funktion.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Kettenregel: $(g(h(x)))' = g'(h(x)) dot h'(x)$]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = (sin(x))^2$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich Sinus von x Quadrat.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Kettenregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Kettenregel an. Die Ableitung von Sinus von x Quadrat ist die Ableitung der Quadratfunktion ausgewertet an Sinus von x mal die Ableitung von Sinus von x.")]
#v(10pt)
#only("3-")[$f'(x) = 2 dot sin(x) dot (sin(x))'$]
#only("3")[#voiceover("Also ist f Strich von x gleich 2 mal Sinus von x, das ist die Ableitung der Quadratfunktion ausgewertet an Sinus von x, mal die Ableitung von Sinus von x.")]
#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Ableitung berechnen]]]
#only("4")[#voiceover("Jetzt berechnen wir noch die Ableitung von Sinus von x. Das ist Kosinus von x.")]
#v(10pt)
#only("5-")[$f'(x) = 2 dot sin(x) dot cos(x)$]
#only("5")[#voiceover("Eingesetzt ergibt das: f Strich von x ist gleich 2 mal Sinus von x mal Kosinus von x.")]
]