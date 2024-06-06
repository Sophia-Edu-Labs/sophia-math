#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung von $(4/9)^(1/2)$]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $2/3$]#only("2-")[#text(fill:green)[a) $2/3$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $4/9$]#only("3-")[#text(fill:red)[b) $4/9$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $1/2$]#only("4-")[#text(fill:red)[c) $1/2$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $3/2$]#only("5-")[#text(fill:red)[d) $3/2$]]
#v(40pt)

#only("1")[#voiceover("Das ist leider nicht korrekt. Die richtige Antwort ist a) 2/3. Lass uns Schritt für Schritt sehen, wie wir das vereinfachen können.")]
#only("2")[#voiceover("Der Ausdruck $(4/9)^(1/2)$ kann als Quadratwurzel von 4/9 umgeschrieben werden, da jede Zahl, die auf die Potenz 1/2 erhoben wird, dasselbe ist wie die Quadratwurzel dieser Zahl.")]
#only("3")[#voiceover("Um die Quadratwurzel eines Bruchs zu vereinfachen, können wir die Quadratwurzel des Zählers und des Nenners separat nehmen. Also ist die Quadratwurzel von 4/9 gleich der Quadratwurzel von 4 geteilt durch die Quadratwurzel von 9.")]
#only("4")[#voiceover("Die Quadratwurzel von 4 ist 2, und die Quadratwurzel von 9 ist 3. Daher vereinfacht sich $(4/9)^(1/2)$ zu 2/3.")]
#only("5")[#voiceover("Die korrekte Antwort ist also a) 2/3. Die Optionen b) 4/9, c) 1/2 und d) 3/2 sind alle falsche Vereinfachungen des ursprünglichen Ausdrucks.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt Lösung]
#v(40pt)
#only("1-")[$(4/9)^(1/2)$]
#v(20pt)
#only("2-")[= $root(2, 4/9)$]
#v(20pt)
#only("3-")[= $root(2,4) / root(2,9)$]
#v(20pt)
#only("4-")[= $2/3$ 🎉]

#only("1")[#voiceover("Wir beginnen mit dem ursprünglichen Ausdruck, $(4/9)^(1/2)$.")]
#only("2")[#voiceover("Dies kann als Quadratwurzel von 4/9 umgeschrieben werden, da jede Zahl, die auf die Potenz 1/2 erhoben wird, der Quadratwurzel dieser Zahl entspricht.")]
#only("3")[#voiceover("Um die Quadratwurzel eines Bruchs zu vereinfachen, können wir die Quadratwurzel des Zählers und des Nenners separat nehmen. Also wird dies zur Quadratwurzel von 4 geteilt durch die Quadratwurzel von 9.")]
#only("4")[#voiceover("Die Quadratwurzel von 4 ist 2, und die Quadratwurzel von 9 ist 3. Daher ist unsere endgültige vereinfachte Antwort 2/3.")]
]