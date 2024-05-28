#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzen von Summen]
#v(40pt)
Was ist die Grenze einer Summe?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Die Summe der Grenzen]#only("2-")[#text(fill:green)[a) Die Summe der Grenzen]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Das Produkt der Grenzen]#only("3-")[#text(fill:red)[b) Das Produkt der Grenzen]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Die Differenz der Grenzen]#only("4-")[#text(fill:red)[c) Die Differenz der Grenzen]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Der Quotient der Grenzen]#only("5-")[#text(fill:red)[d) Der Quotient der Grenzen]]

#only("1")[#voiceover("Ausgezeichnete Arbeit! Du hast die richtige Antwort gewählt.")]
#only("2")[#voiceover("Die Grenze einer Summe ist tatsächlich die Summe der Grenzen. Lass uns sehen, warum das so ist.")]
#only("3")[#voiceover("Das Produkt der Grenzen ist nicht die richtige Antwort. Denke daran, dass wir hier mit einer Summe zu tun haben, nicht mit einem Produkt.")]
#only("4")[#voiceover("Auch die Differenz der Grenzen ist falsch. Wir subtrahieren die Grenzen nicht.")]
#only("5")[#voiceover("Und der Quotient der Grenzen ist ebenfalls nicht richtig. Wir teilen die Grenzen nicht.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beweis]
#v(40pt)
Lass uns beweisen, dass die Grenze einer Summe die Summe der Grenzen ist:
#v(20pt)
#only("1-")[Sei $f(x)$ und $g(x)$ zwei Funktionen mit den Grenzen $L$ und $M$ respektive, wenn $x -> a$.]
#v(20pt)
#only("2-")[Dann, $lim_(x->a) (f(x) + g(x))$]
#v(20pt)
#only("3-")[$= lim_(x->a) f(x) + lim_(x->a) g(x)$]
#v(20pt)
#only("4-")[$= L + M$]
#v(20pt)
#only("5-")[Somit ist die Grenze der Summe die Summe der Grenzen. ✅]

#only("1")[#voiceover("Um dies zu beweisen, betrachten wir zwei Funktionen f von x und g von x, die jeweils die Grenzen L und M haben, wenn x sich a nähert.")]
#only("2")[#voiceover("Wir wollen die Grenze der Summe dieser Funktionen finden, wenn x sich a nähert.")]
#only("3")[#voiceover("Nach den Eigenschaften der Grenzen ist dies gleich der Grenze von f von x, wenn x sich a nähert, plus der Grenze von g von x, wenn x sich a nähert.")]
#only("4")[#voiceover("Und das ist einfach L plus M, die Summe der einzelnen Grenzen.")]
#only("5")[#voiceover("Daher haben wir bewiesen, dass die Grenze einer Summe tatsächlich die Summe der Grenzen ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
Schauen wir uns ein Beispiel an:
#v(20pt)
#only("1-")[Finde $lim_(x->2) (x^2 + 3x)$.]
#v(20pt)
#only("2-")[$lim_(x->2) (x^2 + 3x)$]
#v(20pt)
#only("3-")[$= lim_(x->2) (x^2) + lim_(x->2) (3x)$]
#v(20pt)
#only("4-")[$= 2^2 + 3*2$]
#v(20pt)
#only("5-")[$= 4 + 6 = 10$]

#only("1")[#voiceover("Nun, lass uns dies auf ein Beispiel anwenden. Wir wollen die Grenze von x Quadrat plus 3x finden, wenn x sich 2 nähert.")]
#only("2")[#voiceover("Wir beginnen mit der Grenze der Summe.")]
#only("3")[#voiceover("Nach unserer Regel ist dies gleich der Grenze von x Quadrat, wenn x sich 2 nähert, plus der Grenze von 3x, wenn x sich 2 nähert.")]
#only("4")[#voiceover("Wenn wir jede Grenze auswerten, erhalten wir 2 Quadrat, also 4, plus 3 mal 2, was 6 ergibt.")]
#only("5")[#voiceover("Wenn wir diese zusammenzählen, erhalten wir eine endgültige Antwort von 10. Und so wendet man die Regel an, dass die Grenze einer Summe die Summe der Grenzen ist.")]
]