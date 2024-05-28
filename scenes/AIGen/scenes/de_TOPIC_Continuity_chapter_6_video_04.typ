#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rechenregeln für stetige Funktionen 🧮]
#v(40pt)
#only("1-")[- Summenregel: $lim_(x->a) (f(x) + g(x)) = lim_(x->a) f(x) + lim_(x->a) g(x)$]
#v(20pt)
#only("2-")[- Produktregel: $lim_(x->a) (f(x) dot g(x)) = lim_(x->a) f(x) dot lim_(x->a) g(x)$]
#v(20pt)
#only("3-")[- Quotientenregel: $lim_(x->a) (f(x) / g(x)) = lim_(x->a) f(x) / lim_(x->a) g(x)$, falls $lim_(x->a) g(x) != 0$]

#only("1")[
#voiceover("Stetige Funktionen folgen bestimmten Rechenregeln. Zuerst gibt es die Summenregel. Sie besagt, dass der Limes einer Summe gleich der Summe der Limites ist.")
]
#only("2")[
#voiceover("Als nächstes haben wir die Produktregel. Sie besagt, dass der Limes eines Produkts gleich dem Produkt der Limites ist.")
]
#only("3")[
#voiceover("Schließlich gibt es die Quotientenregel. Sie besagt, dass der Limes eines Quotienten gleich dem Quotienten der Limites ist, vorausgesetzt, dass der Limes des Nenners nicht null ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 📝]
#v(40pt)
#only("1-")[Wenn $f(x) = x^2$ und $g(x) = 2x$ ist, finde $lim_(x -> 2) (f(x) + g(x))$.]
#v(20pt)
#only("2-")[Lösung: $lim_(x -> 2) (x^2) + lim_(x -> 2) (2x) = 2^2 + 2 dot 2 = 4 + 4 = 8$]

#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Wenn f von x gleich x Quadrat und g von x gleich 2x ist, wollen wir den Limes finden, wenn x gegen 2 strebt, von f von x plus g von x.")
]
#only("2")[
#voiceover("Um dies zu lösen, wenden wir die Summenregel an. Der Limes von x Quadrat, wenn x gegen 2 strebt, plus der Limes von 2x, wenn x gegen 2 strebt, ergibt 2 Quadrat plus 2 mal 2, was sich zu 4 plus 4, also 8, vereinfacht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bedeutung der Stetigkeit 🌉]
#v(40pt)
#only("1-")[- Stetigkeit sorgt für sanfte Übergänge 🎢]
#v(20pt)
#only("2-")[- Wichtig in Physik, Ingenieurwesen und anderen Bereichen 🌍]
#v(20pt)
#only("3-")[- Ermöglicht vorhersehbares Verhalten und Stabilität 📈]

#only("1")[
#voiceover("Stetigkeit ist eine entscheidende Eigenschaft, da sie für sanfte Übergänge sorgt. Es gibt keine plötzlichen Sprünge oder Unterbrechungen in der Funktion.")
]
#only("2")[
#voiceover("Dies ist in vielen Bereichen wichtig, wie z.B. in der Physik und im Ingenieurwesen, wo sanfte Übergänge notwendig sind, damit Systeme ordnungsgemäß funktionieren.")
]
#only("3")[
#voiceover("Stetigkeit ermöglicht vorhersehbares Verhalten und Stabilität in diesen Systemen. Deshalb ist das Verständnis der Rechenregeln für stetige Funktionen so wertvoll.")
]
]