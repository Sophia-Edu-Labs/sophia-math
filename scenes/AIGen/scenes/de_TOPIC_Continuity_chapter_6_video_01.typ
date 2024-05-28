#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rechenregeln]
#v(40pt)
#only("1-")[- Stetige Funktionen folgen bestimmten Regeln]
#v(20pt)
#only("2-")[- Beispiele: Summenregel, Produktregel, Quotientenregel]
#only("1")[
#voiceover("Stetige Funktionen folgen bestimmten Rechenregeln, die die Arbeit mit ihnen erleichtern.")
]
#only("2")[
#voiceover("Einige Beispiele für diese Regeln sind die Summenregel, die Produktregel und die Quotientenregel.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summenregel]
#v(40pt)
#only("1-")[Wenn $f$ und $g$ stetig bei $a$ sind, dann:]
#v(20pt)
#only("2-")[$ lim_(x->a) (f(x) + g(x)) = lim_(x->a) f(x) + lim_(x->a) g(x) $]
#v(20pt)
#only("3-")[Mit anderen Worten: Der Limes einer Summe ist die Summe der Limes ➕]
#only("1")[
#voiceover("Beginnen wir mit der Summenregel. Wenn f und g stetige Funktionen bei einem Punkt a sind, dann...")
]
#only("2")[
#voiceover("ist der Limes von f von x plus g von x, wenn x sich a nähert, gleich dem Limes von f von x, wenn x sich a nähert, plus dem Limes von g von x, wenn x sich a nähert.")
]
#only("3")[
#voiceover("Mit anderen Worten, der Limes einer Summe ist die Summe der Limes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Produktregel]
#v(40pt)
#only("1-")[Wenn $f$ und $g$ stetig bei $a$ sind, dann:]
#v(20pt)
#only("2-")[$ lim_(x->a) (f(x) g(x)) = lim_(x->a) f(x) lim_(x->a) g(x) $]
#v(20pt)
#only("3-")[Mit anderen Worten: Der Limes eines Produkts ist das Produkt der Limes ✖]
#only("1")[
#voiceover("Ähnlich besagt die Produktregel, dass wenn f und g stetig bei a sind, dann...")
]
#only("2")[
#voiceover("ist der Limes von f von x mal g von x, wenn x sich a nähert, gleich dem Limes von f von x, wenn x sich a nähert, mal dem Limes von g von x, wenn x sich a nähert.")
]
#only("3")[
#voiceover("Mit anderen Worten, der Limes eines Produkts ist das Produkt der Limes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Quotientenregel]
#v(40pt)
#only("1-")[Wenn $f$ und $g$ stetig bei $a$ sind, und $lim_(x->a) g(x) != 0$, dann:]
#v(20pt)
#only("2-")[$ lim_(x->a) (f(x) / g(x)) = lim_(x->a) f(x) / lim_(x->a) g(x) $]
#v(20pt)
#only("3-")[Mit anderen Worten: Der Limes eines Quotienten ist der Quotient der Limes ➗]
#only("1")[
#voiceover("Schließlich die Quotientenregel. Wenn f und g stetig bei a sind und der Limes von g von x, wenn x sich a nähert, nicht null ist, dann...")
]
#only("2")[
#voiceover("ist der Limes von f von x geteilt durch g von x, wenn x sich a nähert, gleich dem Limes von f von x, wenn x sich a nähert, geteilt durch den Limes von g von x, wenn x sich a nähert.")
]
#only("3")[
#voiceover("Mit anderen Worten, der Limes eines Quotienten ist der Quotient der Limes, solange wir nicht durch null teilen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Summenregel: $ lim_(x->a) (f(x) + g(x)) = lim_(x->a) f(x) + lim_(x->a) g(x) $]
#v(20pt)
#only("2-")[- Produktregel: $ lim_(x->a) (f(x) g(x)) = lim_(x->a) f(x) lim_(x->a) g(x) $]
#v(20pt)
#only("3-")[- Quotientenregel: $ lim_(x->a) (f(x) / g(x)) = lim_(x->a) f(x) / lim_(x->a) g(x) $]
#only("1")[
#voiceover("Zusammenfassend besagt die Summenregel, dass der Limes einer Summe die Summe der Limes ist.")
]
#only("2")[
#voiceover("Die Produktregel besagt, dass der Limes eines Produkts das Produkt der Limes ist.")
]
#only("3")[
#voiceover("Und die Quotientenregel besagt, dass der Limes eines Quotienten der Quotient der Limes ist, vorausgesetzt, der Limes im Nenner ist nicht null.")
]
]