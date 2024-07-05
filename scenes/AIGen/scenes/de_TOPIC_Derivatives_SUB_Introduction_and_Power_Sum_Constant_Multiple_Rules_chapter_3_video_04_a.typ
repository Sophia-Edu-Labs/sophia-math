#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konstante Vielfache Regel]
#v(40pt)

#only("1-")[
$f(x) = 6x^4$
]

#v(20pt)

#only("2-")[
$f'(x) = 6 dot 4x^3 = 24x^3$
]

#v(20pt)

#only("3-")[
$f'(1) = 24 dot 1^3 = 24$
]

#only("1")[
#voiceover("Großartige Arbeit! Du hast die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit unserer Funktion f von x gleich 6 x hoch 4.")
]

#only("2")[
#voiceover("Um die Ableitung zu finden, wenden wir die Regel für konstante Vielfache an. Die Ableitung von x hoch 4 ist 4 x hoch 3, und wir multiplizieren dies mit der Konstante 6. Also ist f Strich von x gleich 6 mal 4 x hoch 3, was sich zu 24 x hoch 3 vereinfacht.")
]

#only("3")[
#voiceover("Nun müssen wir dies bei x gleich 1 auswerten. Wenn wir 1 für x einsetzen, erhalten wir 24 mal 1 hoch 3. Da 1 hoch 3 einfach 1 ist, ist unsere endgültige Antwort 24.")
]

#only("4")[
#voiceover("Und da hast Du es! Der Wert der Ableitung von f von x gleich 6 x hoch 4 bei x gleich 1 ist 24. Gut gemacht beim Lösen dieses Problems!")
]
]