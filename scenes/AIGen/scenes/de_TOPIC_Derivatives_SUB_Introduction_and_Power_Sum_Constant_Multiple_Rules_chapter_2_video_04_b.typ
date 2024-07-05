#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Ableitung der Summe]
#v(40pt)

#only("1-")[
$f(x) = x^3 + x^2$
]

#v(20pt)

#only("2-")[
$f'(x) = (x^3 + x^2)'$
]

#v(20pt)

#only("3-")[
$f'(x) = (x^3)' + (x^2)'$
]

#v(20pt)

#only("4-")[
$f'(x) = 3x^2 + 2x$
]

#v(20pt)

#only("5-")[
$f'(2) = 3(2)^2 + 2(2) = 12 + 4 = 16$
]

#only("1")[
#voiceover("Leider nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit unserer Funktion f von x gleich x hoch drei plus x quadrat.")
]

#only("2")[
#voiceover("Um die Ableitung zu finden, wenden wir die Summenregel an. Diese Regel besagt, dass die Ableitung einer Summe die Summe der Ableitungen ist.")
]

#only("3")[
#voiceover("Also können wir die Terme trennen und die Ableitung jedes Terms unabhängig finden.")
]

#only("4")[
#voiceover("Die Ableitung von x hoch drei ist 3 x quadrat, und die Ableitung von x quadrat ist 2x. Wenn wir diese zusammenfügen, erhalten wir f Strich von x gleich 3 x quadrat plus 2x.")
]

#only("5")[
#voiceover("Schließlich müssen wir dies bei x gleich 2 auswerten. Wenn wir 2 einsetzen, erhalten wir 3 mal 2 quadrat, was 12 ist, plus 2 mal 2, was 4 ist. 12 plus 4 ergibt 16, was unsere endgültige Antwort ist.")
]
]