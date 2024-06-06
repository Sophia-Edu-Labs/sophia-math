#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzeln negativer Zahlen]
#v(40pt)
#only("1-")[- n-te Wurzel: $root(n, a)$ wobei $a^(1/n) = root(n, a)$]
#v(20pt)
#only("2-")[- Beispiel: $root(2, 9) = 3$ da $3^2 = 9$]
#only("1")[
#voiceover("Eine n-te Wurzel einer Zahl a ist ein Wert, der, wenn er mit der Potenz n potenziert wird, a ergibt. Es wird als die n-te Wurzel von a bezeichnet.")
]
#only("2")[
#voiceover("Zum Beispiel ist die Quadratwurzel oder 2. Wurzel von 9 gleich 3, weil 3 zum Quadrat 9 ergibt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Gerade n-te Wurzeln]
#v(40pt)
#only("1-")[- Wenn n gerade ist, wie 2, 4, 6, ...]
#v(20pt)
#only("2-")[- Beispiel: $root(2, -4) = ?$]
#v(20pt)
#only("3-")[- Keine reelle Zahl zum Quadrat ergibt eine negative 🤔]
#only("1")[
#voiceover("Betrachten wir nun, was passiert, wenn wir versuchen, eine gerade n-te Wurzel, wie eine Quadratwurzel, 4. Wurzel, 6. Wurzel und so weiter, einer negativen Zahl zu finden.")
]
#only("2")[
#voiceover("Zum Beispiel, was ist die Quadratwurzel von -4?")
]
#only("3")[
#voiceover("Wir wissen, dass keine reelle Zahl, wenn sie quadriert wird, eine negative Zahl ergibt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Komplexe Zahlen]
#v(40pt)
#only("1-")[- Zahlen der Form $a + bi$, wobei $i = sqrt(-1)$]
#v(20pt)
#only("2-")[- Beispiel: $2 + 3i$, $-4 - 5i$]
#v(20pt)
#only("3-")[- Gerade n-te Wurzeln von negativen Zahlen sind komplex!]
#only("1")[
#voiceover("Hier kommen komplexe Zahlen ins Spiel. Komplexe Zahlen sind Zahlen der Form a plus b i, wobei a und b reelle Zahlen sind und i die imaginäre Einheit ist, definiert als die Quadratwurzel von -1.")
]
#only("2")[
#voiceover("Beispiele für komplexe Zahlen sind 2 plus 3i und -4 minus 5i.")
]
#only("3")[
#voiceover("Es stellt sich heraus, dass die geraden n-ten Wurzeln negativer Zahlen immer komplexe Zahlen sind!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[- $root(2, -4) = 2i$ da $(2i)^2 = -4$]
#v(20pt)
#only("2-")[- $root(4, -16) = 1 + i$ da $(1 + i)^4 = -16$]
#only("1")[
#voiceover("Zum Beispiel ist die Quadratwurzel von -4 gleich 2i, weil 2i zum Quadrat -4 ergibt.")
]
#only("2")[
#voiceover("Ähnlich ist die 4. Wurzel von -16 gleich 1 plus i, weil 1 plus i hoch 4 gleich -16 ergibt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- n-te Wurzeln: $root(n, a)$ wobei $a^(1/n) = root(n, a)$]
#v(20pt)
#only("2-")[- Gerade n-te Wurzeln von negativen Zahlen sind komplex 🧮]
#v(20pt)
#only("3-")[- Komplexe Zahlen: $a + bi$, wobei $i = sqrt(-1)$]
#only("1")[
#voiceover("Zusammenfassend sind n-te Wurzeln Werte, die, wenn sie mit der Potenz n potenziert werden, die ursprüngliche Zahl ergeben.")
]
#only("2")[
#voiceover("Wenn wir versuchen, gerade n-te Wurzeln negativer Zahlen zu finden, erhalten wir immer komplexe Zahlen.")
]
#only("3")[
#voiceover("Komplexe Zahlen sind Zahlen der Form a plus b i, wobei i die imaginäre Einheit ist, definiert als die Quadratwurzel von -1.")
]
]