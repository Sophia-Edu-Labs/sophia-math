#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lass uns rekapitulieren, wie man n-te Wurzeln vereinfacht.")
]
#text(size: 30pt, weight: "bold")[Vereinfachung von n-ten Wurzeln 🌱]
// Der Titel "Vereinfachung von n-ten Wurzeln" mit einem Keimling-Emoji wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Um eine n-te Wurzel zu vereinfachen, faktorisieren wir die Zahl unter der Wurzel.")
]
#only("2-")[
- Faktorisiere die Zahl unter der Wurzel
]
// Der Aufzählungspunkt "Faktorisiere die Zahl unter der Wurzel" wird ab Folie 2 angezeigt
#v(40pt)
#only("3")[
#voiceover("Zum Beispiel, lass uns die Kubikwurzel von 27 vereinfachen. Wir können 27 als 3 mal 3 mal 3 faktorisieren.")
]
#only("3-")[
$ root(3, 27) = root(3, 3 dot 3 dot 3)$
]
// Die Faktorisierung der Kubikwurzel von 27 wird ab Folie 3 angezeigt
#v(40pt)
#only("4")[
#voiceover("Mit der Eigenschaft, dass die n-te Wurzel eines Produkts das Produkt der n-ten Wurzeln ist, können wir dies weiter vereinfachen.")
]
#only("4-")[
$ = root(3, 3) dot root(3, 3) dot root(3, 3)$
]
// Die Vereinfachung mit der Produkteigenschaft wird ab Folie 4 angezeigt
#v(40pt)
#only("5")[
#voiceover("Die Kubikwurzel von 3 ist einfach 3, also erhalten wir 3 mal 3 mal 3, was gleich 3 ist.")
]
#only("5-")[
$ = 3$
]
// Die endgültige Vereinfachung auf 3 wird ab Folie 5 angezeigt
]

#slide()[
#only("1")[
#voiceover("Hier ist ein weiteres Beispiel. Lass uns die vierte Wurzel von 81 vereinfachen.")
]
#text(size: 30pt, weight: "bold")[Beispiel: $root(4, 81)$ 🧮]
// Der Titel "Beispiel: vierte Wurzel von 81" mit einem Taschenrechner-Emoji wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("81 kann als 3 hoch 4 faktorisieren.")
]
#only("2-")[
$ root(4, 81) = root(4, 3^4)$
]
// Die Faktorisierung von 81 als 3^4 wird ab Folie 2 angezeigt
#v(40pt)
#only("3")[
#voiceover("Mit der Eigenschaft, dass die n-te Wurzel einer Potenz die Basis hoch der Potenz geteilt durch n ist, können wir dies vereinfachen.")
]
#only("3-")[
$ = 3^(4/4) = 3^1$
]
// Die Vereinfachung mit der Potenzeigenschaft wird ab Folie 3 angezeigt
#v(40pt)
#only("4")[
#voiceover("3 hoch 1 ist einfach 3, also vereinfacht sich die vierte Wurzel von 81 auf 3.")
]
#only("4-")[
$ = 3$
]
// Die endgültige Vereinfachung auf 3 wird ab Folie 4 angezeigt
]

#slide()[
#only("1")[
#voiceover("Zusammenfassend, um n-te Wurzeln zu vereinfachen:")
]
#text(size: 30pt, weight: "bold")[Zusammenfassung 🔍]
#v(40pt)
#only("2")[
#voiceover("Faktorisieren die Zahl unter der Wurzel,")
]
#only("2-")[
1. Faktorisiere die Zahl unter der Wurzel
]
#v(20pt)
#only("3")[
#voiceover("Nutze die Eigenschaft, dass die n-te Wurzel eines Produkts das Produkt der n-ten Wurzeln ist,")
]
#only("3-")[
2. $root(n, a dot b) = root(n, a) dot root(n, b)$
]
#v(20pt)
#only("4")[
#voiceover("Und nutze die Eigenschaft, dass die n-te Wurzel einer Potenz die Basis hoch der Potenz geteilt durch n ist.")
]
#only("4-")[
3. $root(n, a^m) = a^(m/n)$
]
#v(40pt)
#only("5")[
#voiceover("Mit diesen Schritten kannst du n-te Wurzeln effektiv vereinfachen.")
]
]