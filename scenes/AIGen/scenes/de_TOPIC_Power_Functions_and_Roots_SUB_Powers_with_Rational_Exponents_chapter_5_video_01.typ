#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Brüche mit rationalen Exponenten]
#v(40pt)
#only("1-")[- Wende den Exponenten auf Zähler und Nenner an 🔢]
#v(20pt)
#only("2-")[- Beispiel: $(a/b)^(m/n) = (a^(m/n))/(b^(m/n))$]
#only("1")[
#voiceover("Wenn wir mit rationalen Exponenten und Brüchen arbeiten, wenden wir den Exponenten sowohl auf den Zähler als auch auf den Nenner an.")
]
#only("2")[
#voiceover("Zum Beispiel, wenn wir einen Bruch a durch b haben, der mit der Potenz m durch n erhöht wird, ist das gleich a hoch m durch n, geteilt durch b hoch m durch n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Vereinfachung]
#v(40pt)
#only("1-")[1️⃣ Wende den Exponenten auf den Zähler an]
#v(20pt)
#only("2-")[2️⃣ Wende den Exponenten auf den Nenner an]
#v(20pt)
#only("3-")[3️⃣ Vereinfache den resultierenden Ausdruck]
#only("1")[
#voiceover("Um einen solchen Ausdruck zu vereinfachen, wenden wir zuerst den Exponenten auf den Zähler an.")
]
#only("2")[
#voiceover("Dann wenden wir denselben Exponenten auf den Nenner an.")
]
#only("3")[
#voiceover("Schließlich vereinfachen wir den resultierenden Ausdruck, wenn möglich.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Vereinfache $(4/9)^(1/2)$]
#v(40pt)
#only("1-")[1️⃣ Wende den Exponenten auf den Zähler an: $4^(1/2) = 2$]
#v(20pt)
#only("2-")[2️⃣ Wende den Exponenten auf den Nenner an: $9^(1/2) = 3$]
#v(20pt)
#only("3-")[3️⃣ Vereinfache: $(4/9)^(1/2) = 2/3$]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Um 4 durch 9, erhöht auf die Potenz von einem Halb, zu vereinfachen, wenden wir zuerst den Exponenten auf den Zähler an. 4 hoch ein Halb ist gleich 2.")
]
#only("2")[
#voiceover("Als nächstes wenden wir den Exponenten auf den Nenner an. 9 hoch ein Halb ist gleich 3.")
]
#only("3")[
#voiceover("Also vereinfacht sich 4 durch 9, erhöht auf die Potenz von einem Halb, zu 2 durch 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Brüche mit rationalen Exponenten: $(a/b)^(m/n)$]
#v(20pt)
#only("2-")[- Wende den Exponenten auf Zähler und Nenner an]
#v(20pt)
#only("3-")[- Vereinfache den resultierenden Ausdruck]
#only("1")[
#voiceover("Zusammenfassend, wenn wir einen Bruch haben, der mit einem rationalen Exponenten erhöht wird, wie a durch b hoch m durch n,")
]
#only("2")[
#voiceover("wenden wir den Exponenten sowohl auf den Zähler als auch auf den Nenner an,")
]
#only("3")[
#voiceover("und vereinfachen dann den resultierenden Ausdruck, wenn möglich.")
]
]