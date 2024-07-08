#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
#v(40pt)

#only("1-")[
$f(x) = (x^2 + 1)^3$
]

#v(20pt)

#only("2-")[
Sei $u = x^2 + 1$
]

#v(20pt)

#only("3-")[
Dann ist $f(x) = u^3$
]

#v(20pt)

#only("4-")[
$f'(x) = 3u^2 dot "du"/"dx"$
]

#v(20pt)

#only("5-")[
$"du"/"dx" = 2x$
]

#v(20pt)

#only("6-")[
$f'(x) = 3(x^2 + 1)^2 dot (2x)$
]

#v(20pt)

#only("7-")[
$f'(0) = 3(0^2 + 1)^2 dot (2 dot 0) = 3 dot 1^2 dot 0 = 0$
]

#only("1")[
#voiceover("Das stimmt leider nicht... Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Funktion f von x gleich x Quadrat plus 1, alles hoch drei.")
]

#only("2")[
#voiceover("Um die Kettenregel anzuwenden, identifizieren wir zuerst die äußere und innere Funktion. Setzen wir u gleich x Quadrat plus 1.")
]

#only("3")[
#voiceover("Dadurch können wir unsere Funktion umschreiben als f von x gleich u hoch drei.")
]

#only("4")[
#voiceover("Jetzt können wir die Kettenregel anwenden. Die Ableitung von f nach x ist gleich 3 u Quadrat, multipliziert mit der Ableitung von u nach x.")
]

#only("5")[
#voiceover("Die Ableitung von u nach x ist einfach 2x.")
]

#only("6")[
#voiceover("Setzen wir u gleich x Quadrat plus 1 und die Ableitung von u ein, erhalten wir: f Strich von x ist gleich 3 mal x Quadrat plus 1 Quadrat, multipliziert mit 2x.")
]

#only("7")[
#voiceover("Schließlich, um f Strich von 0 zu finden, setzen wir einfach x durch 0. Das ergibt 3 mal 0 Quadrat plus 1 Quadrat, multipliziert mit 2 mal 0, was sich zu 3 mal 1 Quadrat mal 0 vereinfacht, was gleich 0 ist.")
]
]