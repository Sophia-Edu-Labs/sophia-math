#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche multiplizieren]
#v(40pt)
#only("1-")[- $6 dot 5/6$]
#v(20pt)
#only("2-")[- $6 dot 5/6 = 6/1 dot 5/6$]
#v(20pt)
#only("3-")[- $6/1 dot 5/6 = (6 dot 5)/(1 dot 6)$]
#v(20pt)
#only("4-")[- $(6 dot 5)/(1 dot 6) = 30/6$]
#v(20pt)
#only("5-")[- Die richtige Antwort ist $30/6$]
#v(20pt)
#only("1")[#voiceover("Großartig! Lass uns die Lösung Schritt für Schritt durchgehen.")]
#only("2")[#voiceover("Zuerst schreiben wir 6 als Bruch, also 6 durch 1. Also haben wir 6 mal 5 durch 6 gleich 6 durch 1 mal 5 durch 6.")]
#only("3")[#voiceover("Als nächstes multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also erhalten wir 6 mal 5 durch 1 mal 6.")]
#only("4")[#voiceover("Dies vereinfacht sich zu 30 durch 6.")]
#only("5")[#voiceover("Daher ist die richtige Antwort 30 durch 6.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiple-Choice-Optionen]
#v(40pt)
#only("-1")[a) $5/6$]#only("2-")[#text(fill:red)[a) $5/6$]]
#v(10pt)
#only("-2")[b) $10/6$]#only("3-")[#text(fill:red)[b) $10/6$]]
#v(10pt)
#only("-3")[c) $15/6$]#only("4-")[#text(fill:red)[c) $15/6$]]
#v(10pt)
#only("-4")[d) $30/6$]#only("5-")[#text(fill:green)[d) $30/6$]]
#v(40pt)
#only("1")[#voiceover("Lass uns die Multiple-Choice-Optionen überprüfen.")]
#only("2")[#voiceover("Option a, 5 durch 6, ist falsch. Dies ist nur der Bruch aus der Frage, nicht das Ergebnis der Multiplikation.")]
#only("3")[#voiceover("Option b, 10 durch 6, ist ebenfalls falsch. Dies ist nicht das korrekte Ergebnis der Multiplikation von 6 mit 5 durch 6.")]
#only("4")[#voiceover("Option c, 15 durch 6, ist auch falsch. Dies ist nicht das richtige Ergebnis.")]
#only("5")[#voiceover("Option d, 30 durch 6, ist richtig. Wie wir zuvor berechnet haben, ergibt die Multiplikation von 6 mit 5 durch 6 30 durch 6.")]
]