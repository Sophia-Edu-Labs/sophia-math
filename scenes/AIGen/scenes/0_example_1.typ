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
Berechne die Extremstellen und bestimme ihre Art für
#v(40pt)
#only("2-")[#text()[$ f(x) = x^3 - 6x^2 + 9x + 1 $]]
#only("2")[
#voiceover("f von x gleich x hoch drei minus sechs x Quadrat plus neun x plus eins.")
]
]

#slide()[
#only("1")[
#voiceover("Zur Lösung dieser Aufgabe benötigen wir die erste und zweite Ableitung der Funktion.")
]
#only("2")[
#voiceover("Beginnen wir mit dem Lösungsprozess!")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
#only("1-")[- Berechnung der ersten Ableitung]
#only("2-")[- Überprüfung der kritischen Punkte mit der zweiten Ableitung]
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung der ersten Ableitung]
#v(40pt)
#only("1-")[$f(x) = x^3 - 6x^2 + 9x + 1$]
#only("1")[#voiceover("Wir beginnen mit der gegebenen Funktion f von x gleich x hoch drei minus sechs x Quadrat plus neun x plus eins.")]
#v(10pt)
#only("2-")[$f'(x) = 3x^2 - 12x + 9$]
#only("2")[#voiceover("Die erste Ableitung der Funktion ist drei x Quadrat minus zwölf x plus neun.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Finden der kritischen Punkte]
#v(40pt)
#only("1")[#voiceover("Um die kritischen Punkte zu finden, setzen wir die erste Ableitung gleich null.")]
#v(10pt)
#only("2-")[$0 = 3x^2 - 12x + 9$]
#only("2")[#voiceover("Null gleich drei x Quadrat minus zwölf x plus neun.")]
#v(10pt)
#only("3-")[$x = 1, x = 3$]
#only("3")[#voiceover("Durch das Lösen der Gleichung erhalten wir zwei kritische Punkte: x gleich eins und x gleich drei.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Überprüfung mit der zweiten Ableitung]
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