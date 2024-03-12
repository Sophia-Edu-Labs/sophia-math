#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Hi ich bin Scharl Leklär und wir rechnen jetzt eine Ableitung.")
]
Gesucht: Ableitung der Funktion
#v(40pt)
#only("2-")[
#text()[$ f(x) = 4 "cos"(x^2) - 2x^2 $]
]
#only("2")[
#voiceover("Wir suchen die Ableitung der Funktion f von x gleich vier mal Kosinus von x Quadrat minus zwei mal x Quadrat.")
]
]
#slide()[
#only("1")[
#voiceover("Zur Bestimmung der Ableitung nutzen wir wieder die Linearität der Ableitung und leiten jeden Term einzeln ab.")
]
#only("2")[
#voiceover("Für die Terme verwenden wir die Faktorregel,")
]
#only("3")[
#voiceover("die Kettenregel,")
]
#only("4")[
#voiceover("und die Ableitung der Kosinusfunktion.")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
#only("1-")[- Linearität der Ableitung]
#only("2-")[- Faktorregel]
#only("3-")[- Kettenregel]
#only("4-")[- Ableitung der Kosinusfunktion]
]
#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 4 "cos"(x^2) - 2x^2$]
#only("1")[
#voiceover("Beginnen wir mit der gegebenen Funktion f von x gleich vier mal Kosinus von x Quadrat minus zwei mal x Quadrat.")
]
#v(10pt)
#only("2")[#voiceover("Jetzt leiten wir jeden Term der Funktion einzeln nach x ab.")]
#v(10pt)
#only("3-")[
#align(center)[#text(fill:aqua)[⇓ Schrittweise Ableitung]]
]
#only("3")[
#voiceover("Bei der Ableitung von vier mal Kosinus von x Quadrat wenden wir die Faktorregel an.")
]
#only("4-")[
$4 dot (-"sin"(x^2))$
]
#only("4")[
#voiceover("Das heißt, wir multiplizieren die vier mit der Ableitung von Kosinus von x Quadrat. Die Ableitung der Kosinusfunktion ist die negative Sinusfunktion.")
]
#only("5")[
#voiceover("Nun kommt die Kettenregel ins Spiel. Die Ableitung von Sinus von x Quadrat ist gleich Kosinus von x Quadrat mal die Ableitung der inneren Funktion x Quadrat.")
]
#only("6-")[
$dot 2x$
]
#only("6")[
#voiceover("Die Ableitung von x Quadrat wiederum ist zwei mal x.")
]
#only("7")[
#voiceover("Weiter mit dem Term minus zwei mal x Quadrat. Hier ist die Ableitung gleich minus zwei mal zwei mal x.")
]
#only("8-")[
$- 4x$
]
#only("8")[
#voiceover("Das vereinfacht sich zu minus vier mal x.")
]
#only("9")[
#voiceover("Fassen wir nun alle Teilergebnisse zusammen, erhalten wir die gesuchte Ableitung der Funktion als minus acht mal x mal Sinus von x Quadrat minus vier mal x. Folgt Sophia für mehr solche Videos")
]
#v(20pt)
#only("9-")[
#text()[$arrow.r$ Ergebnis:
#v(10pt)
$ f'(x) = -8x "sin"(x^2) - 4x $]
]
]