#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplikation von rationalen Exponenten]
#v(40pt)
#only("1-")[$ a^(m/n) a^(p/q) = a^((m q+n p)/(n q)) $]
#v(20pt)
#only("2-")[Beispiel: $ 2^(1/2) 2^(1/3) = 2^((1 dot 3 + 2 dot 1)/(2 dot 3)) = 2^(5/6) $]
#only("1")[
#voiceover("Um Ausdrücke mit rationalen Exponenten, die die gleiche Basis haben, zu multiplizieren, verwenden wir die folgende Regel: a hoch m durch n mal a hoch p durch q ist gleich a hoch mq plus np durch nq.")
]
#only("2")[
#voiceover("Zum Beispiel, 2 hoch ein Halb mal 2 hoch ein Drittel ist gleich 2 hoch 1 mal 3 plus 2 mal 1, alles durch 2 mal 3, was vereinfacht 2 hoch fünf Sechstel ergibt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Division von rationalen Exponenten]
#v(40pt)
#only("1-")[$ a^(m/n) / a^(p/q) = a^((m q-n p)/(n q)) $]
#v(20pt)
#only("2-")[Beispiel: $ 3^(2/3) / 3^(1/4) = 3^((2 dot 4 - 3 dot 1)/(3 dot 4)) = 3^(5/12) $]
#only("1")[
#voiceover("Um Ausdrücke mit rationalen Exponenten, die die gleiche Basis haben, zu dividieren, verwenden wir eine ähnliche Regel: a hoch m durch n geteilt durch a hoch p durch q ist gleich a hoch mq minus np durch nq.")
]
#only("2")[
#voiceover("Zum Beispiel, 3 hoch zwei Drittel geteilt durch 3 hoch ein Viertel ist gleich 3 hoch 2 mal 4 minus 3 mal 1, alles durch 3 mal 4, was vereinfacht 3 hoch fünf Zwölftel ergibt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Intuition]
#v(40pt)
#only("1-")[🧩 Auf einen gemeinsamen Nenner bringen]
#v(20pt)
#only("2-")[➕ Zähler addieren beim Multiplizieren]
#v(20pt)
#only("3-")[➖ Zähler subtrahieren beim Dividieren]
#only("1")[
#voiceover("Die Intuition hinter diesen Regeln ist, dass wir die rationalen Exponenten im Wesentlichen auf einen gemeinsamen Nenner bringen.")
]
#only("2")[
#voiceover("Beim Multiplizieren addieren wir die Zähler der umgewandelten Exponenten.")
]
#only("3")[
#voiceover("Und beim Dividieren subtrahieren wir die Zähler der umgewandelten Exponenten.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[Multiplikation: $ a^(m/n) a^(p/q) = a^((m q+n p)/(n q)) $]
#v(20pt)
#only("2-")[Division: $ a^(m/n) / a^(p/q) = a^((m q-n p)/(n q)) $]
#v(20pt)
#only("3-")[🔑 Auf gemeinsamen Nenner bringen, dann ➕ oder ➖ Zähler]
#only("1")[
#voiceover("Zusammenfassend, um Ausdrücke mit rationalen Exponenten, die die gleiche Basis haben, zu multiplizieren, verwenden wir die Regel: a hoch m durch n mal a hoch p durch q ist gleich a hoch mq plus np durch nq.")
]
#only("2")[
#voiceover("Und um solche Ausdrücke zu dividieren, verwenden wir die Regel: a hoch m durch n geteilt durch a hoch p durch q ist gleich a hoch mq minus np durch nq.")
]
#only("3")[
#voiceover("Der Schlüssel ist, die rationalen Exponenten auf einen gemeinsamen Nenner zu bringen, dann die Zähler beim Multiplizieren zu addieren und beim Dividieren zu subtrahieren.")
]
]