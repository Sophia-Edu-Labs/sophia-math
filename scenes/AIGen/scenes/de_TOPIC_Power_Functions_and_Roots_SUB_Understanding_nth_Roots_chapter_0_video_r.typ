#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzeln Rückblick 🌱]
#v(40pt)
#only("1-")[- Wert, der, wenn er auf die Potenz $n$ erhoben wird, die ursprüngliche Zahl ergibt]
#v(20pt)
#only("2-")[- Beispiel: $root(3, 8) = 2$, weil $2^3 = 8$]
#v(20pt)
#only("3-")[- Notation: $root(n, a)$ für die n-te Wurzel von $a$]
#only("1")[
#voiceover("Lass uns wiederholen, was wir über n-te Wurzeln gelernt haben. Eine n-te Wurzel einer Zahl ist ein Wert, der, wenn er auf die Potenz n erhoben wird, die ursprüngliche Zahl ergibt.")
]
#only("2")[
#voiceover("Zum Beispiel ist die Kubikwurzel von 8, bezeichnet als die 3. Wurzel von 8, 2. Denn wenn Du 2 hoch 3 nimmst, also es auf die Potenz 3 erhöhst, erhältst Du wieder 8.")
]
#only("3")[
#voiceover("Wir schreiben die n-te Wurzel mit der Notation 'root', gefolgt von dem Wurzelexponenten n und der Zahl a in Klammern.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften & Anwendungen 🧮]
#v(40pt)
#only("1-")[- Produktregel: $root(n, ab) = root(n, a) root(n, b)$]
#v(20pt)
#only("2-")[- Quotientenregel: $root(n, a/b) = root(n, a) / root(n, b)$]
#v(20pt)
#only("3-")[- Anwendungen in Zinssätzen, Physik, etc.]
#only("1")[
#voiceover("Wir haben auch einige Eigenschaften der n-ten Wurzeln gelernt. Die n-te Wurzel eines Produkts ist das Produkt der n-ten Wurzeln.")
]
#only("2")[
#voiceover("Ähnlich ist die n-te Wurzel eines Quotienten der Quotient der n-ten Wurzeln.")
]
#only("3")[
#voiceover("N-te Wurzeln haben verschiedene Anwendungen, wie zum Beispiel bei der Berechnung von Zinssätzen und beim Lösen von physikalischen Problemen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachen & Lösen ✏]
#v(40pt)
#only("1-")[- Vereinfachen durch Faktorisierung innerhalb der Wurzel]
#v(20pt)
#only("2-")[- Gleichungen lösen durch Erheben beider Seiten auf die Potenz $n$]
#v(20pt)
#only("3-")[- Beispiel: Löse $root(3, x) = 2$ ⇒ $x = 2^3 = 8$]
#only("1")[
#voiceover("Um n-te Wurzeln zu vereinfachen, können wir die Zahl innerhalb der Wurzel faktorisieren.")
]
#only("2")[
#voiceover("Beim Lösen von Gleichungen mit n-ten Wurzeln erheben wir beide Seiten der Gleichung auf die Potenz n.")
]
#only("3")[
#voiceover("Zum Beispiel, um die Gleichung 'die Kubikwurzel von x ist gleich 2' zu lösen, erheben wir beide Seiten auf die Potenz 3. Das ergibt 'x ist gleich 2 hoch 3', was 8 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Negative Zahlen & Komplexe Wurzeln 🧐]
#v(40pt)
#only("1-")[- Die n-te Wurzel einer negativen Zahl ist reell, wenn $n$ ungerade ist]
#v(20pt)
#only("2-")[- Beispiel: $root(3, -8) = -2$]
#v(20pt)
#only("3-")[- Wenn $n$ gerade ist, ist die n-te Wurzel einer negativen Zahl komplex]
#v(20pt)
#only("4-")[- Beispiel: $root(4, -16) = 2i$]
#only("1")[
#voiceover("Bei negativen Zahlen ist die n-te Wurzel reell, wenn n ungerade ist.")
]
#only("2")[
#voiceover("Zum Beispiel ist die Kubikwurzel von -8 gleich -2.")
]
#only("3")[
#voiceover("Wenn n jedoch gerade ist, ist die n-te Wurzel einer negativen Zahl komplex.")
]
#only("4")[
#voiceover("Zum Beispiel ist die 4. Wurzel von -16 gleich 2i, wobei i die imaginäre Einheit ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- n-te Wurzel: Wert, der, wenn er auf die Potenz $n$ erhoben wird, die ursprüngliche Zahl ergibt]
#v(20pt)
#only("2-")[- Vereinfachen durch Faktorisierung, lösen durch Erheben auf die Potenz $n$]
#v(20pt)
#only("3-")[- Die n-te Wurzel einer negativen Zahl ist reell, wenn $n$ ungerade ist, und komplex, wenn $n$ gerade ist]
#v(20pt)
#only("4-")[- Anwendungen in verschiedenen Bereichen 🌍]
#only("1")[
#voiceover("Zusammengefasst ist eine n-te Wurzel ein Wert, der, wenn er auf die Potenz n erhoben wird, die ursprüngliche Zahl ergibt.")
]
#only("2")[
#voiceover("Wir können n-te Wurzeln durch Faktorisierung vereinfachen und Gleichungen, die n-te Wurzeln enthalten, durch Erheben beider Seiten auf die Potenz n lösen.")
]
#only("3")[
#voiceover("Die n-te Wurzel einer negativen Zahl ist reell, wenn n ungerade ist, und komplex, wenn n gerade ist.")
]
#only("4")[
#voiceover("N-te Wurzeln haben Anwendungen in verschiedenen Bereichen, was sie zu einem wichtigen Konzept macht.")
]
]