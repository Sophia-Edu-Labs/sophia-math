#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Üben wir das ganze mal anhand eines Beispiels. Wir werfen eine faire Münze zehn mal, und fragen uns, wie wahrscheinlich es ist, genau fünf mal Kopf zu werfen. Beginnen wir mit der Lösung. Zunächst ermitteln wir n, p und k.")
]
#text(size: 30pt, weight: "bold")[Binomialverteilung]
#v(40pt)
#only("2-")[
$n = 10$ (Anzahl Versuche)
]
#only("3-")[
$p = 0,5$ (Erfolgswahrscheinlichkeit)
]
#only("4-")[
$k = 5$ (gesuchte Anzahl Erfolge)
]
#only("2")[
#voiceover("Da wir die Münze zehn mal werfen, ist n gleich zehn.")
]
#only("3")[
#voiceover("Und wir haben ja eine faire Münze. Also ist p, also die Wahrscheinlichkeit kopf zu werfen, gleich null komma 5.")
]
#only("4")[
#voiceover("Und wir suchen ja die Wahrscheinlichkeit, genau fünf mal Kopf zu werfen. Also ist k gleich fünf.")
]
#only("5-")[
$P(X = 5)$

$=binom(10,5) dot 0.5^5 dot (1-0.5)^(10-5)$

]
#only("5")[
#voiceover("Setzen wir das nun in unsere Formel ein. Wir erhalten dann, dass die Wahrscheinlichkeit dass X gleich fünf gleich zehn über fünf mal null komma fünf hoch fünf mal 1 minus null komma fünf hoch 10 minus fünf ist.")
]
#only("6-")[
$=binom(10,5) dot 0.5^10$

]
#only("7-")[
$=252 dot 0.5^10 approx 25% $
]
#only("6")[
#voiceover("Wir können dann den Ausdruck null komma fünf hoch fünf mal 1 minus null komma fünf hoch 10 minus fünf als null komma fünf hoch 10 vereinfachen.")
]
#only("8")[
#voiceover("und erhalten dann zweihundertzweiundfünfzig mal Null komma fünf hoch 10, was ungefähr 25 Prozent ergibt.")
]
]