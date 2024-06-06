#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#only("1")[
#voiceover("Lass uns rekapitulieren, was wir über n-te Wurzeln und ihre Anwendungen gelernt haben.")
]
#text(size: 30pt, weight: "bold")[Rekapitulation der n-ten Wurzeln]
// Der Titel "Rekapitulation der n-ten Wurzeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Die n-te Wurzel einer Zahl ist ein Wert, der, wenn er mit n potenziert wird, die ursprüngliche Zahl ergibt.")
]
#only("2-")[- n-te Wurzel: $root(n, a)$ so dass $root(n,a)^n = a$]
// Die Definition der n-ten Wurzel wird ab Folie 2 angezeigt
#v(40pt)
#only("3")[
#voiceover("n-te Wurzeln haben verschiedene Eigenschaften, wie zum Beispiel, dass die n-te Wurzel eines Produkts das Produkt der n-ten Wurzeln ist, und die n-te Wurzel eines Quotienten der Quotient der n-ten Wurzeln ist.")
]
#only("3-")[- Eigenschaften: $root(n, ab) = root(n,a) root(n,b)$, $root(n, a/b) = root(n,a) / root(n,b)$]
// Die Eigenschaften der n-ten Wurzeln werden ab Folie 3 angezeigt
#v(40pt)
#only("4")[
#voiceover("n-te Wurzeln werden in verschiedenen realen Anwendungen verwendet. Zum Beispiel wird in der Finanzwelt die n-te Wurzel verwendet, um den Zinssatz pro Periode zu berechnen, wenn der jährliche Zinssatz und die Anzahl der Zinsperioden bekannt sind.")
]
#only("4-")[- Anwendungen: 📈 Finanzen (Zinssätze), 🌍 Physik (Berechnungen)]
// Die Anwendungen der n-ten Wurzeln werden ab Folie 4 angezeigt
#v(40pt)
#only("5")[
#voiceover("In der Physik werden n-te Wurzeln in verschiedenen Gleichungen und Berechnungen verwendet, wie zum Beispiel bei der Berechnung der Schwingungsdauer eines Pendels oder bei der Bestimmung der Geschwindigkeit eines fallenden Objekts.")
]
]

#slide()[
#only("1")[
#voiceover("Hier ist ein Beispiel für die Verwendung von n-ten Wurzeln zur Berechnung des Zinssatzes pro Periode.")
]
#text(size: 30pt, weight: "bold")[Anwendungsbeispiel: Zinssätze]
// Der Titel "Anwendungsbeispiel: Zinssätze" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Angenommen, der jährliche Zinssatz beträgt 10% und die Zinsen werden monatlich kapitalisiert. Um den monatlichen Zinssatz zu berechnen, ermitteln wir die 12. Wurzel von 1,1, da es 12 Monate im Jahr gibt.")
]
#only("2-")[- Jährlicher Zinssatz: 10% (0,1), monatlich kapitalisiert (12 Mal pro Jahr)]
// Die gegebenen Informationen werden ab Folie 2 angezeigt
#v(40pt)
#only("3")[
#voiceover("Die Berechnung ist die 12. Wurzel von 1,1, was ungefähr 0,00797 oder etwa 0,8% pro Monat ergibt.")
]
#only("3-")[- Monatlicher Zinssatz: $root(12, 1.1) - 1 ≈ 0.00797$ oder ~0,8%]
// Die Berechnung und das Ergebnis werden ab Folie 3 angezeigt
#v(40pt)
#only("4")[
#voiceover("Durch die Verwendung der n-ten Wurzel können wir also den Zinssatz für jede Zinsperiode bestimmen, wenn der jährliche Zinssatz und die Anzahl der Perioden bekannt sind.")
]
]

#slide()[
#only("1")[
#voiceover("Zusammenfassend sind n-te Wurzeln ein grundlegendes Konzept in der Mathematik mit wichtigen Eigenschaften und Anwendungen.")
]
#text(size: 30pt, weight: "bold")[Zusammenfassung]
// Der Titel "Zusammenfassung" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Wir haben gesehen, dass die n-te Wurzel einer Zahl ein Wert ist, der, wenn er mit n potenziert wird, die ursprüngliche Zahl ergibt.")
]
#only("2-")[- n-te Wurzel: $root(n, a)$ so dass $root(n,a)^n = a$ 📏]
// Die Definition der n-ten Wurzel wird ab Folie 2 angezeigt
#v(40pt)
#only("3")[
#voiceover("Wir haben auch einige der wichtigsten Eigenschaften der n-ten Wurzeln untersucht, wie zum Beispiel die n-te Wurzel eines Produkts und die n-te Wurzel eines Quotienten.")
]
#only("3-")[- Eigenschaften: $root(n, ab) = root(n,a) root(n,b)$, $root(n, a/b) = root(n,a) / root(n,b)$ 🧮]
// Die Eigenschaften der n-ten Wurzeln werden ab Folie 3 angezeigt
#v(40pt)
#only("4")[
#voiceover("Schließlich haben wir gesehen, wie n-te Wurzeln in verschiedenen Bereichen angewendet werden, wie zum Beispiel in der Finanzwelt zur Berechnung von Zinssätzen und in der Physik für verschiedene Berechnungen.")
]
#only("4-")[- Anwendungen: 📈 Finanzen, 🌍 Physik 🔍]
// Die Anwendungen der n-ten Wurzeln werden ab Folie 4 angezeigt
#v(40pt)
#only("5")[
#voiceover("Das Verständnis von n-ten Wurzeln und deren Eigenschaften und Anwendungen ist entscheidend für viele Bereiche der Mathematik und Wissenschaft.")
]
]