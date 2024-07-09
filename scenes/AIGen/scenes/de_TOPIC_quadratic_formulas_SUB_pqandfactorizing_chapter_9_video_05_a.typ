#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Du hast die quadratische Gleichung korrekt gelöst. Lass uns die Lösung Schritt für Schritt durchgehen, um den Prozess besser zu verstehen.")
]

#text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]

#v(40pt)

#only("2-")[#text()[$ x^2 + 3x - 10 = 0 $]]

#only("2")[
#voiceover("Wir beginnen mit der quadratischen Gleichung x Quadrat plus drei x minus zehn gleich null.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Bestimme die Terme]

#v(40pt)

#only("1-")[- $a = 1$ (Koeffizient von $x^2$)]
#v(10pt)
#only("2-")[- $b = 3$ (Koeffizient von $x$)]
#v(10pt)
#only("3-")[- $c = -10$ (Konstante)]

#only("1")[
#voiceover("Zuerst bestimmen wir die Terme. Der Koeffizient von x Quadrat, den wir a nennen, ist 1.")
]

#only("2")[
#voiceover("Der Koeffizient von x, den wir b nennen, ist 3.")
]

#only("3")[
#voiceover("Und der konstante Term, den wir c nennen, ist minus 10.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Finde zwei Zahlen]

#v(40pt)

#only("1-")[Finde zwei Zahlen, die:]
#v(10pt)
#only("2-")[- Multipliziert ergeben $a$ mal $c$ = $1$ mal $-10$ = $-10$]
#v(10pt)
#only("3-")[- Addiert ergeben $b = 3$]

#only("1")[
#voiceover("Nun müssen wir zwei Zahlen finden, die bestimmte Eigenschaften haben.")
]

#only("2")[
#voiceover("Diese zwei Zahlen sollten multipliziert a mal c ergeben, also 1 mal minus 10, oder minus 10.")
]

#only("3")[
#voiceover("Und sie sollten addiert b ergeben, also 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Bestimme die Zahlen]

#v(40pt)

#only("1-")[Die zwei Zahlen sind: $5$ und $-2$]
#v(20pt)
#only("2-")[- $5$ mal $-2$ = $-10$ ✅]
#v(10pt)
#only("3-")[- $5 + (-2) = 3$ ✅]

#only("1")[
#voiceover("Die zwei Zahlen, die diese Bedingungen erfüllen, sind 5 und minus 2.")
]

#only("2")[
#voiceover("Wir können überprüfen, dass 5 mal minus 2 gleich minus 10 ist.")
]

#only("3")[
#voiceover("Und 5 plus minus 2 gleich 3 ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Schreibe den mittleren Term um]

#v(40pt)

#only("1-")[$ x^2 + 3x - 10 = 0 $]
#v(20pt)
#only("2-")[$ x^2 + 5x - 2x - 10 = 0 $]

#only("1")[
#voiceover("Nun lass uns unsere ursprüngliche Gleichung umschreiben.")
]

#only("2")[
#voiceover("Wir teilen den mittleren Term, 3x, in 5x minus 2x auf. Dies ändert die Gleichung nicht, bereitet uns aber auf den nächsten Schritt vor.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 5: Faktorisieren durch Gruppierung]

#v(40pt)

#only("1-")[$ x^2 + 5x - 2x - 10 = 0 $]
#v(20pt)
#only("2-")[$ (x^2 + 5x) + (-2x - 10) = 0 $]
#v(20pt)
#only("3-")[$ x(x + 5) - 2(x + 5) = 0 $]
#v(20pt)
#only("4-")[$ (x + 5)(x - 2) = 0 $]

#only("1")[
#voiceover("Jetzt können wir durch Gruppierung faktorisieren. Zuerst gruppieren wir die ersten zwei Terme und die letzten zwei Terme.")
]

#only("2")[
#voiceover("Dann faktorisieren wir den gemeinsamen Faktor aus jeder Gruppe. Aus der ersten Gruppe faktorisieren wir x.")
]

#only("3")[
#voiceover("Aus der zweiten Gruppe faktorisieren wir minus 2. Wir sehen nun, dass x plus 5 ein gemeinsamer Faktor ist.")
]

#only("4")[
#voiceover("Wir können diesen herausfaktorisieren, sodass wir x plus 5 mal x minus 2 gleich null erhalten.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 6: Löse die Gleichung]

#v(40pt)

#only("1-")[$ (x + 5)(x - 2) = 0 $]
#v(20pt)
#only("2-")[Entweder $x + 5 = 0$ oder $x - 2 = 0$]
#v(20pt)
#only("3-")[$ x = -5 $ oder $ x = 2 $]

#only("1")[
#voiceover("Jetzt können wir diese Gleichung lösen. Wenn ein Produkt von Faktoren null ist, muss einer der Faktoren null sein.")
]

#only("2")[
#voiceover("Also entweder x plus 5 gleich null, oder x minus 2 gleich null.")
]

#only("3")[
#voiceover("Wenn wir diese lösen, erhalten wir x gleich minus 5 oder x gleich 2. Das sind unsere Lösungen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]

#v(40pt)

#only("1-")[Die Lösungen für $x^2 + 3x - 10 = 0$ sind:]
#v(20pt)
#only("2-")[$ x = -5 $ oder $ x = 2 $]

#only("1")[
#voiceover("Also lautet unsere endgültige Antwort:")
]

#only("2")[
#voiceover("Die Lösungen für x Quadrat plus 3x minus 10 gleich null sind x gleich minus 5 oder x gleich 2. Großartige Arbeit beim Lösen dieser quadratischen Gleichung durch Faktorisierung!")
]
]