#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lass uns die wichtigsten Punkte zu den Grenzwerten von Summen und Produkten zusammenfassen.")
]
#text(size: 30pt, weight: "bold")[Grenzwerte von Summen und Produkten]
// Der Titel "Grenzwerte von Summen und Produkten" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Der Grenzwert einer Summe ist gleich der Summe der Grenzwerte. In mathematischer Notation bedeutet dies, dass der Grenzwert, wenn x gegen a strebt, von f von x plus g von x gleich dem Grenzwert ist, wenn x gegen a strebt, von f von x plus dem Grenzwert, wenn x gegen a strebt, von g von x.")
]
#only("2-")[
$ lim_(x->a) ( f(x) + g(x) ) = lim_(x->a) f(x) + lim_(x->a) g(x) $
// Die Formel für den Grenzwert einer Summe wird ab Folie 2 angezeigt
]
#v(40pt)
#only("3")[
#voiceover("Ähnlich ist der Grenzwert eines Produkts gleich dem Produkt der Grenzwerte. Das bedeutet, dass der Grenzwert, wenn x gegen a strebt, von f von x mal g von x gleich dem Grenzwert ist, wenn x gegen a strebt, von f von x mal dem Grenzwert, wenn x gegen a strebt, von g von x.")
]
#only("3-")[
$ lim_(x->a) ( f(x) g(x) ) = lim_(x->a) f(x) lim_(x->a) g(x) $
// Die Formel für den Grenzwert eines Produkts wird ab Folie 3 angezeigt
]
]

#slide()[
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an, um diese Konzepte zu veranschaulichen.")
]
#text(size: 30pt, weight: "bold")[Beispiel]
// Der Titel "Beispiel" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Betrachte den Grenzwert, wenn x gegen 3 strebt, von x Quadrat plus 2 mal x.")
]
#only("2-")[
$ lim_(x->3) ( x^2 + 2x ) $
// Das Beispiel für den Grenzwert wird ab Folie 2 angezeigt
]
#v(40pt)
#only("3")[
#voiceover("Mit der Regel für den Grenzwert einer Summe können wir dies in den Grenzwert, wenn x gegen 3 strebt, von x Quadrat plus den Grenzwert, wenn x gegen 3 strebt, von 2 mal x aufteilen.")
]
#only("3-")[
$ = lim_(x->3) x^2 + lim_(x->3) 2x $
// Der Grenzwert wird ab Folie 3 in die Summe von zwei Grenzwerten aufgeteilt
]
#v(40pt)
#only("4")[
#voiceover("Nun, unter Anwendung der Regel für den Grenzwert eines Produkts auf den zweiten Term, erhalten wir den Grenzwert, wenn x gegen 3 strebt, von x Quadrat plus 2 mal den Grenzwert, wenn x gegen 3 strebt, von x.")
]
#only("4-")[
$ = lim_(x->3) x^2 + 2 lim_(x->3) x $
// Die Regel für den Grenzwert eines Produkts wird ab Folie 4 auf den zweiten Term angewendet
]
#v(40pt)
#only("5")[
#voiceover("Diese Grenzwerte ausgewertet, erhalten wir 3 Quadrat, was 9 ist, plus 2 mal 3, was 6 ist. Also ist die endgültige Antwort 15.")
]
#only("5-")[
$ = 3^2 + 2 3 = 9 + 6 = 15 $
// Die Grenzwerte werden ab Folie 5 ausgewertet, um die endgültige Antwort zu erhalten
]
]

#slide()[
#only("1")[
#voiceover("Zusammenfassend die wichtigsten Punkte...")
]
#text(size: 30pt, weight: "bold")[Zusammenfassung]
// Der Titel "Zusammenfassung" wird auf dieser Folie angezeigt
#v(40pt)
#only("2-")[
- Grenzwert einer Summe 🧮➕: $lim_(x->a) ( f(x) + g(x) ) = lim_(x->a) f(x) + lim_(x->a) g(x)$
// Die Regel für den Grenzwert einer Summe wird ab Folie 2 zusammengefasst
]
#v(40pt)
#only("3-")[
- Grenzwert eines Produkts 🧮✖: $lim_(x->a) ( f(x) g(x) ) = lim_(x->a) f(x) lim_(x->a) g(x)$
// Die Regel für den Grenzwert eines Produkts wird ab Folie 3 zusammengefasst
]
#v(40pt)
#only("4")[
#voiceover("Diese Regeln ermöglichen es uns, komplexe Grenzwerte in einfachere zu zerlegen, die leichter zu bewerten sind. Denke daran, diese Regeln Schritt für Schritt anzuwenden, um den Grenzwert zu vereinfachen und die endgültige Antwort zu erreichen.")
]
]