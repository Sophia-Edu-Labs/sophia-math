#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Vereinigung von Mengen]

#v(40pt)
#only("-3")[
- $A = {2, 4, 6, 8}$

- $B = {1, 2, 3, 4}$

- $C = {3, 6, 9}$

#v(40pt)
#text(size: 30pt)[$ |A union B union C| = ? $]
]
#only("2-")[
#v(40pt)
#text(weight: "bold")[Bilde Vereinigung:]
]
#only("3-")[

$ A union B union C = {1, 2, 3, 4, 6, 8, 9} $

]
#only("4-")[
$ ↓ $
$ |A union B union C| = |{1, 2, 3, 4, 6, 8, 9}| = 7 $

]
#only("1")[#voiceover("Das stimmt so nicht, schade... Wir suchen ja die Mächtigkeit der Vereinigung aller drei Mengen.")]
#only("2")[#voiceover("Um diese zu finden, bilden wir zuerst die Vereinigung von A, üpsilon und C.")]
#only("3")[#voiceover("Die Vereinigung enthält alle Elemente, die in mindestens einer der drei Mengen vorkommen, ohne Wiederholungen. Das sind die Elemente 1, 2, 3, 4, 6, 8 und 9.")]
#only("4")[#voiceover("Die resultierende Menge hat 7 Elemente, also ist die Mächtigkeit von A vereinigt mit B vereinigt mit C gleich 7.")]
]