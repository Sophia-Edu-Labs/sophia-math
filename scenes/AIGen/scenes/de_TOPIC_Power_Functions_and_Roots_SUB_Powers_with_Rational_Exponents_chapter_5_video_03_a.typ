#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachen von $(27/8)^(2/3)$]
#v(40pt)
#only("1-")[Großartig! 🎉 Du hast den Ausdruck korrekt vereinfacht.]
#v(20pt)
#only("2-")[Lass uns die Schritt-für-Schritt-Lösung durchgehen:]
#only("1")[
#voiceover("Großartig! Du hast den Ausdruck 27 durch 8, erhoben auf die Potenz 2 durch 3, korrekt vereinfacht. Lass uns die Schritt-für-Schritt-Lösung durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Anwenden des Exponenten]
#v(40pt)
#only("1-")[$(27/8)^(2/3) = (27^(2/3))/(8^(2/3))$]
#v(20pt)
#only("2-")[- Anwende den Exponenten sowohl auf den Zähler als auch auf den Nenner 📏]
#only("1")[
#voiceover("Zuerst wenden wir den Exponenten 2 durch 3 sowohl auf den Zähler als auch auf den Nenner an. Dies ergibt 27 erhoben auf die Potenz 2 durch 3, geteilt durch 8 erhoben auf die Potenz 2 durch 3.")
]
#only("2")[
#voiceover("Denke daran, bei rationalen Exponenten und Bruchbasen wenden wir den Exponenten sowohl auf den Zähler als auch auf den Nenner an.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Den Zähler vereinfachen]
#v(40pt)
#only("1-")[$(27^(2/3))/(8^(2/3)) = (root(3,27^2))/(8^(2/3))$]
#v(20pt)
#only("2-")[- $a^(m/n) = root(n,a^m)$ 🌱]
#only("1")[
#voiceover("Als nächstes vereinfachen wir den Zähler. 27 erhoben auf die Potenz 2 durch 3 kann als die dritte Wurzel von 27 zum Quadrat umgeschrieben werden.")
]
#only("2")[
#voiceover("Dies liegt daran, dass a erhoben auf die Potenz m durch n gleich der n-ten Wurzel von a erhoben auf die Potenz m ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Den Nenner vereinfachen]
#v(40pt)
#only("1-")[$(root(3,27^2))/(8^(2/3)) = (root(3,729))/(root(3,8^2))$]
#v(20pt)
#only("2-")[- $27^2 = 729$ und $8^2 = 64$ 🧮]
#only("1")[
#voiceover("Ähnlich vereinfachen wir den Nenner. 8 erhoben auf die Potenz 2 durch 3 kann als die dritte Wurzel von 8 zum Quadrat umgeschrieben werden.")
]
#only("2")[
#voiceover("Wir berechnen 27 zum Quadrat, was 729 ergibt, und 8 zum Quadrat, was 64 ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Die Wurzeln vereinfachen]
#v(40pt)
#only("1-")[$(root(3,729))/(root(3,64)) = 9/4$]
#v(20pt)
#only("2-")[- $root(3,729) = 9$ und $root(3,64) = 4$ 🌿]
#only("1")[
#voiceover("Nun vereinfachen wir die dritten Wurzeln. Die dritte Wurzel von 729 ist 9, und die dritte Wurzel von 64 ist 4.")
]
#only("2")[
#voiceover("Unser Ausdruck vereinfacht sich also zu 9 durch 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Endergebnis]
#v(40pt)
#only("1-")[$(27/8)^(2/3) = 9/4$ ✅]
#v(20pt)
#only("2-")[Gut gemacht! Du hast das Vereinfachen von Ausdrücken mit rationalen Exponenten gemeistert. 🙌]
#only("1")[
#voiceover("Daher ergibt 27 durch 8, erhoben auf die Potenz 2 durch 3, 9 durch 4.")
]
#only("2")[
#voiceover("Gut gemacht! Du hast das Vereinfachen von Ausdrücken mit rationalen Exponenten gemeistert. Mach weiter so!")
]
]