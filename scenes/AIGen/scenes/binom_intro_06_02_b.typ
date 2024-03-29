#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Binomialverteilung]
#v(40pt)
#only("1")[
#voiceover("Das ist richtig, toll.  Wir würfeln ja 12 mal und fragen uns, wie wahrscheinlich es ist, genau 4 mal eine Sechs zu würfeln.")
]
#only("2-")[
- $n = 12$ (Anzahl Versuche)
]
#only("3-")[
- $p = 1/6$ (Wahrscheinlichkeit für $6$)
]
#only("4-")[
- $k = 4$ (gesuchte Anzahl Erfolge)
#v(30pt)
]
#only("2")[
#voiceover("Da wir den Würfel 12 mal werfen, ist n gleich 12.")
]
#only("3")[

#voiceover("Bei einem fairen Würfel ist die Wahrscheinlichkeit, eine Sechs zu würfeln, ein Sechstel, also ist p gleich ein Sechstel.")
]
#only("4")[
#voiceover("Und wir suchen die Wahrscheinlichkeit, genau 4 mal eine Sechs zu würfeln, also ist k gleich 4.")
]
#only("5-")[
$P(X = 4)$

$=binom(12,4) dot (1/6)^4 dot (1-1/6)^(12-4)$

]
#only("5")[
#voiceover("Setzen wir die Werte nun in die Binomialformel ein. Wir erhalten, dass die Wahrscheinlichkeit, dass X gleich 4 ist, gleich 12 über 4 mal ein Sechstel hoch 4 mal 1 minus ein Sechstel hoch 12 minus 4 ist.")

]
#only("6-")[
$=binom(12,4) dot (1/6)^4 dot (5/6)^8$

$=495 dot frac(1,1296) dot frac(390625,1679616)$
]
#only("7-")[

$approx 0.089$
$ = 8.9%$
]
#only("6")[
#voiceover("Wir berechnen den Binomialkoeffizienten und die Potenzen und erhalten 495 mal zwei komplizierte Brüche. Wenn man das auflöst")
]
#only("7")[
#voiceover("ergibt das ungefähr 0,089, also 8,9 Prozent. Die Wahrscheinlichkeit, in 12 Würfen eines fairen Würfels genau 4 mal eine Sechs zu würfeln, beträgt also etwa 8,9 Prozent.")
]
]