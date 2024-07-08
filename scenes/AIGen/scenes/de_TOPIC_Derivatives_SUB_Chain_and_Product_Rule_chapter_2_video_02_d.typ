#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Differenzieren von $f(x) = x^2 (3x^2 + 2x + 1)^5$]
#v(40pt)

Welche Regeln müssen wir anwenden?

#v(20pt)
#only("-1")[a) Nur Kettenregel]#only("2-")[#text(fill:red)[a) Nur Kettenregel]]
#v(10pt)
#only("-2")[b) Nur Produktregel]#only("3-")[#text(fill:red)[b) Nur Produktregel]]
#v(10pt)
#only("-3")[c) Sowohl Kettenregel als auch Produktregel]#only("4-")[#text(fill:green)[c) Sowohl Kettenregel als auch Produktregel]]
#v(10pt)
#only("-4")[d) Keine der beiden]#only("5-")[#text(fill:red)[d) Keine der beiden]]

#only("1")[#voiceover("Leider war das nicht korrekt. Lass uns trotzdem aufschlüsseln, warum wir sowohl die Kettenregel als auch die Produktregel benötigen, um diese Funktion zu differenzieren.")]

#only("2")[#voiceover("Option a, nur Kettenregel, ist falsch. Obwohl wir die Kettenregel benötigen, reicht sie allein nicht aus.")]

#only("3")[#voiceover("Option b, nur Produktregel, ist ebenfalls falsch. Die Produktregel ist notwendig, aber wir brauchen mehr als nur das.")]

#only("4")[#voiceover("Option c ist korrekt. Wir benötigen sowohl die Kettenregel als auch die Produktregel. Lass uns auf der nächsten Folie sehen, warum.")]

#only("5")[#voiceover("Option d, keine der beiden, ist falsch. Wir brauchen definitiv Regeln, um diese komplexe Funktion zu differenzieren.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum beide Regeln?]
#v(40pt)

#only("1-")[$ f(x) = x^2 (3x^2 + 2x + 1)^5 $]
#v(20pt)
#only("2-")[1️⃣ Produktregel: $ f(x) = u dot v $]
#v(10pt)
#only("3-")[   Wo $ u = x^2 $ und $ v = (3x^2 + 2x + 1)^5 $]
#v(20pt)
#only("4-")[2️⃣ Kettenregel: Für $ v = (3x^2 + 2x + 1)^5 $]

#only("1")[#voiceover("Schauen wir uns unsere Funktion f von x an, die x Quadrat mal die Menge 3 x Quadrat plus 2 x plus 1, alles hoch fünf, ist.")]

#only("2")[#voiceover("Wir benötigen die Produktregel, weil unsere Funktion ein Produkt aus zwei Teilen ist.")]

#only("3")[#voiceover("Wir können den ersten Teil u nennen, was x Quadrat ist, und den zweiten Teil v, was die Menge 3 x Quadrat plus 2 x plus 1, alles hoch fünf, ist.")]

#only("4")[#voiceover("Für den zweiten Teil, v, benötigen wir die Kettenregel, weil es eine zusammengesetzte Funktion ist - wir haben die fünfte Potenz einer anderen Funktion.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Anwenden der Regeln]
#v(40pt)

#only("1-")[Produktregel: $ f'(x) = u' dot v + u dot v' $]
#v(20pt)
#only("2-")[$ = (2x)(3x^2 + 2x + 1)^5 + x^2 dot v' $]
#v(20pt)
#only("3-")[Kettenregel für $v'$:]
#v(10pt)
#only("4-")[$ v' = 5(3x^2 + 2x + 1)^4 dot (6x + 2) $]

#only("1")[#voiceover("Nun, lass uns diese Regeln anwenden. Die Produktregel besagt, dass die Ableitung von f gleich u Strich mal v plus u mal v Strich ist.")]

#only("2")[#voiceover("Die Ableitung von u, was x Quadrat ist, ist 2x. Also haben wir 2x mal unser v, plus x Quadrat mal v Strich.")]

#only("3")[#voiceover("Jetzt müssen wir v Strich finden, und hier kommt die Kettenregel ins Spiel.")]

#only("4")[#voiceover("Nach der Kettenregel ist v Strich gleich 5 mal die Menge 3 x Quadrat plus 2 x plus 1 hoch vier, mal die Ableitung der inneren Funktion, die 6 x plus 2 ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endergebnis]
#v(40pt)

#only("1-")[Alles zusammengefügt:]
#v(20pt)
#only("2-")[$ f'(x) = 2x(3x^2 + 2x + 1)^5 + $]
#only("3-")[$ x^2 dot 5(3x^2 + 2x + 1)^4 dot (6x + 2) $]
#v(40pt)
#only("4-")[🎉 Beide Regeln waren notwendig!]

#only("1")[#voiceover("Nun, lass uns alles zusammenfügen, um unser Endergebnis zu erhalten.")]

#only("2")[#voiceover("Die Ableitung von f ist gleich 2x mal die Menge 3 x Quadrat plus 2 x plus 1 hoch fünf,")]

#only("3")[#voiceover("plus x Quadrat mal 5 mal die Menge 3 x Quadrat plus 2 x plus 1 hoch vier mal die Menge 6 x plus 2.")]

#only("4")[#voiceover("Wie wir sehen können, waren sowohl die Produktregel als auch die Kettenregel notwendig, um diese Funktion zu differenzieren. Die Produktregel half uns, die Multiplikation von zwei komplexen Teilen zu handhaben, während die Kettenregel entscheidend für die Differenzierung der Potenzfunktion war. Großartige Arbeit beim Erkennen der Notwendigkeit beider Regeln!")]
]