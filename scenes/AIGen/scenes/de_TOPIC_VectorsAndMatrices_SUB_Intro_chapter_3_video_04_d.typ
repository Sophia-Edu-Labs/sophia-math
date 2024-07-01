#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix-Definition]
#v(40pt)

#only("1-")[Welche der folgenden ist #text(weight: "bold")[keine] Matrix?]
#v(20pt)

#only("-1")[a) $mat(1, 2; 3, 4)$]#only("2-")[#text(fill:green)[a) $mat(1, 2; 3, 4)$]]
#v(10pt)
#only("-2")[b) $mat(5, 6, 7; 8, 9, 10)$]#only("3-")[#text(fill:green)[b) $mat(5, 6, 7; 8, 9, 10)$]]
#v(10pt)
#only("-3")[c) 5]#only("4-")[#text(fill:red)[c) 5]]
#v(10pt)
#only("-4")[d) $mat(2)$]#only("5-")[#text(fill:green)[d) $mat(2)$]]

#only("1")[#voiceover("Leider falsch. Lass uns jede Option durchgehen, um zu verstehen warum.")]

#only("2")[#voiceover("Option a ist tatsächlich eine Matrix. Es ist eine 2 mal 2 Matrix, was bedeutet, dass sie 2 Zeilen und 2 Spalten hat.")]

#only("3")[#voiceover("Option b ist auch eine Matrix. Diese ist eine 2 mal 3 Matrix, mit 2 Zeilen und 3 Spalten.")]

#only("4")[#voiceover("Option c, die nur die Zahl 5 ist, ist keine Matrix. Eine einzelne Zahl für sich ist ein Skalar, keine Matrix.")]

#only("5")[#voiceover("Option d ist ebenfalls eine Matrix. Es ist eine 1 mal 1 Matrix, die kleinste mögliche Matrixgröße.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix-Eigenschaften]
#v(40pt)

#only("1-")[Eine Matrix ist:] 
#v(20pt)
#only("2-")[- Ein rechteckiges Zahlenarray 📊]
#v(10pt)
#only("3-")[- Organisiert in Zeilen und Spalten 🔢]
#v(10pt)
#only("4-")[- Kann verschiedene Größen haben 📏]
#v(10pt)
#only("5-")[- Wird in vielen mathematischen Operationen verwendet ➗]

#only("1")[#voiceover("Nun, lass uns besprechen, was eine Matrix ausmacht.")]

#only("2")[#voiceover("Zunächst einmal ist eine Matrix ein rechteckiges Zahlenarray. Das bedeutet, dass die Elemente in einer gitterartigen Struktur angeordnet sind.")]

#only("3")[#voiceover("Diese Zahlen sind in Zeilen und Spalten organisiert. Die Anzahl der Zeilen und Spalten definiert die Größe oder Dimensionen der Matrix.")]

#only("4")[#voiceover("Matrizen können verschiedene Größen haben. Wir können 2 mal 2 Matrizen, 3 mal 4 Matrizen oder sogar 1 mal 1 Matrizen haben, wie wir auf der vorherigen Folie gesehen haben.")]

#only("5")[#voiceover("Matrizen sind unglaublich nützlich und werden in vielen mathematischen Operationen verwendet, besonders in der linearen Algebra, Computergrafik und Datenanalyse.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum 5 keine Matrix ist]
#v(40pt)

#only("1-")[5 ist:] 
#v(20pt)
#only("2-")[- Eine einzelne Zahl (Skalar) 🔢]
#v(10pt)
#only("3-")[- Nicht in Zeilen und Spalten angeordnet 🚫]
#v(10pt)
#only("4-")[- Hat keine Dimensionen wie eine Matrix 📏]

#only("1")[#voiceover("Lass uns darauf konzentrieren, warum 5, die richtige Antwort auf unsere Frage, keine Matrix ist.")]

#only("2")[#voiceover("5 ist eine einzelne Zahl, die wir in der Mathematik einen Skalar nennen. Skalare werden verwendet, um andere mathematische Objekte zu skalieren oder zu multiplizieren, aber sie sind keine Matrizen.")]

#only("3")[#voiceover("Im Gegensatz zu Matrizen ist 5 nicht in Zeilen und Spalten angeordnet. Es ist nur ein einzelner Wert ohne Struktur.")]

#only("4")[#voiceover("Matrizen haben Dimensionen, wie 2 mal 2 oder 3 mal 4. Die Zahl 5 hat solche Dimensionen nicht. Es ist nur ein einzelner Wert.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)

#only("1-")[Denke daran:] 
#v(20pt)
#only("2-")[- Matrizen sind rechteckige Arrays 🔲]
#v(10pt)
#only("3-")[- Einzelne Zahlen sind Skalare, keine Matrizen 🔢]
#v(10pt)
#only("4-")[- Selbst eine 1x1 Matrix ist anders als ein Skalar ≠]

#only("1")[#voiceover("Zum Abschluss fassen wir zusammen, was wir gelernt haben.")]

#only("2")[#voiceover("Denke immer daran, dass Matrizen rechteckige Arrays von Zahlen sind. Sie haben eine spezifische Struktur mit Zeilen und Spalten.")]

#only("3")[#voiceover("Einzelne Zahlen, wie 5 in unserem Beispiel, sind Skalare. Sie sind wichtig in der Mathematik, aber sie sind keine Matrizen.")]

#only("4")[#voiceover("Selbst eine 1 mal 1 Matrix, die nur eine Zahl enthält, ist anders als ein Skalar. Sie hat immer noch die Struktur einer Matrix, mit einer Zeile und einer Spalte. Diese Unterscheidungen zu verstehen, ist entscheidend in der linearen Algebra und vielen Bereichen der höheren Mathematik.")]
]