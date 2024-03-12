#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#only("1")[
#voiceover("Das ist leider falsch... Hier ist die Lösung für den Ereignisraum beim dreimaligen Münzwurf.")
]
#only("1-")[
#text(size: 26pt, weight: "bold")[₡ Dreimaliger Münzwurf ₡]
#v(40pt)
]
#only("2")[
#voiceover("Ein Ergebnis ist ja ein Tripel (a, b, c), wobei a, b und c jeweils entweder K für Kopf oder Z für Zahl sind.")
]
#only("2-")[
#text(weight: "bold")[Ergebnis:]

Tripel $(a, b, c)$ mit $a,b,c in {K,Z}$

]

#only("3")[
#voiceover("Der Ereignisraum enthält alle möglichen Ergebnisse. Also enthält er alle Tripel, die aus K und Z bestehen. Das sind diese hier: K K K, K K Z, und so weiter bis Z Z Z.")
]
#only("3-")[
#text(weight: "bold")[Ereignisraum:]

$Omega = {(K,K,K), (K,K,Z),$
$(K,Z,K), (K,Z,Z), (Z,K,K),$
$(Z,K,Z), (Z,Z,K), (Z,Z,Z)}$

]
#only("4")[
#voiceover("Der Ereignisraum hat also 8 Elemente, denn es gibt 2 Möglichkeiten für den ersten Wurf, 2 für den zweiten und 2 für den dritten. Insgesamt gibt es damit 2 mal 2 mal 2, also 8 mögliche Ergebnisse.")
]
#only("4-")[
#text(weight: "bold")[Mächtigkeit:]

$|Omega| = 2 dot 2 dot 2 = 8$
]
]