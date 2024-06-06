#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften der n-ten Wurzeln 🌟]
#v(40pt)
#only("1-")[- Produktregel: $root(n, a b) = root(n, a) root(n, b)$]
#v(20pt)
#only("2-")[- Quotientenregel: $root(n, a/b) = root(n, a) / root(n, b)$]
#only("1")[
#voiceover("Lass uns schnell die wichtigen Eigenschaften der n-ten Wurzeln rekapitulieren. Zuerst haben wir die Produktregel: Die n-te Wurzel eines Produkts ist gleich dem Produkt der n-ten Wurzeln.")
]
#only("2")[
#voiceover("Zweitens haben wir die Quotientenregel: Die n-te Wurzel eines Quotienten ist gleich dem Quotienten der n-ten Wurzeln.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 📝]
#v(40pt)
#only("1-")[Betrachte $root(3, 8 8 27)$]
#v(20pt)
#only("2-")[Verwendung der Produktregel:]
#v(10pt)
#only("2-")[$root(3, 8 8 27) = root(3, 8) root(3, 8) root(3, 27)$]
#v(10pt)
#only("3-")[$= 2 2 3 = 6$]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Betrachte die dritte Wurzel des Produkts 8 mal 8 mal 27.")
]
#only("2")[
#voiceover("Mit der Produktregel können wir dies als das Produkt der dritten Wurzeln der einzelnen Faktoren umschreiben.")
]
#only("3")[
#voiceover("Die dritte Wurzel von 8 ist 2, und die dritte Wurzel von 27 ist 3. Das Ergebnis ist also 2 mal 2 mal 3, was 6 ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bedeutung 🎯]
#v(40pt)
#only("1-")[- Komplexe Ausdrücke vereinfachen]
#v(20pt)
#only("2-")[- Gleichungen mit n-ten Wurzeln lösen]
#v(20pt)
#only("3-")[- Das Verhalten von n-ten Wurzelfunktionen verstehen]
#only("1")[
#voiceover("Diese Eigenschaften sind wichtig, weil sie uns ermöglichen, komplexe Ausdrücke mit n-ten Wurzeln zu vereinfachen.")
]
#only("2")[
#voiceover("Sie helfen uns auch, Gleichungen zu lösen, die n-te Wurzeln enthalten.")
]
#only("3")[
#voiceover("Darüber hinaus gibt uns das Verständnis dieser Eigenschaften Einblicke in das Verhalten von Funktionen, die n-te Wurzeln enthalten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🔍]
#v(40pt)
#only("1-")[- Produktregel: $root(n, a b) = root(n, a) root(n, b)$ 🍎🍌]
#v(20pt)
#only("2-")[- Quotientenregel: $root(n, a/b) = root(n, a) / root(n, b)$ 🍕🍰]
#v(20pt)
#only("3-")[- Schlüssel zum Vereinfachen und Lösen von n-Wurzel-Problemen 🔑]
#only("1")[
#voiceover("Zusammenfassend, erinnere Dich an die Produktregel: Die n-te Wurzel eines Produkts ist gleich dem Produkt der n-ten Wurzeln.")
]
#only("2")[
#voiceover("Und vergiss nicht die Quotientenregel: Die n-te Wurzel eines Quotienten ist gleich dem Quotienten der n-ten Wurzeln.")
]
#only("3")[
#voiceover("Diese Eigenschaften sind Deine Schlüsselwerkzeuge zum Vereinfachen und Lösen von Problemen mit n-ten Wurzeln.")
]
]