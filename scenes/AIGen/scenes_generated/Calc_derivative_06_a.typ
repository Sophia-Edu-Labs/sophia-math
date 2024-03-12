#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Richtig, klasse! Gehen wir das ganze nochmal gemeinsam durch.")
]

Gesucht: Ableitung der Funktion
#v(40pt)
#only("2-")[
#text()[$ f(x) = 1/3 x^3 - 2 dot e^x + "sin"(x) $]
]
#only("2")[
#voiceover("Wir suchen die Ableitung der Funktion f von x gleich ein Drittel mal x hoch drei minus zwei mal e hoch x plus Sinus von x.")
]
]


#slide()[
#only("1")[
#voiceover("Um die Ableitung zu bestimmen, nutzen wir die Linearität der Ableitung und leiten jeden Term einzeln ab.")
]
#only("2")[
#voiceover("Für die Terme verwenden wir die Potenzregel,")
]
#only("3")[
#voiceover("die Faktorregel,")
]
#only("4")[
#voiceover("die Ableitung der e-Funktion,")]
#only("5")[
#voiceover("und die Ableitung der Sinusfunktion.")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
#only("1-")[- Linearität der Ableitung]
#only("2-")[- Potenzregel]
#only("3-")[- Faktorregel]
#only("4-")[- Ableitung e-Funktion]
#only("5-")[- Ableitung der Sinusfunktion]
]
#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 1/3 x^3 - 2 dot e^x + "sin"(x)$]
#only("1")[
#voiceover("Beginnen wir mit der gegebenen Funktion f von x gleich ein Drittel mal x hoch drei minus zwei mal e hoch x plus Sinus von x.")
]
#v(10pt)
#only("2")[#voiceover("Nun leiten wir jeden Term der Funktion einzeln nach x ab.")]
#v(10pt)
#only("3-")[
#align(center)[#text(fill:aqua)[⇓ Schrittweise Ableitung]]
]
#only("3")[
#voiceover("Die Potenzregel sagt uns, dass die Ableitung von x hoch n gleich n mal x hoch \"n minus eins\" ist.")
]
#v(10pt)
#only("4-")[
$f'(x) = x^2$
]
#only("4")[
#voiceover("Die Ableitung von ein Drittel mal x hoch drei ist also gleich x Quadrat.")
]
#only("5")[
#voiceover("Bei der Ableitung von zwei mal e hoch x wenden wir die Faktorregel an. Das heißt, wir multiplizieren den konstanten Faktor zwei mit der Ableitung von e hoch x.")
]
#only("6-")[
$- 2 dot e^x$
]
#only("6")[
#voiceover("Die Ableitung der e-Funktion ist wieder die e-Funktion selbst. Somit ergibt sich minus zwei mal e hoch x.")
]
#only("7")[
#voiceover("Schließlich ist die Ableitung der Sinusfunktion die Kosinusfunktion.")
]
#only("8-")[
$+ "cos"(x)$
]
#only("8")[
#voiceover("Die Ableitung von Sinus x ist also Kosinus x.")
]
#only("9")[
#voiceover("Setzen wir alles zusammen, erhalten wir die gesuchte Ableitung der Funktion als x Quadrat minus zwei mal e hoch x plus Kosinus x.")
]

#v(20pt)
#only("9-")[
#text()[$arrow.r$ Ergebnis:
#v(10pt)
$ f'(x) = x^2 - 2 dot e^x + "cos"(x) $]
]
]