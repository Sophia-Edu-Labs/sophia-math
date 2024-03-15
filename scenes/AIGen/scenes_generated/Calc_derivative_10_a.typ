#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Yo Leute, Zayn hier! Heute leiten wir mal eine coole Funktion ab. Schaut das Video unbedingt bis zum Ende, sonst verpasst ihr was.")
]
Gesucht: Ableitung der Funktion
#v(40pt)
#only("2-")[
#text()[$ f(x) = x dot "ln"(x) - x $]
]
#only("2")[
#voiceover("Wir suchen die Ableitung von f von x gleich x mal natürlicher Logarithmus von x minus x.")
]
]
#slide()[
#only("1")[
#voiceover("Um die Ableitung zu bestimmen, benutzen wir wieder unsere Ableitungsregeln.")
]
#only("2")[
#voiceover("Die Produktregel,")
]
#only("3")[
#voiceover("und die Ableitung der natürlichen Logarithmusfunktion.")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
#only("1-")[- Produktregel]
#only("2-")[- Ableitung des nat. Logarithmus]
]
#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$ f(x) = x dot "ln"(x) - x $]
#only("1")[
#voiceover("Das ist unsere Ausgangsfunktion f von x gleich x mal natürlicher Logarithmus von x minus x.")
]
#v(10pt)
#only("2")[#voiceover("Jetzt leiten wir jeden Term einzeln nach x ab.")]
#v(10pt)
#only("3-")[
#align(center)[#text(fill:aqua)[⇓ Ableitung]]
]
#only("3")[
#voiceover("Zuerst der Produktterm x mal ln von x. Da nutzen wir die Produktregel.")
]
#only("4-")[
$x dot (1/x) + "ln"(x) dot 1$
]
#only("4")[
#voiceover("Die Ableitung von x mal ln x ist x mal die Ableitung von ln x, also 1 durch x, plus ln x mal die Ableitung von x, also 1.")
]
#only("5")[
#voiceover("Weiter gehts mit minus x. Die Ableitung von minus x ist einfach minus 1.")
]
#only("6-")[
$- 1$
]
#only("6")[
#voiceover("Jetzt fassen wir die Terme zusammen und vereinfachen. x mal 1 durch x ist 1. Dann haben wir also 1 plus ln x minus 1. Dann können wir die beiden einser noch küruen, und")
]
#only("7")[
#voiceover("wir erhalten als Ergebnis: Die Ableitung ist der Natürliche Logarithmus von x. ...")
]
#v(20pt)
#only("7-")[
#text()[$arrow.r$ Ergebnis:
#v(10pt)
$ f'(x) = "ln"(x) $]
]
#only("7")[
#voiceover("Das wars auch schon von mir. Folgt noch Sophia auf TikTok. Man sieht sich, bis dann!")
]
]