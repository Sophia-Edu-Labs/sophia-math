#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme


#slide()[

#only("1")[
#voiceover("Unsere Aufgabe ist es, die Extremstellen der gegebenen Funktion zu finden und zu bestimmen, welcher Art sie sind.")
]
Untersuche die Extremstellen der Funktion
#v(40pt)
#only("2-")[#text()[$ f(x) = x^3 - 6x^2 + 9x + 1 $]]
#only("2")[
#voiceover("f von x gleich x hoch drei minus sechs x Quadrat plus neun x plus eins.")
]
]

#slide()[
#only("1")[
#voiceover("Zur Lösung dieser Aufgabe berechnen wir zunächst die erste Ableitung der Funktion. Anschließend setzen wir die Ableitung gleich null, um die kritischen Punkte zu finden. ")
]
#only("2")[
#voiceover("Dann überprüfen wir die kritischen Punkte mit der zweiten Ableitung, um die Art der Extremstellen zu bestimmen. Beginnen wir also mit dem Lösungsprozess!")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
#only("1-")[- Este Ableitung für kritische Punkte]
#only("2-")[- Zweite Ableitung für Art der kritischen Punkte]
]

#slide()[
#text(size: 30pt, weight: "bold")[1. Ableitung]
#v(40pt)
#only("1-")[$f(x) = x^3 - 6x^2 + 9x + 1$]
#only("1")[#voiceover("Wir beginnen mit der gegebenen Funktion f von x gleich x hoch drei minus sechs x Quadrat plus neun x plus eins. Davon wollen wir die erste Ableitung berechnen")]
#v(10pt)
#only("2-")[$f'(x) = 3x^2 - 12x + 9$]
#only("2")[#voiceover("Die Funktion ist eine Summe von Potenzen, daher wenden wir die Potenzregel an. Die Ableitung von x hoch drei ist drei x Quadrat, die Ableitung von minus sechs x Quadrat ist minus zwölf x und die Ableitung von neun x ist neun. Die Ableitung von eins ist null, also fällt sie weg.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kritische Punkte]
#v(40pt)
$f'(x) = 3x^2 - 12x + 9$
#v(10pt)
#only("1-")[#align(center)[#text(fill:aqua)[⇓ Gleich Null setzen]]]
#only("1")[#voiceover("Um die kritischen Punkte zu finden, setzen wir dann die erste Ableitung gleich null.")]
#v(10pt)
#only("2-")[$0 = 3x^2 - 12x + 9$]
#only("2")[#voiceover("Dann erhalten wir Null gleich drei x Quadrat minus zwölf x plus neun.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Quadratische Gleichung]]]
#only("3")[#voiceover("Das ist eine normale quadratische Gleichung, die wir zum Beispiel mit der Mitternachtsformel lösen können.")]
#v(10pt)
#only("4-")[$x = 1, x = 3$]
#only("4")[#voiceover("Dann erhalten wir x gleich eins und x gleich drei als Nullstellen, und somit auch als kritische Punkte.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[2. Ableitung]
#v(40pt)
#only("1-")[$f''(x) = 6x - 12$]
#only("1")[#voiceover("Die zweite Ableitung der Funktion ist sechs x minus zwölf.")]
#v(10pt)
#only("2")[#voiceover("Wir setzen die kritischen Punkte in die zweite Ableitung ein, um die Art der Extremstellen zu bestimmen.")]
#v(10pt)
#only("3-")[$f''(1) = -6, f''(3) = 6$]
#only("3")[#voiceover("Für x gleich eins ist die zweite Ableitung negativ, was auf ein lokales Maximum hinweist. Für x gleich drei ist die zweite Ableitung positiv, was ein lokales Minimum anzeigt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ergebnis]
#v(40pt)
#only("1-")[
- Lokales Maximum bei  $x = 1$
- lokales Minimum bei  $x = 3$
]
#only("1")[#voiceover("Zusammenfassend haben wir ein lokales Maximum bei x gleich eins und ein lokales Minimum bei x gleich drei gefunden.")]
]