#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Was ist eine Folge?]
#v(40pt)
#only("1-")[Was ist eine Folge?]
#v(40pt)
#only("-1")[a) Eine zufällige Liste von Zahlen]#only("2-")[#text(fill:red)[a) Eine zufällige Liste von Zahlen]]
#v(10pt)
#only("-1")[b) Eine geordnete Liste von Zahlen]#only("3-")[#text(fill:green)[b) Eine geordnete Liste von Zahlen]]
#v(10pt) 
#only("-1")[c) Eine Menge von nicht zusammenhängenden Zahlen]#only("4-")[#text(fill:red)[c) Eine Menge von nicht zusammenhängenden Zahlen]]
#v(10pt)
#only("-1")[d) Eine einzelne Zahl]#only("5-")[#text(fill:red)[d) Eine einzelne Zahl]]

#only("1")[#voiceover("Leider falsch. Hier ist die richtige Antwort.")]
#only("2")[#voiceover("a) Eine zufällige Liste von Zahlen ist falsch. Eine Folge hat eine bestimmte Reihenfolge.")]
#only("3")[#voiceover("b) Eine geordnete Liste von Zahlen ist die richtige Definition einer Folge.")]
#only("4")[#voiceover("c) Eine Menge von nicht zusammenhängenden Zahlen ist falsch. Die Zahlen in einer Folge sind durch eine Regel oder ein Muster verbunden.")]
#only("5")[#voiceover("d) Eine einzelne Zahl ist falsch. Eine Folge besteht aus mehreren Zahlen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Erklärung]
#v(40pt)
#only("1-")[- Eine Folge ist eine geordnete Liste von Zahlen.]
#only("2-")[- Die Zahlen in einer Folge folgen einem bestimmten Muster oder einer Regel.]
#only("3-")[- Zum Beispiel folgt die Folge $1, 2, 3, 4, ...$ der Regel $a_n = n$.]
#only("4-")[- Ein weiteres Beispiel ist die Fibonacci-Folge: $1, 1, 2, 3, 5, 8, ...$]
#v(20pt)
#only("5-")[Daher ist die richtige Antwort b) Eine geordnete Liste von Zahlen. 🎉]

#only("1")[#voiceover("Lass uns das Schritt für Schritt aufschlüsseln. Eine Folge ist tatsächlich eine geordnete Liste von Zahlen.")]
#only("2")[#voiceover("Die Zahlen in einer Folge sind nicht zufällig. Sie folgen einem bestimmten Muster oder einer Regel.")]
#only("3")[#voiceover("Betrachte zum Beispiel die Folge 1, 2, 3, 4 und so weiter. Jeder Term in dieser Folge entspricht seiner Position. Wir können dies als a subscript n equals n schreiben.")]
#only("4")[#voiceover("Ein weiteres bekanntes Beispiel ist die Fibonacci-Folge: 1, 1, 2, 3, 5, 8 und so weiter. Jeder Term ist die Summe der beiden vorhergehenden.")]
#only("5")[#voiceover("Also ist die richtige Antwort b) Eine geordnete Liste von Zahlen. Gut gemacht, dass Du die richtige Option gewählt hast!")]
]