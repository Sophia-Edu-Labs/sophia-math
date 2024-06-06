#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Integral von $x^4$]
#v(40pt)
#only("1-")[- Finde $∫x^4 \, \mathrm{d}x$]
#only("2-")[- Potenzregel: $∫x^n \, \mathrm{d}x = \frac{x^{n+1}}{n+1} + C$ für $n ≠ -1$]
#only("3-")[- Hier ist $n=4$, also $∫x^4 \, \mathrm{d}x = \frac{x^{4+1}}{4+1} + C$]
#only("4-")[- Vereinfache: $∫x^4 \, \mathrm{d}x = \frac{x^5}{5} + C$]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns Schritt für Schritt sehen, wie wir das lösen können.")
]
#only("2")[
#voiceover("Um das Integral von x hoch 4 zu finden, können wir die Potenzregel für Integrale verwenden. Sie besagt, dass das Integral von x hoch n gleich x hoch n plus 1, geteilt durch n plus 1, plus einer Konstante C ist. Dies gilt für alle n, die nicht gleich -1 sind.")
]
#only("3")[
#voiceover("In unserem Fall ist n gleich 4. Also können wir die Potenzregel direkt anwenden. Das Integral von x hoch 4 ist gleich x hoch 4 plus 1, also 5, geteilt durch 4 plus 1, also 5, plus eine Konstante C.")
]
#only("4")[
#voiceover("Wenn wir dies vereinfachen, erhalten wir, dass das Integral von x hoch 4 gleich x hoch 5 geteilt durch 5, plus eine Konstante C ist. Und das ist unsere endgültige Antwort!")
]
]