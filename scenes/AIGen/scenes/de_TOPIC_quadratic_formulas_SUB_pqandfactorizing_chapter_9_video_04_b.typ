#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
#v(40pt)
#only("1-")[
$x^2 - 7x + 10 = 0$
]
#v(20pt)
#only("2-")[
Mit der p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 - q)$
]
#only("1")[
#voiceover("Keine Sorge, das war ein schwieriger Versuch. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Gleichung x Quadrat minus 7x plus 10 gleich null.")
]
#only("2")[
#voiceover("Um dies zu lösen, verwenden wir die p-q-Formel. Diese Formel besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[p und q identifizieren]
#v(40pt)
#only("1-")[
$x^2 - 7x + 10 = 0$
]
#v(20pt)
#only("2-")[
- p = 7
]
#v(20pt)
#only("3-")[
- q = 10
]
#only("1")[
#voiceover("Wenn wir uns unsere Gleichung ansehen, x Quadrat minus 7x plus 10 gleich null,")
]
#only("2")[
#voiceover("können wir erkennen, dass p 7 ist,")
]
#only("3")[
#voiceover("und q 10 ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Formel anwenden]
#v(40pt)
#only("1-")[
$x = -p/2 ± sqrt((p/2)^2 - q)$
]
#v(20pt)
#only("2-")[
$x = -7/2 ± sqrt((7/2)^2 - 10)$
]
#v(20pt)
#only("3-")[
$x = -3.5 ± sqrt(12.25 - 10)$
]
#only("1")[
#voiceover("Nun, lass uns die p-q-Formel anwenden. Wir setzen p mit 7 und q mit 10 ein.")
]
#only("2")[
#voiceover("Das ergibt x gleich minus 7 durch 2, plus oder minus die Quadratwurzel von 7 durch 2 zum Quadrat minus 10.")
]
#only("3")[
#voiceover("Weiter vereinfacht erhalten wir x gleich minus 3.5, plus oder minus die Quadratwurzel von 12.25 minus 10.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Den Ausdruck vereinfachen]
#v(40pt)
#only("1-")[
$x = -3.5 ± sqrt(2.25)$
]
#v(20pt)
#only("2-")[
$x = -3.5 ± 1.5$
]
#only("1")[
#voiceover("Wenn wir unter der Quadratwurzel vereinfachen, erhalten wir x gleich minus 3.5, plus oder minus die Quadratwurzel von 2.25.")
]
#only("2")[
#voiceover("Die Quadratwurzel von 2.25 ist 1.5, also wird unsere Gleichung x gleich minus 3.5, plus oder minus 1.5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Lösung]
#v(40pt)
#only("1-")[
$x = -3.5 + 1.5$ oder $x = -3.5 - 1.5$
]
#v(20pt)
#only("2-")[
$x = -2$ oder $x = -5$
]
#v(20pt)
#only("3-")[
$x = 5$ oder $x = 2$
]
#only("1")[
#voiceover("Nun haben wir zwei Gleichungen: x gleich minus 3.5 plus 1.5, oder x gleich minus 3.5 minus 1.5.")
]
#only("2")[
#voiceover("Wenn wir diese vereinfachen, erhalten wir x gleich minus 2, oder x gleich minus 5.")
]
#only("3")[
#voiceover("Denke jedoch daran, dass wir nach x und nicht nach minus x suchen. Also ist unsere endgültige Lösung x gleich 5, oder x gleich 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Überprüfung]
#v(40pt)
#only("1-")[
Für $x = 5$: $5^2 - 7(5) + 10 = 25 - 35 + 10 = 0$ ✅
]
#v(20pt)
#only("2-")[
Für $x = 2$: $2^2 - 7(2) + 10 = 4 - 14 + 10 = 0$ ✅
]
#only("1")[
#voiceover("Lass uns unsere Lösungen überprüfen. Für x gleich 5 erhalten wir 5 Quadrat minus 7 mal 5 plus 10, was 25 minus 35 plus 10 ergibt, was tatsächlich null ergibt.")
]
#only("2")[
#voiceover("Ähnlich erhalten wir für x gleich 2, 2 Quadrat minus 7 mal 2 plus 10, was 4 minus 14 plus 10 ergibt, was ebenfalls null ergibt. Daher sind beide Lösungen korrekt!")
]
]