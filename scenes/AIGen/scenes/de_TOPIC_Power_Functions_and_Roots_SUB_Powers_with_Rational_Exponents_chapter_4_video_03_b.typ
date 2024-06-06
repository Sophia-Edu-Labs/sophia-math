#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Leider falsch..]
#v(40pt)
#only("1-")[Das ist die leider falsch... Lass uns Schritt für Schritt sehen, wie wir $(-16)^(1/4)$ vereinfachen können.]
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Lass uns Schritt für Schritt sehen, wie wir den Ausdruck minus 16 hoch ein Viertel vereinfachen können.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Als Wurzel umschreiben]
#v(40pt)
#only("1-")[- $(-16)^(1/4) = root(4,-16)$]
#only("1")[
#voiceover("Zuerst können wir den Ausdruck mit der Wurzelnotation umschreiben. Minus 16 hoch ein Viertel ist gleich der vierten Wurzel von minus 16.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Innerhalb der Wurzel vereinfachen]
#v(40pt)
#only("1-")[- $root(4,-16) = root(4,-1 dot 16)$]
#v(20pt)
#only("2-")[- $root(4,-1 dot 16) = root(4,-1) dot root(4,16)$]
#only("1")[
#voiceover("Als nächstes können wir innerhalb der Wurzel vereinfachen. Minus 16 kann als minus 1 mal 16 geschrieben werden.")
]
#only("2")[
#voiceover("Mit der Eigenschaft der Wurzeln können wir dies in die vierte Wurzel von minus 1 mal die vierte Wurzel von 16 aufteilen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Die Wurzeln vereinfachen]
#v(40pt)
#only("1-")[- $root(4,-1) dot root(4,16) = i dot 2$]
#only("1")[
#voiceover("Nun lass uns jede Wurzel vereinfachen. Die vierte Wurzel von minus 1 ist gleich i, die imaginäre Einheit. Die vierte Wurzel von 16 ist gleich 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[- $(-16)^(1/4) = 2i$]
#only("1")[
#voiceover("Daher ist die endgültig vereinfachte Form von minus 16 hoch ein Viertel 2i.")
]
]