#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung von rationalen Exponenten]
#v(40pt)
#only("1-")[#align(center)[$((16^(1/4))^2)^2 = ?$]]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns Schritt für Schritt sehen, wie wir diesen Ausdruck richtig vereinfachen können.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Inneren Exponenten vereinfachen]
#v(40pt)
#only("1-")[- $16^(1/4) = 2$]
#v(20pt)
#only("2-")[- $(16^(1/4))^2 = (2)^2$]
#only("1")[
#voiceover("Zuerst vereinfachen wir den innersten Exponenten. 16 hoch 1/4 ergibt 2, weil die vierte Wurzel von 16 gleich 2 ist.")
]
#only("2")[
#voiceover("Wir können den Ausdruck also als 2 zum Quadrat, zum Quadrat umschreiben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Äußeren Exponenten vereinfachen]
#v(40pt)
#only("1-")[- $(2)^2 = 4$]
#v(20pt)
#only("2-")[- $((2)^2)^2 = (4)^2$]
#only("1")[
#voiceover("Als Nächstes vereinfachen wir 2 zum Quadrat. 2 zum Quadrat ergibt 4.")
]
#only("2")[
#voiceover("Jetzt haben wir also 4 zum Quadrat.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Endgültigen Ausdruck vereinfachen]
#v(40pt)
#only("1-")[- $(4)^2 = 16$]
#only("1")[
#voiceover("Schließlich ergibt 4 zum Quadrat 16.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[- $((16^(1/4))^2)^2 = 16$ 🎉]
#only("1")[
#voiceover("Daher ist der vereinfachte Ausdruck 16. Gut gemacht!")
]
]