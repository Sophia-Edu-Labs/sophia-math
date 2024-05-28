#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzen von Summen und Produkten]
#v(40pt)
#only("1-")[- Ein Schlüsselkonzept in der Analysis 🧮]
#v(20pt)
#only("2-")[- Hilft, Grenzwerte einfacher zu berechnen 🙌]
#only("1")[
#voiceover("Heute besprechen wir ein Schlüsselkonzept in der Analysis: die Grenzen von Summen und Produkten. Das Verständnis dieser Idee kann Deine Berechnungen von Grenzwerten erheblich vereinfachen.")
]
#only("2")[
#voiceover("Anstatt zu versuchen, den Grenzwert eines komplexen Ausdrucks auf einmal zu finden, können wir ihn in kleinere, handlichere Teile zerlegen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert einer Summe 🧮➕]
#v(40pt)
#only("1-")[$ lim_(x->a) (f(x) + g(x)) = lim_(x->a) f(x) + lim_(x->a) g(x) $]
#v(20pt)
#only("2-")[Beispiel: $ lim_(x->2) (x^2 + 3x) = lim_(x->2) x^2 + lim_(x->2) 3x $]
#v(20pt)
#only("3-")[$ = 2^2 + 3 dot 2 = 4 + 6 = 10 $]
#only("1")[
#voiceover("Betrachten wir zunächst den Grenzwert einer Summe. Der Grenzwert einer Summe ist gleich der Summe der Grenzwerte. Mit anderen Worten, um den Grenzwert von f von x plus g von x zu finden, wenn x sich a nähert, können wir den Grenzwert von f von x, wenn x sich a nähert, plus den Grenzwert von g von x, wenn x sich a nähert, finden.")
]
#only("2")[
#voiceover("Zum Beispiel, finden wir den Grenzwert von x Quadrat plus 3x, wenn x sich 2 nähert. Wir können dies in den Grenzwert von x Quadrat, wenn x sich 2 nähert, plus den Grenzwert von 3x, wenn x sich 2 nähert, zerlegen.")
]
#only("3")[
#voiceover("Diese Grenzwerte auswertend, erhalten wir 2 Quadrat, was 4 ist, plus 3 mal 2, was 6 ist. Also ist der Grenzwert von x Quadrat plus 3x, wenn x sich 2 nähert, 10.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert eines Produkts 🧮✖]
#v(40pt)
#only("1-")[$ lim_(x->a) (f(x) dot g(x)) = lim_(x->a) f(x) dot lim_(x->a) g(x) $]
#v(20pt)
#only("2-")[Beispiel: $ lim_(x->1) (x^2 dot (2x + 1)) = lim_(x->1) x^2 dot lim_(x->1) (2x + 1) $]
#v(20pt)
#only("3-")[$ = 1^2 dot (2 dot 1 + 1) = 1 dot 3 = 3 $]
#only("1")[
#voiceover("Ähnlich ist der Grenzwert eines Produkts das Produkt der Grenzwerte. Um den Grenzwert von f von x mal g von x zu finden, wenn x sich a nähert, finden wir den Grenzwert von f von x, wenn x sich a nähert, und multiplizieren ihn mit dem Grenzwert von g von x, wenn x sich a nähert.")
]
#only("2")[
#voiceover("Versuchen wir ein Beispiel. Finde den Grenzwert von x Quadrat mal der Größe 2x plus 1, wenn x sich 1 nähert. Wir können dies als den Grenzwert von x Quadrat, wenn x sich 1 nähert, mal den Grenzwert von 2x plus 1, wenn x sich 1 nähert, umschreiben.")
]
#only("3")[
#voiceover("Diese Grenzwerte auswertend, erhalten wir 1 Quadrat, was 1 ist, mal 2 mal 1 plus 1, was 3 ist. Also ist der Grenzwert von x Quadrat mal 2x plus 1, wenn x sich 1 nähert, 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Grenzwert einer Summe = Summe der Grenzwerte ➕]
#v(20pt)
#only("2-")[- Grenzwert eines Produkts = Produkt der Grenzwerte ✖]
#v(20pt)
#only("3-")[- Vereinfacht komplexe Grenzwertberechnungen 🎉]
#only("1")[
#voiceover("Zusammenfassend ist der Grenzwert einer Summe die Summe der Grenzwerte,")
]
#only("2")[
#voiceover("und der Grenzwert eines Produkts ist das Produkt der Grenzwerte.")
]
#only("3")[
#voiceover("Indem Du Dir diese Regeln merkst, kannst Du komplexe Grenzwertberechnungen vereinfachen und mit Zuversicht angehen!")
]
]