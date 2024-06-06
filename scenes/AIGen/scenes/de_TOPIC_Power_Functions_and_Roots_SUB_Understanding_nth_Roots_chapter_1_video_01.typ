#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzelnotation]
#v(40pt)
#only("1-")[- Bezeichnet als $root(n, a)$]
#v(20pt)
#only("2-")[- $n$ ist der Index 🔢]
#v(20pt)
#only("3-")[- $a$ ist der Radikand 📏]
#only("1")[
#voiceover("Die Notation für n-te Wurzeln wird als 'root' gefolgt vom Index n und dem Radikand a in Klammern geschrieben.")
]
#only("2")[
#voiceover("Der Buchstabe n steht für den Index der Wurzel, der angibt, auf welche Potenz das Ergebnis erhoben werden muss, um den Radikand zu erhalten.")
]
#only("3")[
#voiceover("Der Buchstabe a steht für den Radikand, also die Zahl oder den Ausdruck unter dem Wurzelsymbol.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiele]
#v(40pt)
#only("1-")[- Quadratwurzel: $root(2, 9) = 3$ ⏹]
#v(20pt)
#only("2-")[- Kubikwurzel: $root(3, 8) = 2$ 🧊]
#v(20pt)
#only("3-")[- Vierte Wurzel: $root(4, 16) = 2$ 🏰]
#only("1")[
#voiceover("Zum Beispiel, die Quadratwurzel von 9, geschrieben als 'root' 2 Komma 9, ergibt 3, weil 3 zum Quadrat 9 ist.")
]
#only("2")[
#voiceover("Die Kubikwurzel von 8, geschrieben als 'root' 3 Komma 8, ergibt 2, weil 2 hoch 3 gleich 8 ist.")
]
#only("3")[
#voiceover("Und die vierte Wurzel von 16, geschrieben als 'root' 4 Komma 16, ergibt 2, weil 2 hoch 4 gleich 16 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Allgemeine Regel]
#v(40pt)
#only("1-")[$ root(n, a) = b ⟺ b^n = a $]
#v(20pt)
#only("2-")[- $b$ ist die n-te Wurzel von $a$ 🌱]
#v(20pt)
#only("3-")[- $b$ hoch $n$ ergibt $a$ 📈]
#only("1")[
#voiceover("Im Allgemeinen gilt: 'root' n Komma a ist gleich b genau dann, wenn b hoch n gleich a ist.")
]
#only("2")[
#voiceover("Das bedeutet, dass b die n-te Wurzel von a ist...")
]
#only("3")[
#voiceover("...und umgekehrt, wenn b hoch n gleich a ist, dann ist b die n-te Wurzel von a.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- n-te Wurzelnotation: $root(n, a)$ 📝]
#v(20pt)
#only("2-")[- $n$ ist der Index, $a$ ist der Radikand 🔍]
#v(20pt)
#only("3-")[- $root(n, a) = b ⟺ b^n = a$ 🔄]
#only("1")[
#voiceover("Zusammenfassend wird die n-te Wurzelnotation als 'root' gefolgt vom Index n und dem Radikand a in Klammern geschrieben.")
]
#only("2")[
#voiceover("Der Buchstabe n steht für den Index und a steht für den Radikand.")
]
#only("3")[
#voiceover("Die n-te Wurzel von a ist gleich b genau dann, wenn b hoch n gleich a ist.")
]
]