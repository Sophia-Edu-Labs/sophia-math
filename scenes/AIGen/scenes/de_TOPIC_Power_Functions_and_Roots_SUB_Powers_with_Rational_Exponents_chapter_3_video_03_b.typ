#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfache $5 3^(1/3) - 2 3^(1/3)$]
#v(40pt)
#only("1-")[- $5 3^(1/3) - 2 3^(1/3)$]
#v(20pt)
#only("2-")[- $= (5 - 2) 3^(1/3)$]
#v(20pt)
#only("3-")[- $= 3 3^(1/3)$]
#v(20pt)
#only("4-")[- $= 3 root(3,3)$]
#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns Schritt für Schritt sehen, wie wir den Ausdruck 5 mal die Kubikwurzel von 3 minus 2 mal die Kubikwurzel von 3 vereinfachen können.")
]
#only("2")[
#voiceover("Zuerst können wir den gemeinsamen Term, die Kubikwurzel von 3, ausklammern. Das lässt uns mit 5 minus 2 mal die Kubikwurzel von 3.")
]
#only("3")[
#voiceover("Jetzt können wir 5 minus 2 vereinfachen, was uns 3 mal die Kubikwurzel von 3 gibt.")
]
#only("4")[
#voiceover("Die Kubikwurzel von 3 kann als die dritte Wurzel von 3 geschrieben werden.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfache $5 3^(1/3) - 2 3^(1/3)$ (fortgesetzt)]
#v(40pt)
#only("1-")[- $= 3 ⋅ 3^(1/3)$]
#v(20pt)
#only("2-")[- $= 3^(1+1/3)$]
#v(20pt)
#only("3-")[- $= 3^(4/3)$]
#v(20pt)
#only("4-")[- $= root(3,3^4)$]
#v(20pt)
#only("5-")[- $= root(3,81)$]
#v(20pt)
#only("6-")[- $= 3^(4/3) = 3 ⋅ root(3,3) ≈ 5.24 🎉$]
#only("1")[
#voiceover("Das ist dasselbe wie 3 multipliziert mit der Kubikwurzel von 3.")
]
#only("2")[
#voiceover("Mit der Potenzregel für Exponenten können wir die Exponenten addieren, wenn wir Terme mit derselben Basis multiplizieren. Das wird also zu 3 hoch 1 plus 1/3.")
]
#only("3")[
#voiceover("Wenn wir den Exponenten vereinfachen, erhalten wir 3 hoch 4/3.")
]
#only("4")[
#voiceover("Das kann als die Kubikwurzel von 3 hoch 4 umgeschrieben werden.")
]
#only("5")[
#voiceover("3 hoch 4 ist 81, also haben wir die Kubikwurzel von 81.")
]
#only("6")[
#voiceover("Die Kubikwurzel von 81 ist 3 hoch 4/3, oder 3 mal die Kubikwurzel von 3, was ungefähr 5.24 ergibt. Gut gemacht!")
]
]