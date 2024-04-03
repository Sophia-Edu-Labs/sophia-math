#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)

#only("1-")[$f(x) = -x^3 - x$]
#only("1")[#voiceover("Toll, das ist richtig. Wir haben die Funktion f von x gleich minus x hoch drei minus x.")]

#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Ableitung bilden]]]
#only("2")[#voiceover("Zuerst bilden wir die Ableitung. Die Ableitung von minus x hoch drei ist minus drei x quadrat, und die Ableitung von minus x ist minus eins.")]

#v(10pt)
#only("3-")[$f'(x) = -3x^2 - 1$]
#only("3")[#voiceover("Die Ableitung ist also f Strich von x gleich minus drei x quadrat minus eins.")]

#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Vorzeichen untersuchen]]]
#only("4")[#voiceover("Jetzt untersuchen wir das Vorzeichen der Ableitung.")]

#v(10pt)
#only("5-")[$-3x^2 - 1 < 0$ für alle $x$]
#only("5")[#voiceover("Minus drei x quadrat minus eins ist immer kleiner als null, für alle x.")]

#v(10pt)
#only("6-")[#text(weight: "bold")[⇒ $f(x)$ ist streng monoton fallend]]
#only("6")[#voiceover("Da die Ableitung überall negativ ist, ist die Funktion f von x gleich minus x hoch drei minus x streng monoton fallend.")]
]