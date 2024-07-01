#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Was ist eine Matrix?]
#v(40pt)

#only("-1")[a) Eine einzelne Zahl]#only("2-")[#text(fill:red)[a) Eine einzelne Zahl]]
#v(10pt)
#only("-2")[b) Eine Reihe von Zahlen]#only("3-")[#text(fill:red)[b) Eine Reihe von Zahlen]]
#v(10pt)
#only("-3")[c) Ein rechteckiges Array von Zahlen]#only("4-")[#text(fill:green)[c) Ein rechteckiges Array von Zahlen]]
#v(10pt)
#only("-4")[d) Keine der oben genannten]#only("5-")[#text(fill:red)[d) Keine der oben genannten]]

#v(40pt)

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns jede Option durchgehen, um zu verstehen, warum c die richtige Antwort ist.")]

#only("2")[#voiceover("Option a, eine einzelne Zahl, ist falsch. Obwohl eine Matrix Zahlen enthalten kann, ist sie nicht auf eine einzelne Zahl beschränkt. Eine einzelne Zahl wird als Skalar bezeichnet.")]

#only("3")[#voiceover("Option b, eine Reihe von Zahlen, ist ebenfalls falsch. Obwohl eine Matrix Reihen von Zahlen enthalten kann, ist sie nicht auf eine einzige Reihe beschränkt. Eine einzelne Reihe von Zahlen wird typischerweise als Zeilenvektor bezeichnet.")]

#only("4")[#voiceover("Option c, ein rechteckiges Array von Zahlen, ist die richtige Antwort! Eine Matrix ist tatsächlich eine rechteckige Anordnung von Zahlen, die in Zeilen und Spalten organisiert sind.")]

#only("5")[#voiceover("Option d, keine der oben genannten, ist falsch, weil wir unsere richtige Antwort in Option c gefunden haben.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix: Ein genauerer Blick]
#v(20pt)

#only("1-")[Eine Matrix ist ein rechteckiges Array von Zahlen, die in Zeilen und Spalten angeordnet sind.]
#v(20pt)

#only("2-")[Beispiel einer 2x3-Matrix:]
#v(10pt)
#only("2-")[$ A = mat(1, 2, 3; 4, 5, 6) $]
#v(20pt)

#only("3-")[- Zeilen: horizontale Linien von Zahlen ↔️]
#v(10pt)
#only("4-")[- Spalten: vertikale Linien von Zahlen ↕️]
#v(10pt)
#only("5-")[- Elemente: einzelne Zahlen in der Matrix 🔢]

#only("1")[#voiceover("Nun, lass uns genauer betrachten, was eine Matrix eigentlich ist.")]

#only("2")[#voiceover("Hier ist ein Beispiel einer Matrix. Dies ist eine 2 mal 3 Matrix, was bedeutet, dass sie 2 Zeilen und 3 Spalten hat. Wir schreiben Matrizen oft mit Großbuchstaben, also nennen wir diese Matrix A.")]

#only("3")[#voiceover("Die Zeilen einer Matrix sind die horizontalen Linien von Zahlen. In diesem Fall haben wir zwei Zeilen: 1, 2, 3 und 4, 5, 6.")]

#only("4")[#voiceover("Die Spalten sind die vertikalen Linien von Zahlen. Hier haben wir drei Spalten: 1 und 4, 2 und 5, und 3 und 6.")]

#only("5")[#voiceover("Jede einzelne Zahl in der Matrix wird als Element bezeichnet. Also sind 1, 2, 3, 4, 5 und 6 alle Elemente dieser Matrix.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum Matrizen wichtig sind]
#v(20pt)

#only("1-")[Matrizen sind mächtige Werkzeuge in der Mathematik und haben viele Anwendungen:]
#v(20pt)

#only("2-")[- Lösen von linearen Gleichungssystemen 📊]
#v(10pt)
#only("3-")[- Darstellung und Transformation von Daten 🔄]
#v(10pt)
#only("4-")[- Computergrafik und 3D-Modellierung 🖥️]
#v(10pt)
#only("5-")[- Maschinelles Lernen und KI-Algorithmen 🤖]

#only("1")[#voiceover("Du fragst dich vielleicht, warum Matrizen wichtig sind. Nun, sie sind unglaublich nützlich in vielen Bereichen der Mathematik und in realen Anwendungen.")]

#only("2")[#voiceover("Matrizen sind entscheidend für das effiziente Lösen von linearen Gleichungssystemen. Sie ermöglichen es uns, mehrere Gleichungen kompakt darzustellen und gleichzeitig zu lösen.")]

#only("3")[#voiceover("In der Datenwissenschaft werden Matrizen verwendet, um große Datensätze darzustellen und zu transformieren. Dies ist besonders nützlich beim Umgang mit multidimensionalen Daten.")]

#only("4")[#voiceover("In der Computergrafik werden Matrizen verwendet, um Transformationen wie Rotation, Skalierung und Translation in der 3D-Modellierung und Animation durchzuführen.")]

#only("5")[#voiceover("Matrizen spielen auch eine grundlegende Rolle in Algorithmen des maschinellen Lernens und der künstlichen Intelligenz, insbesondere in neuronalen Netzwerken und Deep-Learning-Modellen.")]
]