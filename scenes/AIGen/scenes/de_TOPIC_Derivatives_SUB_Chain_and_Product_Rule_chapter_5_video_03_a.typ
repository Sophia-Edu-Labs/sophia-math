#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
#v(40pt)

#only("-1")[$ f(x) = (2x + 3)^5 $]
#v(20pt)
#only("2-")[$ u = 2x + 3 $]
#v(10pt)
#only("3-")[$ f(x) = u^5 $]
#v(20pt)
#only("4-")[$ f'(x) = 5u^4 dot dif u/dif x $]
#v(10pt)
#only("5-")[$ f'(x) = 5u^4 dot 2 $]
#v(10pt)
#only("6-")[$ f'(x) = 5(2x + 3)^4 dot 2 $]
#v(20pt)
#only("7-")[$ f'(2) = 5(2 dot 2 + 3)^4 dot 2 $]
#v(10pt)
#only("8-")[$ f'(2) = 5(7)^4 dot 2 = 16870 $]

#only("1")[
#voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Funktion f von x gleich zwei x plus drei, alles hoch fünf.")
]

#only("2")[
#voiceover("Um die Kettenregel anzuwenden, identifizieren wir zuerst die äußere und innere Funktion. Wir setzen u gleich zwei x plus drei.")
]

#only("3")[
#voiceover("Damit können wir unsere Funktion umschreiben als f von x gleich u hoch fünf.")
]

#only("4")[
#voiceover("Nun können wir die Kettenregel anwenden. Die Ableitung von f bezüglich x ist gleich fünf u hoch vier, multipliziert mit der Ableitung von u bezüglich x.")
]

#only("5")[
#voiceover("Die Ableitung von u bezüglich x ist einfach 2.")
]

#only("6")[
#voiceover("Setzen wir u gleich zwei x plus drei zurück ein, erhalten wir f Strich von x gleich fünf mal zwei x plus drei, alles hoch vier, mal zwei.")
]

#only("7")[
#voiceover("Um f Strich von 2 zu finden, setzen wir x gleich 2. Also, f Strich von 2 ist gleich fünf mal zwei mal zwei plus drei, alles hoch vier, mal zwei.")
]

#only("8")[
#voiceover("Vereinfacht ergibt das fünf mal sieben hoch vier, mal zwei, was sechzehntausendachthundertsiebzig ergibt.")
]
]