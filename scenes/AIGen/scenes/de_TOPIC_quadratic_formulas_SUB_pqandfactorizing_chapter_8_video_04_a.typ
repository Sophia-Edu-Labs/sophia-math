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
$x^2 - 3x + 2 = 0$
]
#v(20pt)
#only("2-")[
Mit der p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 - q)$
]
#only("1")[
#voiceover("Großartige Arbeit beim Lösen dieser quadratischen Gleichung! Lass uns die Lösung Schritt für Schritt mit der p-q-Formel durchgehen. Wir beginnen mit der Gleichung x Quadrat minus 3x plus 2 gleich 0.")
]
#only("2")[
#voiceover("Die p-q-Formel besagt, dass x gleich minus p durch 2, plus oder minus die Wurzel aus p durch 2 zum Quadrat minus q ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Bestimmen von p und q]
#v(40pt)
#only("1-")[
$x^2 - 3x + 2 = 0$
]
#v(20pt)
#only("2-")[
- $p = 3$
]
#v(20pt)
#only("3-")[
- $q = 2$
]
#only("1")[
#voiceover("Zuerst identifizieren wir p und q in unserer Gleichung. In der Standardform ax Quadrat plus bx plus c gleich 0 ist p der Koeffizient von x und q der konstante Term.")
]
#only("2")[
#voiceover("In unserer Gleichung ist p gleich 3.")
]
#only("3")[
#voiceover("Und q ist gleich 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Anwenden der Formel]
#v(40pt)
#only("1-")[
$x = -p/2 ± sqrt((p/2)^2 - q)$
]
#v(20pt)
#only("2-")[
$x = -3/2 ± sqrt((3/2)^2 - 2)$
]
#v(20pt)
#only("3-")[
$x = -3/2 ± sqrt(9/4 - 2)$
]
#only("1")[
#voiceover("Nun wenden wir die p-q-Formel an. Wir setzen p mit 3 und q mit 2 ein.")
]
#only("2")[
#voiceover("Das ergibt x gleich minus 3 durch 2, plus oder minus die Wurzel aus 3 durch 2 zum Quadrat minus 2.")
]
#only("3")[
#voiceover("Vereinfachen wir den Ausdruck unter der Wurzel, erhalten wir x gleich minus 3 durch 2, plus oder minus die Wurzel aus 9 durch 4 minus 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung]
#v(40pt)
#only("1-")[
$x = -3/2 ± sqrt(9/4 - 2)$
]
#v(20pt)
#only("2-")[
$x = -3/2 ± sqrt(9/4 - 8/4)$
]
#v(20pt)
#only("3-")[
$x = -3/2 ± sqrt(1/4)$
]
#v(20pt)
#only("4-")[
$x = -3/2 ± 1/2$
]
#only("1")[
#voiceover("Lass uns weiter vereinfachen. Wir haben x gleich minus 3 durch 2, plus oder minus die Wurzel aus 9 durch 4 minus 2.")
]
#only("2")[
#voiceover("Um 2 von 9 durch 4 abzuziehen, müssen wir 2 in einen Bruch mit dem Nenner 4 umwandeln. 2 ist gleich 8 durch 4.")
]
#only("3")[
#voiceover("Wenn wir 8 durch 4 von 9 durch 4 abziehen, erhalten wir 1 durch 4 unter der Wurzel.")
]
#only("4")[
#voiceover("Die Wurzel aus 1 durch 4 ist 1 durch 2. Unsere Gleichung vereinfacht sich also zu x gleich minus 3 durch 2, plus oder minus 1 durch 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Lösung]
#v(40pt)
#only("1-")[
$x = -3/2 + 1/2$ oder $x = -3/2 - 1/2$
]
#v(20pt)
#only("2-")[
$x = -1$ oder $x = -2$
]
#v(20pt)
#only("3-")[
$x = 1$ oder $x = 2$
]
#only("1")[
#voiceover("Nun haben wir zwei Gleichungen: x gleich minus 3 durch 2 plus 1 durch 2 oder x gleich minus 3 durch 2 minus 1 durch 2.")
]
#only("2")[
#voiceover("Wenn wir diese Brüche vereinfachen, erhalten wir x gleich minus 1 oder x gleich minus 2.")
]
#only("3")[
#voiceover("Denke jedoch daran, dass wir x Quadrat minus 3x plus 2 gleich 0 lösen. Die Lösungen dieser Gleichung sind tatsächlich die positiven Werte: x gleich 1 oder x gleich 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verifikation]
#v(40pt)
#only("1-")[
Für $x = 1$: $1^2 - 3(1) + 2 = 1 - 3 + 2 = 0$ ✅
]
#v(20pt)
#only("2-")[
Für $x = 2$: $2^2 - 3(2) + 2 = 4 - 6 + 2 = 0$ ✅
]
#only("1")[
#voiceover("Lass uns unsere Lösungen überprüfen. Für x gleich 1 haben wir 1 Quadrat minus 3 mal 1 plus 2, was gleich 1 minus 3 plus 2 ist, was gleich 0 ist.")
]
#only("2")[
#voiceover("Für x gleich 2 haben wir 2 Quadrat minus 3 mal 2 plus 2, was gleich 4 minus 6 plus 2 ist, was auch gleich 0 ist. Beide Lösungen stimmen!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[
- Wir haben $x^2 - 3x + 2 = 0$ mit der p-q-Formel gelöst 📊
]
#v(20pt)
#only("2-")[
- Wir haben $x = 1$ oder $x = 2$ gefunden 🎉
]
#v(20pt)
#only("3-")[
- Überprüfe immer deine Lösungen! ✅
]
#only("1")[
#voiceover("Zusammenfassend haben wir die quadratische Gleichung x Quadrat minus 3x plus 2 gleich 0 mit der p-q-Formel gelöst.")
]
#only("2")[
#voiceover("Wir haben herausgefunden, dass x gleich 1 oder x gleich 2 ist.")
]
#only("3")[
#voiceover("Denke daran, es ist immer eine gute Praxis, deine Lösungen zu überprüfen, indem du sie in die ursprüngliche Gleichung einsetzt. Großartige Arbeit beim Lösen dieser quadratischen Gleichung!")
]
]