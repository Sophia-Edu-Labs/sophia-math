#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Was ist eine Sequenz?]
#v(40pt)
#only("1-")[Was ist eine Sequenz?]
#v(40pt)
#only("-1")[a) Eine zufällige Liste von Zahlen]#only("2-")[#text(fill:red)[a) Eine zufällige Liste von Zahlen]]
#v(10pt)
#only("-1")[b) Eine geordnete Liste von Zahlen]#only("3-")[#text(fill:green)[b) Eine geordnete Liste von Zahlen]]
#v(10pt) 
#only("-1")[c) Eine Menge von nicht zusammenhängenden Zahlen]#only("4-")[#text(fill:red)[c) Eine Menge von nicht zusammenhängenden Zahlen]]
#v(10pt)
#only("-1")[d) Eine einzelne Zahl]#only("5-")[#text(fill:red)[d) Eine einzelne Zahl]]

#only("1")[#voiceover("Großartig! Du hast die richtige Antwort ausgewählt.")]
#only("2")[#voiceover("a) Eine zufällige Liste von Zahlen ist falsch. Eine Sequenz hat eine bestimmte Reihenfolge.")]
#only("3")[#voiceover("b) Eine geordnete Liste von Zahlen ist die richtige Definition einer Sequenz.")]
#only("4")[#voiceover("c) Eine Menge von nicht zusammenhängenden Zahlen ist falsch. Die Zahlen in einer Sequenz sind durch eine Regel oder ein Muster verbunden.")]
#only("5")[#voiceover("d) Eine einzelne Zahl ist falsch. Eine Sequenz besteht aus mehreren Zahlen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Erklärung]
#v(40pt)
#only("1-")[- Eine Sequenz ist eine geordnete Liste von Zahlen.]
#only("2-")[- Die Zahlen in einer Sequenz folgen einem bestimmten Muster oder einer Regel.]
#only("3-")[- Zum Beispiel folgt die Sequenz $1, 2, 3, 4, ...$ der Regel $a_n = n$.]
#only("4-")[- Ein weiteres Beispiel ist die Fibonacci-Sequenz: $1, 1, 2, 3, 5, 8, ...$]
#v(20pt)
#only("5-")[Daher ist die richtige Antwort b) Eine geordnete Liste von Zahlen. 🎉]

#only("1")[#voiceover("Lass uns das Schritt für Schritt aufschlüsseln. Eine Sequenz ist tatsächlich eine geordnete Liste von Zahlen.")]
#only("2")[#voiceover("Die Zahlen in einer Sequenz sind nicht zufällig. Sie folgen einem bestimmten Muster oder einer Regel.")]
#only("3")[#voiceover("Betrachten wir zum Beispiel die Sequenz 1, 2, 3, 4 und so weiter. Jeder Term in dieser Sequenz entspricht seiner Position. Wir können dies als a_n = n schreiben.")]
#only("4")[#voiceover("Ein weiteres berühmtes Beispiel ist die Fibonacci-Sequenz: 1, 1, 2, 3, 5, 8 und so weiter. Jeder Term ist die Summe der beiden vorhergehenden.")]
#only("5")[#voiceover("Also, die richtige Antwort ist b) Eine geordnete Liste von Zahlen. Gut gemacht, dass du die richtige Option gewählt hast!")]
]