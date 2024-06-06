#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung von $8^(1/3)$]
#v(40pt)
#only("1-")[Leider falsch...

 Lass uns sehen, wie wir das Schritt für Schritt vereinfachen können. 🧮]
#v(20pt)
#only("2-")[- $8^(1/3) = (2^3)^(1/3)$]
#v(20pt)
#only("3-")[- $(2^3)^(1/3) = 2^(3⋅1/3)$]
#v(20pt)
#only("4-")[- $2^(3⋅1/3) = 2^1 = 2$]
#only("1")[
#voiceover("Das war nicht ganz richtig. Lass uns sehen, wie wir 8 hoch 1/3 Schritt für Schritt vereinfachen können.")
]
#only("2")[
#voiceover("Zuerst können wir 8 als 2 hoch 3 schreiben, also ist 8 hoch 1/3 gleich 2 hoch 3, alles hoch 1/3.")
]
#only("3")[
#voiceover("Jetzt können wir die Potenzregel für Exponenten anwenden, die besagt, dass (a hoch m) hoch n gleich a hoch m mal n ist. Also ist (2 hoch 3) hoch 1/3 gleich 2 hoch 3 mal 1/3.")
]
#only("4")[
#voiceover("3 mal 1/3 ist gleich 1, also ist 2 hoch 3 mal 1/3 gleich 2 hoch 1, was einfach 2 ist. Daher vereinfacht sich 8 hoch 1/3 zu 2.")
]
]