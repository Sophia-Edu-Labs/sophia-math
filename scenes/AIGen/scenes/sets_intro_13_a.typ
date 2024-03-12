#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Schnittmengen]
#v(40pt)
#only("-3")[
- $A = {1, 3, 5, 7, 9}$
- $B = {2, 3, 6, 9}$
- $C = {3, 4, 7, 9}$
#v(40pt)
#text(size: 30pt)[$ |A sect B sect C| = ? $]
]
#only("2-")[
#v(40pt)
#text(weight: "bold")[Bilde Schnittmenge:]
]
#only("3-")[
$ A sect B = {3, 9} $
]
#only("4-")[
$ {3, 9} sect C = {3, 9} $
]
#only("5-")[
$ ↓ $
$ |A sect B sect C| = |{3, 9}| = 2 $
]
#only("1")[#voiceover("Das ist richtig, super! Wir suchen die Mächtigkeit der Schnittmenge aller drei Mengen.")]
#only("2")[#voiceover("Um diese zu finden, bilden wir schrittweise die Schnittmengen.")]
#only("3")[#voiceover("Zuerst schneiden wir A und B. Die resultierende Menge enthält die Elemente 3 und 9, da diese in beiden Mengen vorkommen.")]
#only("4")[#voiceover("Wenn wir diese Menge nun mit C schneiden, bleiben die Elemente 3 und 9 übrig, da sie auch in C enthalten sind.")]
#only("5")[#voiceover("Die finale Schnittmenge hat 2 Elemente, also ist die Mächtigkeit von A geschnitten mit B geschnitten mit C gleich 2.")]
]