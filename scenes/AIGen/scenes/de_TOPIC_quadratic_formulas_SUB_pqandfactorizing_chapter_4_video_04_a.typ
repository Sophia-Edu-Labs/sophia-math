#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]
#v(40pt)

#only("1-")[Gleichung: $x^2 - 4x + 4 = 0$]
#v(20pt)

#only("2-")[Schritt 1: Bestimme $a$, $b$ und $c$]
#v(10pt)
#only("2-")[- $a = 1$]
#v(5pt)
#only("2-")[- $b = -4$]
#v(5pt)
#only("2-")[- $c = 4$]

#only("1")[
#voiceover("Großartige Arbeit bei der Bearbeitung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit der quadratischen Gleichung x Quadrat minus 4x plus 4 gleich null zu tun.")
]

#only("2")[
#voiceover("Zuerst identifizieren wir die Koeffizienten. In der allgemeinen Form von a x Quadrat plus b x plus c haben wir a gleich 1, b gleich minus 4 und c gleich 4.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Gleichung faktorisieren]
#v(40pt)

#only("1-")[Schritt 2: Schreibe um als $(x + p)(x + q) = 0$]
#v(20pt)
#only("2-")[Wobei $p + q = -b/a$ und $p \cdot q = c/a$]
#v(20pt)
#only("3-")[$(x - 2)(x - 2) = 0$]

#only("1")[
#voiceover("Nun lass uns die Gleichung faktorisieren. Wir wollen sie in der Form (x plus p)(x plus q) gleich null umschreiben.")
]

#only("2")[
#voiceover("Um p und q zu finden, verwenden wir zwei Bedingungen: p plus q gleich minus b durch a und p mal q gleich c durch a.")
]

#only("3")[
#voiceover("In diesem Fall erhalten wir (x minus 2)(x minus 2) gleich null. Beachte, dass beide Faktoren gleich sind, was bedeutet, dass dies ein perfektes Quadrat-Trinomial ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Gleichung lösen]
#v(40pt)

#only("1-")[Schritt 3: Löse $(x - 2)(x - 2) = 0$]
#v(20pt)
#only("2-")[Entweder $x - 2 = 0$ oder $x - 2 = 0$]
#v(20pt)
#only("3-")[Lösung: $x = 2$]

#only("1")[
#voiceover("Jetzt lösen wir die faktorisierte Gleichung. Damit ein Produkt null ist, muss einer seiner Faktoren null sein.")
]

#only("2")[
#voiceover("In diesem Fall haben wir x minus 2 gleich null oder x minus 2 gleich null. Beide Gleichungen sind gleich.")
]

#only("3")[
#voiceover("Wenn wir dies lösen, erhalten wir x gleich 2. Dies ist unsere Lösung, und es ist eine doppelte Wurzel, da sie zweimal in der faktoriserten Form vorkommt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Lösung überprüfen]
#v(40pt)

#only("1-")[Schritt 4: Überprüfe die Lösung]
#v(20pt)
#only("2-")[Setze $x = 2$ in die ursprüngliche Gleichung ein:]
#v(10pt)
#only("2-")[$(2)^2 - 4(2) + 4 = 0$]
#v(10pt)
#only("3-")[$4 - 8 + 4 = 0$]
#v(10pt)
#only("4-")[$0 = 0$ ✅]

#only("1")[
#voiceover("Lass uns unsere Lösung überprüfen, indem wir sie in die ursprüngliche Gleichung einsetzen.")
]

#only("2")[
#voiceover("Wir ersetzen x durch 2 in x Quadrat minus 4x plus 4 gleich null.")
]

#only("3")[
#voiceover("Das ergibt 4 minus 8 plus 4 gleich null.")
]

#only("4")[
#voiceover("Was sich zu null gleich null vereinfacht. Dies bestätigt, dass unsere Lösung korrekt ist!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)

#only("1-")[- Ursprüngliche Gleichung: $x^2 - 4x + 4 = 0$]
#v(20pt)
#only("2-")[- Faktorisierte Form: $(x - 2)(x - 2) = 0$]
#v(20pt)
#only("3-")[- Lösung: $x = 2$ (doppelte Wurzel)]

#only("1")[
#voiceover("Zusammenfassend haben wir mit der Gleichung x Quadrat minus 4x plus 4 gleich null begonnen.")
]

#only("2")[
#voiceover("Wir haben sie in (x minus 2)(x minus 2) gleich null faktorisiert.")
]

#only("3")[
#voiceover("Und die Lösung x gleich 2 gefunden, was eine doppelte Wurzel ist. Großartige Arbeit beim Lösen dieser quadratischen Gleichung durch Faktorisierung!")
]
]