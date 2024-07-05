#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzregel für Ableitungen]
#v(40pt)

#only("1-")[
$f(x) = 6x^5$
]

#v(20pt)

#only("2-")[
$f'(x) = 6 dot 5 dot x^(5-1)$
]

#v(20pt)

#only("3-")[
$f'(x) = 30x^4$
]

#only("1")[
#voiceover("Leider war das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#only("2")[
#voiceover("Wir beginnen mit der Funktion f von x gleich 6 x hoch fünf. Um die Ableitung zu finden, wenden wir die Potenzregel an. Diese Regel besagt, dass wir beim Differenzieren von x hoch n den Exponenten multiplizieren und die Potenz um 1 reduzieren. Also multiplizieren wir 6 mit 5 und reduzieren den Exponenten von x von 5 auf 4.")
]

#only("3")[
#voiceover("Wenn wir dies vereinfachen, erhalten wir das Endergebnis: f Strich von x gleich 30 x hoch vier. Dies ist tatsächlich die korrekte Ableitung unserer ursprünglichen Funktion.")
]

#only("4")[
#voiceover("Denke daran, dass die Potenzregel ein grundlegendes Werkzeug in der Analysis ist, das es uns ermöglicht, Polynomfunktionen schnell zu differenzieren. Übe diese Regel mit verschiedenen Exponenten, um dich damit vertrauter zu machen.")
]
]