#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzel eines Produkts]
#v(40pt)
#only("1-")[$ root(n, a dot b) = root(n, a) dot root(n, b) $]
#v(20pt)
#only("2-")[Beispiel: $ root(3, 8 dot 27) = root(3, 8) dot root(3, 27) = 2 dot 3 = 6 $]
#only("1")[
#voiceover("Die n-te Wurzel eines Produkts ist gleich dem Produkt der n-ten Wurzeln. In mathematischer Notation wird dies geschrieben als die n-te Wurzel von a mal b ist gleich die n-te Wurzel von a mal die n-te Wurzel von b.")
]
#only("2")[
#voiceover("Zum Beispiel ist die dritte Wurzel von 8 mal 27 gleich der dritten Wurzel von 8 mal der dritten Wurzel von 27, was 2 mal 3 ergibt, also 6.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzel eines Quotienten]
#v(40pt)
#only("1-")[$ root(n, a/b) = root(n, a) / root(n, b) $]
#v(20pt)
#only("2-")[Beispiel: $ root(4, 16/81) = root(4, 16) / root(4, 81) = 2/3 $]
#only("1")[
#voiceover("Ähnlich ist die n-te Wurzel eines Quotienten gleich dem Quotienten der n-ten Wurzeln. Das bedeutet, die n-te Wurzel von a geteilt durch b ist gleich die n-te Wurzel von a geteilt durch die n-te Wurzel von b.")
]
#only("2")[
#voiceover("Zum Beispiel ist die vierte Wurzel von 16 geteilt durch 81 gleich der vierten Wurzel von 16 geteilt durch die vierte Wurzel von 81, was 2 geteilt durch 3 ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Warum das funktioniert 🤔]
#v(40pt)
#only("1-")[Erinnere dich: $ root(n, a) = x $ bedeutet $ x^n = a $]
#v(20pt)
#only("2-")[Für Produkte: $ (root(n, a) dot root(n, b))^n = root(n, a)^n dot root(n, b)^n = a dot b $]
#v(20pt)
#only("3-")[Für Quotienten: $ (root(n, a) / root(n, b))^n = root(n, a)^n / root(n, b)^n = a/b $]
#only("1")[
#voiceover("Warum funktionieren diese Eigenschaften? Erinnere dich, die n-te Wurzel von a ist definiert als die Zahl x, sodass x hoch n gleich a ist.")
]
#only("2")[
#voiceover("Für Produkte, wenn wir die n-te Wurzel von a mal die n-te Wurzel von b nehmen und dies hoch n nehmen, erhalten wir a mal b, genauso wie wenn wir die n-te Wurzel des Produkts a mal b nehmen würden.")
]
#only("3")[
#voiceover("Ähnlich ist es bei Quotienten: Wenn wir die n-te Wurzel von a geteilt durch die n-te Wurzel von b nehmen und dies hoch n nehmen, erhalten wir a geteilt durch b, genauso wie wenn wir die n-te Wurzel des Quotienten a geteilt durch b nehmen würden.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[$ root(n, a dot b) = root(n, a) dot root(n, b) $ 🍎🍌]
#v(20pt)
#only("2-")[$ root(n, a/b) = root(n, a) / root(n, b) $ 🍕➗]
#v(20pt)
#only("3-")[Diese Eigenschaften folgen aus der Definition der n-ten Wurzeln 📏]
#only("1")[
#voiceover("Zusammenfassend ist die n-te Wurzel eines Produkts das Produkt der n-ten Wurzeln.")
]
#only("2")[
#voiceover("Und die n-te Wurzel eines Quotienten ist der Quotient der n-ten Wurzeln.")
]
#only("3")[
#voiceover("Diese Eigenschaften folgen direkt aus der Definition der n-ten Wurzeln. Das Verständnis dieser Eigenschaften kann die Arbeit mit n-ten Wurzeln erheblich vereinfachen.")
]
]